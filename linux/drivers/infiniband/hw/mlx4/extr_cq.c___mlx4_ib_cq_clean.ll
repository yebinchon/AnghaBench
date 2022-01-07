; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c___mlx4_ib_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c___mlx4_ib_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_cq = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_srq = type { i32 }
%struct.mlx4_cqe = type { i32, i32, i32 }

@MLX4_CQE_QPN_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_IS_SEND_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_ib_cq_clean(%struct.mlx4_ib_cq* %0, i32 %1, %struct.mlx4_ib_srq* %2) #0 {
  %4 = alloca %struct.mlx4_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_srq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_cqe*, align 8
  %10 = alloca %struct.mlx4_cqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_ib_cq* %0, %struct.mlx4_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_ib_srq* %2, %struct.mlx4_ib_srq** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 64
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %12, align 4
  %20 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %3
  %25 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @get_sw_cqe(%struct.mlx4_ib_cq* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = icmp eq i32 %30, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %41, %24
  br label %47

47:                                               ; preds = %134, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %49, %53
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %135

56:                                               ; preds = %47
  %57 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %58, %62
  %64 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq* %57, i32 %63)
  store %struct.mlx4_cqe* %64, %struct.mlx4_cqe** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %66, i64 %67
  store %struct.mlx4_cqe* %68, %struct.mlx4_cqe** %9, align 8
  %69 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %70 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = load i32, i32* @MLX4_CQE_QPN_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %56
  %78 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %6, align 8
  %79 = icmp ne %struct.mlx4_ib_srq* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %6, align 8
  %89 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be16_to_cpu(i32 %91)
  %93 = call i32 @mlx4_ib_free_srq_wqe(%struct.mlx4_ib_srq* %88, i32 %92)
  br label %94

94:                                               ; preds = %87, %80, %77
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %134

97:                                               ; preds = %56
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %104, %108
  %110 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq* %101, i32 %109)
  store %struct.mlx4_cqe* %110, %struct.mlx4_cqe** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %10, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %112, i64 %113
  store %struct.mlx4_cqe* %114, %struct.mlx4_cqe** %10, align 8
  %115 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %10, align 8
  %116 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %10, align 8
  %121 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %122 = call i32 @memcpy(%struct.mlx4_cqe* %120, %struct.mlx4_cqe* %121, i32 12)
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %10, align 8
  %125 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = or i32 %123, %129
  %131 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %10, align 8
  %132 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %100, %97
  br label %134

134:                                              ; preds = %133, %94
  br label %47

135:                                              ; preds = %47
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = call i32 (...) @wmb()
  %146 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %146, i32 0, i32 0
  %148 = call i32 @mlx4_cq_set_ci(%struct.TYPE_6__* %147)
  br label %149

149:                                              ; preds = %138, %135
  ret void
}

declare dso_local i64 @get_sw_cqe(%struct.mlx4_ib_cq*, i32) #1

declare dso_local %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx4_ib_free_srq_wqe(%struct.mlx4_ib_srq*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_cqe*, %struct.mlx4_cqe*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx4_cq_set_ci(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
