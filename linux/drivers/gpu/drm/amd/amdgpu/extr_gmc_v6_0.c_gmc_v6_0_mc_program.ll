; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@mmHDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@mmVGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_HDP_CONTROL__VGA_MEMORY_DISABLE_MASK = common dso_local global i32 0, align 4
@mmVGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@VGA_VSTATUS_CNTL = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BASE = common dso_local global i32 0, align 4
@mmMC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v6_0_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v6_0_mc_program(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 2821, %10
  %12 = call i32 @WREG32(i32 %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 2822, %13
  %15 = call i32 @WREG32(i32 %14, i32 0)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 2823, %16
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 2824, %19
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 2825, %22
  %24 = call i32 @WREG32(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 6
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i32, i32* @mmHDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %32 = call i32 @WREG32(i32 %31, i32 0)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = bitcast %struct.amdgpu_device* %33 to i8*
  %35 = call i64 @gmc_v6_0_wait_for_idle(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @VGA_HDP_CONTROL__VGA_MEMORY_DISABLE_MASK, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %58 = call i32 @RREG32(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @VGA_VSTATUS_CNTL, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %48, %42
  %67 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 12
  %73 = call i32 @WREG32(i32 %67, i32 %72)
  %74 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 12
  %80 = call i32 @WREG32(i32 %74, i32 %79)
  %81 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 12
  %87 = call i32 @WREG32(i32 %81, i32 %86)
  %88 = load i32, i32* @mmMC_VM_AGP_BASE, align 4
  %89 = call i32 @WREG32(i32 %88, i32 0)
  %90 = load i32, i32* @mmMC_VM_AGP_TOP, align 4
  %91 = call i32 @WREG32(i32 %90, i32 268435455)
  %92 = load i32, i32* @mmMC_VM_AGP_BOT, align 4
  %93 = call i32 @WREG32(i32 %92, i32 268435455)
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = bitcast %struct.amdgpu_device* %94 to i8*
  %96 = call i64 @gmc_v6_0_wait_for_idle(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %66
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %66
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @gmc_v6_0_wait_for_idle(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
