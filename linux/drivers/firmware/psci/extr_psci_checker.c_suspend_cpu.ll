; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_suspend_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_suspend_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)* }
%struct.cpuidle_device.0 = type opaque
%struct.cpuidle_driver.1 = type opaque

@CPUIDLE_FLAG_TIMER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @suspend_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_cpu(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuidle_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %11 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 0
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %12, i64 %14
  store %struct.cpuidle_state* %15, %struct.cpuidle_state** %7, align 8
  %16 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %17 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CPUIDLE_FLAG_TIMER_STOP, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @arch_cpu_idle_enter()
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = call i32 (...) @tick_broadcast_enter()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @cpu_do_idle()
  store i32 0, i32* %9, align 4
  br label %46

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %33 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %32, i32 0, i32 1
  %34 = load i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)*, i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)** %33, align 8
  %35 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %36 = bitcast %struct.cpuidle_device* %35 to %struct.cpuidle_device.0*
  %37 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %38 = bitcast %struct.cpuidle_driver* %37 to %struct.cpuidle_driver.1*
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %34(%struct.cpuidle_device.0* %36, %struct.cpuidle_driver.1* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 (...) @tick_broadcast_exit()
  br label %45

45:                                               ; preds = %43, %31
  br label %46

46:                                               ; preds = %45, %28
  %47 = call i32 (...) @arch_cpu_idle_exit()
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @arch_cpu_idle_enter(...) #1

declare dso_local i32 @tick_broadcast_enter(...) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @tick_broadcast_exit(...) #1

declare dso_local i32 @arch_cpu_idle_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
