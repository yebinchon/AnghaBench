; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@wf_smu_events = common dso_local global i32 0, align 4
@sensor_cpu_power = common dso_local global i64 0, align 8
@sensor_cpu_temp = common dso_local global i64 0, align 8
@sensor_hd_temp = common dso_local global i64 0, align 8
@fan_cpu_main = common dso_local global i64 0, align 8
@fan_hd = common dso_local global i64 0, align 8
@fan_system = common dso_local global i64 0, align 8
@cpufreq_clamp = common dso_local global i64 0, align 8
@wf_smu_sys_fans = common dso_local global i32 0, align 4
@wf_smu_cpu_fans = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wf_smu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_smu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 @wf_unregister_client(i32* @wf_smu_events)
  %4 = call i32 @msleep(i32 1000)
  %5 = load i64, i64* @sensor_cpu_power, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @sensor_cpu_power, align 8
  %9 = call i32 @wf_put_sensor(i64 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @sensor_cpu_temp, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @sensor_cpu_temp, align 8
  %15 = call i32 @wf_put_sensor(i64 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @sensor_hd_temp, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @sensor_hd_temp, align 8
  %21 = call i32 @wf_put_sensor(i64 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* @fan_cpu_main, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @fan_cpu_main, align 8
  %27 = call i32 @wf_put_control(i64 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* @fan_hd, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* @fan_hd, align 8
  %33 = call i32 @wf_put_control(i64 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @fan_system, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* @fan_system, align 8
  %39 = call i32 @wf_put_control(i64 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* @cpufreq_clamp, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @cpufreq_clamp, align 8
  %45 = call i32 @wf_put_control(i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @wf_smu_sys_fans, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load i32, i32* @wf_smu_cpu_fans, align 4
  %50 = call i32 @kfree(i32 %49)
  ret i32 0
}

declare dso_local i32 @wf_unregister_client(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wf_put_sensor(i64) #1

declare dso_local i32 @wf_put_control(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
