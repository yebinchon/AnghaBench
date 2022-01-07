; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7017.c_ch7017_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7017.c_ch7017_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@CH7017_LVDS_POWER_DOWN = common dso_local global i32 0, align 4
@CH7017_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@CH7017_DAC0_POWER_DOWN = common dso_local global i32 0, align 4
@CH7017_DAC1_POWER_DOWN = common dso_local global i32 0, align 4
@CH7017_DAC2_POWER_DOWN = common dso_local global i32 0, align 4
@CH7017_DAC3_POWER_DOWN = common dso_local global i32 0, align 4
@CH7017_TV_POWER_DOWN_EN = common dso_local global i32 0, align 4
@CH7017_LVDS_POWER_DOWN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, i32)* @ch7017_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7017_dpms(%struct.intel_dvo_device* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dvo_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %7 = load i32, i32* @CH7017_LVDS_POWER_DOWN, align 4
  %8 = call i32 @ch7017_read(%struct.intel_dvo_device* %6, i32 %7, i32* %5)
  %9 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %10 = load i32, i32* @CH7017_POWER_MANAGEMENT, align 4
  %11 = load i32, i32* @CH7017_DAC0_POWER_DOWN, align 4
  %12 = load i32, i32* @CH7017_DAC1_POWER_DOWN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CH7017_DAC2_POWER_DOWN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CH7017_DAC3_POWER_DOWN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CH7017_TV_POWER_DOWN_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ch7017_write(%struct.intel_dvo_device* %9, i32 %10, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %25 = load i32, i32* @CH7017_LVDS_POWER_DOWN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CH7017_LVDS_POWER_DOWN_EN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @ch7017_write(%struct.intel_dvo_device* %24, i32 %25, i32 %29)
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %33 = load i32, i32* @CH7017_LVDS_POWER_DOWN, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CH7017_LVDS_POWER_DOWN_EN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ch7017_write(%struct.intel_dvo_device* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = call i32 @msleep(i32 20)
  ret void
}

declare dso_local i32 @ch7017_read(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @ch7017_write(%struct.intel_dvo_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
