; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_service_creq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_service_creq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.bnxt_qplib_hwq, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_qplib_hwq = type { i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.creq_base = type { i64 }
%struct.creq_qp_event = type { i32 }
%struct.creq_func_event = type { i32 }

@CREQ_ENTRY_POLL_BUDGET = common dso_local global i64 0, align 8
@CREQ_BASE_TYPE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"aeqe:%#x Not handled\0A\00", align 1
@ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"creqe with event 0x%x not handled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bnxt_qplib_service_creq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_service_creq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_hwq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.creq_base*, align 8
  %9 = alloca %struct.creq_base**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.bnxt_qplib_rcfw*
  store %struct.bnxt_qplib_rcfw* %14, %struct.bnxt_qplib_rcfw** %3, align 8
  %15 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bnxt_qplib_is_chip_gen_p5(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %21, i32 0, i32 5
  store %struct.bnxt_qplib_hwq* %22, %struct.bnxt_qplib_hwq** %5, align 8
  %23 = load i64, i64* @CREQ_ENTRY_POLL_BUDGET, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %24, i32 0, i32 1
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %106, %1
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %37 = call i64 @HWQ_CMP(i64 %35, %struct.bnxt_qplib_hwq* %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.creq_base**
  store %struct.creq_base** %41, %struct.creq_base*** %9, align 8
  %42 = load %struct.creq_base**, %struct.creq_base*** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @get_creq_pg(i64 %43)
  %45 = getelementptr inbounds %struct.creq_base*, %struct.creq_base** %42, i64 %44
  %46 = load %struct.creq_base*, %struct.creq_base** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @get_creq_idx(i64 %47)
  %49 = getelementptr inbounds %struct.creq_base, %struct.creq_base* %46, i64 %48
  store %struct.creq_base* %49, %struct.creq_base** %8, align 8
  %50 = load %struct.creq_base*, %struct.creq_base** %8, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CREQ_CMP_VALID(%struct.creq_base* %50, i64 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %34
  br label %111

58:                                               ; preds = %34
  %59 = call i32 (...) @dma_rmb()
  %60 = load %struct.creq_base*, %struct.creq_base** %8, align 8
  %61 = getelementptr inbounds %struct.creq_base, %struct.creq_base* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CREQ_BASE_TYPE_MASK, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  switch i64 %65, label %94 [
    i64 128, label %66
    i64 129, label %75
  ]

66:                                               ; preds = %58
  %67 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %68 = load %struct.creq_base*, %struct.creq_base** %8, align 8
  %69 = bitcast %struct.creq_base* %68 to %struct.creq_qp_event*
  %70 = call i32 @bnxt_qplib_process_qp_event(%struct.bnxt_qplib_rcfw* %67, %struct.creq_qp_event* %69)
  %71 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %72 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %106

75:                                               ; preds = %58
  %76 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %77 = load %struct.creq_base*, %struct.creq_base** %8, align 8
  %78 = bitcast %struct.creq_base* %77 to %struct.creq_func_event*
  %79 = call i32 @bnxt_qplib_process_func_event(%struct.bnxt_qplib_rcfw* %76, %struct.creq_func_event* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %83 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %93

86:                                               ; preds = %75
  %87 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %88 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %86, %81
  br label %106

94:                                               ; preds = %58
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @dev_warn(i32* %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %98, %94
  br label %106

106:                                              ; preds = %105, %93, %66
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %7, align 8
  br label %31

111:                                              ; preds = %57, %31
  %112 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %113 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %120 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %122 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %126 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %129 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @bnxt_qplib_ring_creq_db_rearm(i32 %123, i64 %124, i32 %127, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %117, %111
  %134 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %135 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %134, i32 0, i32 1
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  ret void
}

declare dso_local i32 @bnxt_qplib_is_chip_gen_p5(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @HWQ_CMP(i64, %struct.bnxt_qplib_hwq*) #1

declare dso_local i64 @get_creq_pg(i64) #1

declare dso_local i64 @get_creq_idx(i64) #1

declare dso_local i32 @CREQ_CMP_VALID(%struct.creq_base*, i64, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @bnxt_qplib_process_qp_event(%struct.bnxt_qplib_rcfw*, %struct.creq_qp_event*) #1

declare dso_local i32 @bnxt_qplib_process_func_event(%struct.bnxt_qplib_rcfw*, %struct.creq_func_event*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @bnxt_qplib_ring_creq_db_rearm(i32, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
