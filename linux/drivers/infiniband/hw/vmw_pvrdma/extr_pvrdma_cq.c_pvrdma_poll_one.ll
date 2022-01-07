; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_poll_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_cq = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pvrdma_qp = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pvrdma_dev = type { i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pvrdma_cqe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PVRDMA_UAR_CQ_POLL = common dso_local global i32 0, align 4
@PVRDMA_INVALID_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CQ ring state invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvrdma_cq*, %struct.pvrdma_qp**, %struct.ib_wc*)* @pvrdma_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvrdma_poll_one(%struct.pvrdma_cq* %0, %struct.pvrdma_qp** %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvrdma_cq*, align 8
  %6 = alloca %struct.pvrdma_qp**, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.pvrdma_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pvrdma_cqe*, align 8
  store %struct.pvrdma_cq* %0, %struct.pvrdma_cq** %5, align 8
  store %struct.pvrdma_qp** %1, %struct.pvrdma_qp*** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %13 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %14 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pvrdma_dev* @to_vdev(i32 %16)
  store %struct.pvrdma_dev* %17, %struct.pvrdma_dev** %8, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %36, %3
  %19 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %20 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %24 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pvrdma_idx_ring_has_data(%struct.TYPE_10__* %22, i32 %26, i32* %10)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %179

36:                                               ; preds = %30
  %37 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %38 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %39 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PVRDMA_UAR_CQ_POLL, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @pvrdma_write_uar_cq(%struct.pvrdma_dev* %37, i32 %42)
  store i32 1, i32* %11, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @PVRDMA_INVALID_IDX, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %50 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %179

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.pvrdma_cqe* @get_cqe(%struct.pvrdma_cq* %58, i32 %59)
  store %struct.pvrdma_cqe* %60, %struct.pvrdma_cqe** %12, align 8
  %61 = call i32 (...) @rmb()
  %62 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %63 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %66 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 65535
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %57
  %74 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %75 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %78 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.pvrdma_qp*
  %85 = load %struct.pvrdma_qp**, %struct.pvrdma_qp*** %6, align 8
  store %struct.pvrdma_qp* %84, %struct.pvrdma_qp** %85, align 8
  br label %89

86:                                               ; preds = %57
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %179

89:                                               ; preds = %73
  %90 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %91 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pvrdma_wc_opcode_to_ib(i32 %92)
  %94 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %95 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %94, i32 0, i32 14
  store i32 %93, i32* %95, align 8
  %96 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %97 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pvrdma_wc_status_to_ib(i32 %98)
  %100 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %101 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %103 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %106 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pvrdma_qp**, %struct.pvrdma_qp*** %6, align 8
  %108 = load %struct.pvrdma_qp*, %struct.pvrdma_qp** %107, align 8
  %109 = getelementptr inbounds %struct.pvrdma_qp, %struct.pvrdma_qp* %108, i32 0, i32 0
  %110 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %111 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %110, i32 0, i32 11
  store i32* %109, i32** %111, align 8
  %112 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %113 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %116 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %118 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %121 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %124 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %127 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %129 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pvrdma_wc_flags_to_ib(i32 %130)
  %132 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %133 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %135 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %138 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %140 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %143 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %145 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %148 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %150 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %153 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %155 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %158 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %160 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %163 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %12, align 8
  %165 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %168 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %170 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %169, i32 0, i32 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %175 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @pvrdma_idx_ring_inc(i32* %173, i32 %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %89, %86, %48, %33
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @pvrdma_idx_ring_has_data(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @pvrdma_write_uar_cq(%struct.pvrdma_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pvrdma_cqe* @get_cqe(%struct.pvrdma_cq*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pvrdma_wc_opcode_to_ib(i32) #1

declare dso_local i32 @pvrdma_wc_status_to_ib(i32) #1

declare dso_local i32 @pvrdma_wc_flags_to_ib(i32) #1

declare dso_local i32 @pvrdma_idx_ring_inc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
