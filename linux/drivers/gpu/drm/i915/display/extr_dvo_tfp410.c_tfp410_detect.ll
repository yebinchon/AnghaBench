; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_tfp410.c_tfp410_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@TFP410_CTL_2 = common dso_local global i32 0, align 4
@TFP410_CTL_2_RSEN = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*)* @tfp410_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_detect(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  %5 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %7 = load i32, i32* @TFP410_CTL_2, align 4
  %8 = call i64 @tfp410_readb(%struct.intel_dvo_device* %6, i32 %7, i32* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TFP410_CTL_2_RSEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @connector_status_connected, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @tfp410_readb(%struct.intel_dvo_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
