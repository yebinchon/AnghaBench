; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { %struct.ivch_priv* }
%struct.ivch_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*)* @ivch_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivch_destroy(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca %struct.ivch_priv*, align 8
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  %4 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %4, i32 0, i32 0
  %6 = load %struct.ivch_priv*, %struct.ivch_priv** %5, align 8
  store %struct.ivch_priv* %6, %struct.ivch_priv** %3, align 8
  %7 = load %struct.ivch_priv*, %struct.ivch_priv** %3, align 8
  %8 = icmp ne %struct.ivch_priv* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ivch_priv*, %struct.ivch_priv** %3, align 8
  %11 = call i32 @kfree(%struct.ivch_priv* %10)
  %12 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %13 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %12, i32 0, i32 0
  store %struct.ivch_priv* null, %struct.ivch_priv** %13, align 8
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @kfree(%struct.ivch_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
