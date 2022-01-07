; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_user_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_user_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_ib_create_qp = type { i32 }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ib_qp_init_attr = type { i64 }

@max_wqe_sz_sq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"desc_sz %d, max_sq_desc_sz %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"sq_wqe_count %d is not a power of two\0A\00", align 1
@log_max_qp_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"wqe_cnt %d, max_wqes %d\0A\00", align 1
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@MLX5_IB_QP_UNDERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_qp_base*, %struct.ib_qp_init_attr*)* @set_user_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_buf_size(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_create_qp* %2, %struct.mlx5_ib_qp_base* %3, %struct.ib_qp_init_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.mlx5_ib_create_qp*, align 8
  %10 = alloca %struct.mlx5_ib_qp_base*, align 8
  %11 = alloca %struct.ib_qp_init_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %8, align 8
  store %struct.mlx5_ib_create_qp* %2, %struct.mlx5_ib_create_qp** %9, align 8
  store %struct.mlx5_ib_qp_base* %3, %struct.mlx5_ib_qp_base** %10, align 8
  store %struct.ib_qp_init_attr* %4, %struct.ib_qp_init_attr** %11, align 8
  %13 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @max_wqe_sz_sq, align 4
  %23 = call i32 @MLX5_CAP_GEN(i32 %21, i32 %22)
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @max_wqe_sz_sq, align 4
  %32 = call i32 @MLX5_CAP_GEN(i32 %30, i32 %31)
  %33 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %144

36:                                               ; preds = %5
  %37 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is_power_of_2(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %49 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %144

55:                                               ; preds = %41, %36
  %56 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @log_max_qp_sz, align 4
  %70 = call i32 @MLX5_CAP_GEN(i32 %68, i32 %69)
  %71 = shl i32 1, %70
  %72 = icmp sgt i32 %65, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %55
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %75 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @log_max_qp_sz, align 4
  %83 = call i32 @MLX5_CAP_GEN(i32 %81, i32 %82)
  %84 = shl i32 1, %83
  %85 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %144

88:                                               ; preds = %55
  %89 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %11, align 8
  %90 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %88
  %95 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %96 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %94, %88
  %102 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %105, %109
  %111 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %10, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 6
  %119 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  br label %143

124:                                              ; preds = %94
  %125 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %128, %132
  %134 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 6
  %139 = add nsw i32 %133, %138
  %140 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %10, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %124, %101
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %73, %47, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
