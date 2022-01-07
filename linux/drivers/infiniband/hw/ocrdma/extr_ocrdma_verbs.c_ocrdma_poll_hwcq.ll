; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_hwcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_hwcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_cq = type { i32, i32, i32, %struct.ocrdma_cqe*, %struct.TYPE_3__ }
%struct.ocrdma_cqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_dev = type { %struct.ocrdma_qp** }

@OCRDMA_CQE_QPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_cq*, i32, %struct.ib_wc*)* @ocrdma_poll_hwcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_hwcq(%struct.ocrdma_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_qp*, align 8
  %12 = alloca %struct.ocrdma_dev*, align 8
  %13 = alloca %struct.ocrdma_cqe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ocrdma_cq* %0, %struct.ocrdma_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.ocrdma_qp* null, %struct.ocrdma_qp** %11, align 8
  %17 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %20)
  store %struct.ocrdma_dev* %21, %struct.ocrdma_dev** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %111, %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %25
  %29 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %30 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %29, i32 0, i32 3
  %31 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %31, i64 %33
  store %struct.ocrdma_cqe* %34, %struct.ocrdma_cqe** %13, align 8
  %35 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %36 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %37 = call i32 @is_cqe_valid(%struct.ocrdma_cq* %35, %struct.ocrdma_cqe* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %112

40:                                               ; preds = %28
  %41 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %42 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @le32_to_cpu(i64 %44)
  %46 = load i32, i32* @OCRDMA_CQE_QPN_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %88

51:                                               ; preds = %40
  %52 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  %53 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %52, i32 0, i32 0
  %54 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ocrdma_qp*, %struct.ocrdma_qp** %54, i64 %56
  %58 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %57, align 8
  store %struct.ocrdma_qp* %58, %struct.ocrdma_qp** %11, align 8
  %59 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %60 = icmp eq %struct.ocrdma_qp* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %64 = call i64 @is_cqe_for_sq(%struct.ocrdma_cqe* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %68 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %69 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %70 = call i32 @ocrdma_poll_scqe(%struct.ocrdma_qp* %67, %struct.ocrdma_cqe* %68, %struct.ib_wc* %69, i32* %15, i32* %16)
  store i32 %70, i32* %9, align 4
  br label %76

71:                                               ; preds = %51
  %72 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %11, align 8
  %73 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %74 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %75 = call i32 @ocrdma_poll_rcqe(%struct.ocrdma_qp* %72, %struct.ocrdma_cqe* %73, %struct.ib_wc* %74, i32* %15, i32* %16)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %101

80:                                               ; preds = %76
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %113

84:                                               ; preds = %80
  %85 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %86 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %50
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %94 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %92, %95
  store i32 %96, i32* %14, align 4
  %97 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %98 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @ocrdma_change_cq_phase(%struct.ocrdma_cq* %97, %struct.ocrdma_cqe* %98, i32 %99)
  br label %101

101:                                              ; preds = %88, %79
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %109, i64 1
  store %struct.ib_wc* %110, %struct.ib_wc** %6, align 8
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %104, %101
  br label %25

112:                                              ; preds = %39, %25
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %116 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  %121 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %122 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %120, i32 %123, i32 0, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %119, %113
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @is_cqe_valid(%struct.ocrdma_cq*, %struct.ocrdma_cqe*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_cqe_for_sq(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_poll_scqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @ocrdma_poll_rcqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @ocrdma_change_cq_phase(%struct.ocrdma_cq*, %struct.ocrdma_cqe*, i32) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
