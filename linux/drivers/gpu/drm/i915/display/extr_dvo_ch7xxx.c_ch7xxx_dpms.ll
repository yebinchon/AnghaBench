; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@CH7xxx_PM = common dso_local global i32 0, align 4
@CH7xxx_PM_DVIL = common dso_local global i32 0, align 4
@CH7xxx_PM_DVIP = common dso_local global i32 0, align 4
@CH7xxx_PM_FPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, i32)* @ch7xxx_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7xxx_dpms(%struct.intel_dvo_device* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dvo_device*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %9 = load i32, i32* @CH7xxx_PM, align 4
  %10 = load i32, i32* @CH7xxx_PM_DVIL, align 4
  %11 = load i32, i32* @CH7xxx_PM_DVIP, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %8, i32 %9, i32 %12)
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %3, align 8
  %16 = load i32, i32* @CH7xxx_PM, align 4
  %17 = load i32, i32* @CH7xxx_PM_FPD, align 4
  %18 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @ch7xxx_writeb(%struct.intel_dvo_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
