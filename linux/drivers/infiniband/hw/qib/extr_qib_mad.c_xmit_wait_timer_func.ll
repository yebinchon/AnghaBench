; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_xmit_wait_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_xmit_wait_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.qib_pportdata = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32, i32)* }

@cong_stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IB_PMA_CONG_HW_CONTROL_SAMPLE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ppd = common dso_local global %struct.qib_pportdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xmit_wait_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmit_wait_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = ptrtoint %struct.qib_pportdata* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cong_stats, i32 0, i32 0), align 4
  %11 = call %struct.qib_pportdata* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.qib_pportdata* %11, %struct.qib_pportdata** %3, align 8
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = call %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %12)
  store %struct.qib_devdata* %13, %struct.qib_devdata** %4, align 8
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_SAMPLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %1
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %28, align 8
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %32 = call i64 %29(%struct.qib_pportdata* %30, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %37)
  %39 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %41 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %44

43:                                               ; preds = %26
  br label %57

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %47 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %46)
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 1
  %53 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %52, align 8
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %56 = call i32 %53(%struct.qib_pportdata* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %45, %43
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %59 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %65 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* @HZ, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @mod_timer(i32* %66, i64 %69)
  ret void
}

declare dso_local %struct.qib_pportdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
