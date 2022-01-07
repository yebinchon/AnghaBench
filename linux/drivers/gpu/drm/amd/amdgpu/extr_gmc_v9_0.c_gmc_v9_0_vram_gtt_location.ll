; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_gmc = type { i32 }

@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_gmc*)* @gmc_v9_0_vram_gtt_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v9_0_vram_gtt_location(%struct.amdgpu_device* %0, %struct.amdgpu_gmc* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_gmc*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_gmc* %1, %struct.amdgpu_gmc** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_ARCTURUS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @mmhub_v9_4_get_fb_location(%struct.amdgpu_device* %12)
  store i32 %13, i32* %5, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i32 @mmhub_v1_0_get_fb_location(%struct.amdgpu_device* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21, %11
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %27, %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @amdgpu_gmc_vram_location(%struct.amdgpu_device* %36, %struct.amdgpu_gmc* %37, i32 %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %4, align 8
  %42 = call i32 @amdgpu_gmc_gart_location(%struct.amdgpu_device* %40, %struct.amdgpu_gmc* %41)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %4, align 8
  %45 = call i32 @amdgpu_gmc_agp_location(%struct.amdgpu_device* %43, %struct.amdgpu_gmc* %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 @gfxhub_v1_0_get_mc_fb_offset(%struct.amdgpu_device* %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %55, %60
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 8
  ret void
}

declare dso_local i32 @mmhub_v9_4_get_fb_location(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v1_0_get_fb_location(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gmc_vram_location(%struct.amdgpu_device*, %struct.amdgpu_gmc*, i32) #1

declare dso_local i32 @amdgpu_gmc_gart_location(%struct.amdgpu_device*, %struct.amdgpu_gmc*) #1

declare dso_local i32 @amdgpu_gmc_agp_location(%struct.amdgpu_device*, %struct.amdgpu_gmc*) #1

declare dso_local i32 @gfxhub_v1_0_get_mc_fb_offset(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
