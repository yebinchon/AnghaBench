; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_verify_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_verify_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i32, %struct.TYPE_2__*, i32 (%struct.qib_devdata*)* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@intrchk_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No interrupts detected, not usable.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dd = common dso_local global %struct.qib_devdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @verify_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_interrupt(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %6 = ptrtoint %struct.qib_devdata* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @intrchk_timer, align 4
  %9 = call %struct.qib_devdata* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.qib_devdata* %9, %struct.qib_devdata** %3, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = icmp ne %struct.qib_devdata* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = call i64 @qib_int_counter(%struct.qib_devdata* %14)
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 3
  %25 = load i32 (%struct.qib_devdata*)*, i32 (%struct.qib_devdata*)** %24, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %27 = call i32 %25(%struct.qib_devdata* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 1
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @mod_timer(i32* %37, i64 %42)
  br label %44

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %12, %44, %13
  ret void
}

declare dso_local %struct.qib_devdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @qib_int_counter(%struct.qib_devdata*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
