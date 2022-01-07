; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_encoder = type { i32 }
%struct.psb_intel_sdvo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_sdvo_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_save(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.gma_encoder*, align 8
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %9)
  store %struct.gma_encoder* %10, %struct.gma_encoder** %4, align 8
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 0
  %13 = call %struct.psb_intel_sdvo* @to_psb_intel_sdvo(i32* %12)
  store %struct.psb_intel_sdvo* %13, %struct.psb_intel_sdvo** %5, align 8
  %14 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %15 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @REG_READ(i32 %16)
  %18 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %19 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.psb_intel_sdvo* @to_psb_intel_sdvo(i32*) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
