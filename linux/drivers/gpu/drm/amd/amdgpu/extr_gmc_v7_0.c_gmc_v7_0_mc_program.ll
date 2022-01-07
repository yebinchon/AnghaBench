; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@mmHDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@mmVGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@mmVGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@VGA_VSTATUS_CNTL = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BASE = common dso_local global i32 0, align 4
@mmMC_VM_AGP_TOP = common dso_local global i32 0, align 4
@mmMC_VM_AGP_BOT = common dso_local global i32 0, align 4
@mmBIF_FB_EN = common dso_local global i32 0, align 4
@BIF_FB_EN__FB_READ_EN_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN__FB_WRITE_EN_MASK = common dso_local global i32 0, align 4
@mmHDP_MISC_CNTL = common dso_local global i32 0, align 4
@HDP_MISC_CNTL = common dso_local global i32 0, align 4
@FLUSH_INVALIDATE_CACHE = common dso_local global i32 0, align 4
@mmHDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v7_0_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v7_0_mc_program(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 2821, %10
  %12 = call i32 @WREG32(i32 %11, i32 0)
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 2822, %13
  %15 = call i32 @WREG32(i32 %14, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 2823, %16
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 2824, %19
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 2825, %22
  %24 = call i32 @WREG32(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 6
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i32, i32* @mmHDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %32 = call i32 @WREG32(i32 %31, i32 0)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = bitcast %struct.amdgpu_device* %33 to i8*
  %35 = call i64 @gmc_v7_0_wait_for_idle(i8* %34)
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
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %53 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %54 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53, i32 1)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @mmVGA_HDP_CONTROL, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  %58 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %62 = load i32, i32* @VGA_VSTATUS_CNTL, align 4
  %63 = call i32 @REG_SET_FIELD(i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @mmVGA_RENDER_CONTROL, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %42
  %68 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 12
  %74 = call i32 @WREG32(i32 %68, i32 %73)
  %75 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 12
  %81 = call i32 @WREG32(i32 %75, i32 %80)
  %82 = load i32, i32* @mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 12
  %88 = call i32 @WREG32(i32 %82, i32 %87)
  %89 = load i32, i32* @mmMC_VM_AGP_BASE, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  %91 = load i32, i32* @mmMC_VM_AGP_TOP, align 4
  %92 = call i32 @WREG32(i32 %91, i32 268435455)
  %93 = load i32, i32* @mmMC_VM_AGP_BOT, align 4
  %94 = call i32 @WREG32(i32 %93, i32 268435455)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = bitcast %struct.amdgpu_device* %95 to i8*
  %97 = call i64 @gmc_v7_0_wait_for_idle(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %67
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %67
  %105 = load i32, i32* @mmBIF_FB_EN, align 4
  %106 = load i32, i32* @BIF_FB_EN__FB_READ_EN_MASK, align 4
  %107 = load i32, i32* @BIF_FB_EN__FB_WRITE_EN_MASK, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @WREG32(i32 %105, i32 %108)
  %110 = load i32, i32* @mmHDP_MISC_CNTL, align 4
  %111 = call i32 @RREG32(i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @HDP_MISC_CNTL, align 4
  %114 = load i32, i32* @FLUSH_INVALIDATE_CACHE, align 4
  %115 = call i32 @REG_SET_FIELD(i32 %112, i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* @mmHDP_MISC_CNTL, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %120 = call i32 @RREG32(i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @WREG32(i32 %121, i32 %122)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @gmc_v7_0_wait_for_idle(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
