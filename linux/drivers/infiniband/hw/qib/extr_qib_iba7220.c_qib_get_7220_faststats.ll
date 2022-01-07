; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_get_7220_faststats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_get_7220_faststats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i64, i64, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32 }
%struct.timer_list = type { i32 }

@stats_timer = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@cr_wordsend = common dso_local global i32 0, align 4
@cr_wordrcv = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ACTIVITY_TIMER = common dso_local global i32 0, align 4
@dd = common dso_local global %struct.qib_devdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @qib_get_7220_faststats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_get_7220_faststats(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %8 = ptrtoint %struct.qib_devdata* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @stats_timer, align 4
  %11 = call %struct.qib_devdata* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.qib_devdata* %11, %struct.qib_devdata** %3, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 5
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  store %struct.qib_pportdata* %14, %struct.qib_pportdata** %4, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_INITTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  br label %53

27:                                               ; preds = %21
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %29 = load i32, i32* @cr_wordsend, align 4
  %30 = call i64 @qib_portcntr_7220(%struct.qib_pportdata* %28, i32 %29)
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %32 = load i32, i32* @cr_wordrcv, align 4
  %33 = call i64 @qib_portcntr_7220(%struct.qib_pportdata* %31, i32 %32)
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 2
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %27, %26
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 1
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i32, i32* @HZ, align 4
  %58 = load i32, i32* @ACTIVITY_TIMER, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = call i32 @mod_timer(i32* %55, i64 %61)
  ret void
}

declare dso_local %struct.qib_devdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @qib_portcntr_7220(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
