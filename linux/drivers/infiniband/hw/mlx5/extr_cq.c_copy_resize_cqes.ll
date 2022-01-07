; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_copy_resize_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_copy_resize_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"resize from different cqe size is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"expected cqe in sw ownership\0A\00", align 1
@MLX5_CQE_RESIZE_CQ = common dso_local global i64 0, align 8
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"resize CQ failed to get resize CQE, CQN 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_cq*)* @copy_resize_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_resize_cqes(%struct.mlx5_ib_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_cq*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %3, align 8
  %14 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %4, align 8
  %19 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %155

36:                                               ; preds = %1
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @get_sw_cqe(%struct.mlx5_ib_cq* %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i8*, i8** %8, align 8
  br label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr i8, i8* %49, i64 64
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i8* [ %47, %46 ], [ %50, %48 ]
  %53 = bitcast i8* %52 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %53, %struct.mlx5_cqe64** %5, align 8
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %59 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %155

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %148, %62
  %64 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %65 = call i64 @get_cqe_opcode(%struct.mlx5_cqe64* %64)
  %66 = load i64, i64* @MLX5_CQE_RESIZE_CQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %149

68:                                               ; preds = %63
  %69 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %74, %79
  %81 = call i8* @mlx5_frag_buf_get_wqe(i32* %72, i32 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i8*, i8** %9, align 8
  br label %89

86:                                               ; preds = %68
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr i8, i8* %87, i64 64
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i8* [ %85, %84 ], [ %88, %86 ]
  %91 = bitcast i8* %90 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %91, %struct.mlx5_cqe64** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %95 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sw_ownership_bit(i32 %93, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @memcpy(i8* %100, i8* %101, i32 %102)
  %104 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %105 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %113 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i8* @get_sw_cqe(%struct.mlx5_ib_cq* %116, i32 %117)
  store i8* %118, i8** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 64
  br i1 %120, label %121, label %123

121:                                              ; preds = %89
  %122 = load i8*, i8** %8, align 8
  br label %126

123:                                              ; preds = %89
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr i8, i8* %124, i64 64
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i8* [ %122, %121 ], [ %125, %123 ]
  %128 = bitcast i8* %127 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %128, %struct.mlx5_cqe64** %5, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %133 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %155

136:                                              ; preds = %126
  %137 = load i8*, i8** %8, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %142 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %155

148:                                              ; preds = %136
  br label %63

149:                                              ; preds = %63
  %150 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %140, %131, %57, %31
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i8* @get_sw_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i64 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i8* @mlx5_frag_buf_get_wqe(i32*, i32) #1

declare dso_local i32 @sw_ownership_bit(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
