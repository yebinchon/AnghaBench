; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_cq = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_srq = type { i32 }
%struct.mthca_cqe = type { i64, i32 }

@MTHCA_CQ_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cq_clean(%struct.mthca_dev* %0, %struct.mthca_cq* %1, i32 %2, %struct.mthca_srq* %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_srq*, align 8
  %9 = alloca %struct.mthca_cqe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_cq* %1, %struct.mthca_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mthca_srq* %3, %struct.mthca_srq** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %14 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %17 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %43, %4
  %20 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %23 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %21, %25
  %27 = call %struct.mthca_cqe* @get_cqe(%struct.mthca_cq* %20, i32 %26)
  %28 = call i64 @cqe_sw(%struct.mthca_cqe* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %33 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %36 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = icmp eq i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %19

46:                                               ; preds = %41, %19
  br label %47

47:                                               ; preds = %105, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  %50 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %51 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %106

55:                                               ; preds = %47
  %56 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %59 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %57, %61
  %63 = call %struct.mthca_cqe* @get_cqe(%struct.mthca_cq* %56, i32 %62)
  store %struct.mthca_cqe* %63, %struct.mthca_cqe** %9, align 8
  %64 = load %struct.mthca_cqe*, %struct.mthca_cqe** %9, align 8
  %65 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @cpu_to_be32(i32 %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %55
  %71 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %72 = icmp ne %struct.mthca_srq* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.mthca_cqe*, %struct.mthca_cqe** %9, align 8
  %75 = call i64 @is_recv_cqe(%struct.mthca_cqe* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %79 = load %struct.mthca_cqe*, %struct.mthca_cqe** %9, align 8
  %80 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = call i32 @mthca_free_srq_wqe(%struct.mthca_srq* %78, i32 %82)
  br label %84

84:                                               ; preds = %77, %73, %70
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %105

87:                                               ; preds = %55
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %96 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %94, %98
  %100 = call %struct.mthca_cqe* @get_cqe(%struct.mthca_cq* %91, i32 %99)
  %101 = load %struct.mthca_cqe*, %struct.mthca_cqe** %9, align 8
  %102 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %103 = call i32 @memcpy(%struct.mthca_cqe* %100, %struct.mthca_cqe* %101, i32 %102)
  br label %104

104:                                              ; preds = %90, %87
  br label %105

105:                                              ; preds = %104, %84
  br label %47

106:                                              ; preds = %47
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %128, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %116 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %117 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %122 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %120, %124
  %126 = call %struct.mthca_cqe* @get_cqe(%struct.mthca_cq* %115, i32 %125)
  %127 = call i32 @set_cqe_hw(%struct.mthca_cqe* %126)
  br label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %110

131:                                              ; preds = %110
  %132 = call i32 (...) @wmb()
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %135 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %139 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @update_cons_index(%struct.mthca_dev* %138, %struct.mthca_cq* %139, i32 %140)
  br label %142

142:                                              ; preds = %131, %106
  %143 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %144 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock_irq(i32* %144)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @cqe_sw(%struct.mthca_cqe*) #1

declare dso_local %struct.mthca_cqe* @get_cqe(%struct.mthca_cq*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @is_recv_cqe(%struct.mthca_cqe*) #1

declare dso_local i32 @mthca_free_srq_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.mthca_cqe*, %struct.mthca_cqe*, i32) #1

declare dso_local i32 @set_cqe_hw(%struct.mthca_cqe*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @update_cons_index(%struct.mthca_dev*, %struct.mthca_cq*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
