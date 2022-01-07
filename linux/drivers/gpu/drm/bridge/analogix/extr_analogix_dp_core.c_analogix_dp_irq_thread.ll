; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, i32 }

@DP_IRQ_TYPE_HP_CABLE_IN = common dso_local global i32 0, align 4
@DP_IRQ_TYPE_HP_CABLE_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Detected cable status changed!\0A\00", align 1
@DP_IRQ_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @analogix_dp_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.analogix_dp_device*
  store %struct.analogix_dp_device* %8, %struct.analogix_dp_device** %5, align 8
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %10 = call i32 @analogix_dp_get_irq_type(%struct.analogix_dp_device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_IN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_OUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15, %2
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %22 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %31 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @drm_helper_hpd_irq_event(i64 %32)
  br label %34

34:                                               ; preds = %29, %20
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DP_IRQ_TYPE_UNKNOWN, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %41 = call i32 @analogix_dp_clear_hotplug_interrupts(%struct.analogix_dp_device* %40)
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %43 = call i32 @analogix_dp_unmute_hpd_interrupt(%struct.analogix_dp_device* %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @analogix_dp_get_irq_type(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i64) #1

declare dso_local i32 @analogix_dp_clear_hotplug_interrupts(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_unmute_hpd_interrupt(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
