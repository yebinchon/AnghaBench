; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_select_ddc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_select_ddc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32, i64 }
%struct.psb_intel_sdvo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_select_ddc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_select_ddc_bus(%struct.drm_psb_private* %0, %struct.psb_intel_sdvo* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %4, align 8
  store %struct.psb_intel_sdvo* %1, %struct.psb_intel_sdvo** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @IS_SDVOB(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %13, align 8
  %15 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %14, i64 0
  store %struct.sdvo_device_mapping* %15, %struct.sdvo_device_mapping** %7, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %17, i32 0, i32 0
  %19 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %18, align 8
  %20 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %19, i64 1
  store %struct.sdvo_device_mapping* %20, %struct.sdvo_device_mapping** %7, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %23 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %28 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 240
  %31 = ashr i32 %30, 4
  %32 = shl i32 1, %31
  %33 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %34 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %38

35:                                               ; preds = %21
  %36 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %37 = call i32 @psb_intel_sdvo_guess_ddc_bus(%struct.psb_intel_sdvo* %36)
  br label %38

38:                                               ; preds = %35, %26
  ret void
}

declare dso_local i64 @IS_SDVOB(i32) #1

declare dso_local i32 @psb_intel_sdvo_guess_ddc_bus(%struct.psb_intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
