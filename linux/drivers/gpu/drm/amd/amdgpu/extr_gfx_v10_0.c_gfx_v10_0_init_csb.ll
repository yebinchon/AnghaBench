; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_csb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_csb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GC = common dso_local global i32 0, align 4
@mmRLC_CSIB_ADDR_HI = common dso_local global i32 0, align 4
@mmRLC_CSIB_ADDR_LO = common dso_local global i32 0, align 4
@mmRLC_CSIB_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_init_csb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_init_csb(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @GC, align 4
  %4 = load i32, i32* @mmRLC_CSIB_ADDR_HI, align 4
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 32
  %11 = call i32 @WREG32_SOC15(i32 %3, i32 0, i32 %4, i32 %10)
  %12 = load i32, i32* @GC, align 4
  %13 = load i32, i32* @mmRLC_CSIB_ADDR_LO, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -4
  %20 = call i32 @WREG32_SOC15(i32 %12, i32 0, i32 %13, i32 %19)
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmRLC_CSIB_LENGTH, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %27)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
