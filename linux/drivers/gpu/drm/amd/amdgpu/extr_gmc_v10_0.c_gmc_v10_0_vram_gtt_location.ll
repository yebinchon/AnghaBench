; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_gmc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_gmc*)* @gmc_v10_0_vram_gtt_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v10_0_vram_gtt_location(%struct.amdgpu_device* %0, %struct.amdgpu_gmc* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_gmc*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_gmc* %1, %struct.amdgpu_gmc** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call i32 @gfxhub_v2_0_get_fb_location(%struct.amdgpu_device* %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @amdgpu_gmc_vram_location(%struct.amdgpu_device* %13, i32* %15, i32 %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %4, align 8
  %20 = call i32 @amdgpu_gmc_gart_location(%struct.amdgpu_device* %18, %struct.amdgpu_gmc* %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = call i32 @gfxhub_v2_0_get_mc_fb_offset(%struct.amdgpu_device* %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  ret void
}

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfxhub_v2_0_get_fb_location(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gmc_vram_location(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @amdgpu_gmc_gart_location(%struct.amdgpu_device*, %struct.amdgpu_gmc*) #1

declare dso_local i32 @gfxhub_v2_0_get_mc_fb_offset(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
