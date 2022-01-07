; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_discard_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_discard_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocrdma_cq = type { i32, i32, i32, %struct.ocrdma_cqe* }
%struct.ocrdma_cqe = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OCRDMA_CQE_QPN_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_BUFTAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_cq*)* @ocrdma_discard_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_discard_cqes(%struct.ocrdma_qp* %0, %struct.ocrdma_cq* %1) #0 {
  %3 = alloca %struct.ocrdma_qp*, align 8
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocrdma_cqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %3, align 8
  store %struct.ocrdma_cq* %1, %struct.ocrdma_cq** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %14 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %130, %2
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %23 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %27 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %32 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %134

35:                                               ; preds = %30, %25, %21
  %36 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %37 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %36, i32 0, i32 3
  %38 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %38, i64 %40
  store %struct.ocrdma_cqe* %41, %struct.ocrdma_cqe** %10, align 8
  %42 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %43 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OCRDMA_CQE_QPN_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %53 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %35
  br label %123

57:                                               ; preds = %50
  %58 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %59 = call i64 @is_cqe_for_sq(%struct.ocrdma_cqe* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %63 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %62, i32 0, i32 3
  %64 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__* %63)
  br label %117

65:                                               ; preds = %57
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %67 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %112

70:                                               ; preds = %65
  %71 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %72 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load i32, i32* @OCRDMA_CQE_BUFTAG_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %79 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %77, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %90 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %96 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__* %98)
  %100 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %101 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @ocrdma_srq_toggle_bit(%struct.TYPE_7__* %102, i32 %104)
  %106 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %107 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %116

112:                                              ; preds = %65
  %113 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %114 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %113, i32 0, i32 1
  %115 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %112, %70
  br label %117

117:                                              ; preds = %116, %61
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %10, align 8
  %121 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %56
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %127 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %125, %128
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %21, label %134

134:                                              ; preds = %130, %34
  %135 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %136 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %135, i32 0, i32 2
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i64 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i64 @is_cqe_for_sq(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocrdma_srq_toggle_bit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
