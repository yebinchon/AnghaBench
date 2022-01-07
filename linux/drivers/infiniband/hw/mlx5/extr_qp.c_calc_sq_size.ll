; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_calc_sq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_calc_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_ib_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"wqe_size %d\0A\00", align 1
@max_wqe_sz_sq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wqe_size(%d) > max_sq_desc_sz(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@log_max_qp_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"send queue size (%d * %d / %d -> %d) exceeds limits(%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_qp_init_attr*, %struct.mlx5_ib_qp*)* @calc_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_sq_size(%struct.mlx5_ib_dev* %0, %struct.ib_qp_init_attr* %1, %struct.mlx5_ib_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.mlx5_ib_qp* %2, %struct.mlx5_ib_qp** %7, align 8
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

16:                                               ; preds = %3
  %17 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %18 = call i32 @calc_send_wqe(%struct.ib_qp_init_attr* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %152

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @max_wqe_sz_sq, align 4
  %32 = call i32 @MLX5_CAP_GEN(i32 %30, i32 %31)
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @max_wqe_sz_sq, align 4
  %41 = call i32 @MLX5_CAP_GEN(i32 %39, i32 %40)
  %42 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %152

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %48 = call i32 @sq_overhead(%struct.ib_qp_init_attr* %47)
  %49 = sub nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @roundup_pow_of_two(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %70 = sdiv i32 %68, %69
  %71 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @log_max_qp_sz, align 4
  %82 = call i32 @MLX5_CAP_GEN(i32 %80, i32 %81)
  %83 = shl i32 1, %82
  %84 = icmp sgt i32 %77, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %45
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %87 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %93 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @log_max_qp_sz, align 4
  %101 = call i32 @MLX5_CAP_GEN(i32 %99, i32 %100)
  %102 = shl i32 1, %101
  %103 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %96, i32 %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %152

106:                                              ; preds = %45
  %107 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %108 = call i32 @ilog2(i32 %107)
  %109 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @get_send_sge(%struct.ib_qp_init_attr* %112, i32 %113)
  %115 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %123 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %106
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %152

130:                                              ; preds = %106
  %131 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %132 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = sdiv i32 %138, %139
  %141 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %142 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %130, %127, %85, %34, %24, %15
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @calc_send_wqe(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @sq_overhead(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @get_send_sge(%struct.ib_qp_init_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
