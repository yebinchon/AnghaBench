; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_get_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_get_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, i64 }

@DP_IRQ_TYPE_HP_CABLE_IN = common dso_local global i32 0, align 4
@DP_IRQ_TYPE_HP_CABLE_OUT = common dso_local global i32 0, align 4
@ANALOGIX_DP_COMMON_INT_STA_4 = common dso_local global i64 0, align 8
@PLUG = common dso_local global i32 0, align 4
@HPD_LOST = common dso_local global i32 0, align 4
@HOTPLUG_CHG = common dso_local global i32 0, align 4
@DP_IRQ_TYPE_HP_CHANGE = common dso_local global i32 0, align 4
@DP_IRQ_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_get_irq_type(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %6 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gpiod_get_value(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_IN, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %9
  %19 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_OUT, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %22 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_4, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PLUG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_IN, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HPD_LOST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DP_IRQ_TYPE_HP_CABLE_OUT, align 4
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @HOTPLUG_CHG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @DP_IRQ_TYPE_HP_CHANGE, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @DP_IRQ_TYPE_UNKNOWN, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %38, %31, %18, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @gpiod_get_value(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
