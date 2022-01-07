; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vce is not idle \0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"VCE is busy, Can't set clock gating\00", align 1
@mmVCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmVCE_LMI_STATUS = common dso_local global i32 0, align 4
@mmVCE_VCPU_CNTL = common dso_local global i32 0, align 4
@mmVCE_SOFT_RESET = common dso_local global i32 0, align 4
@mmVCE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v2_0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v2_0_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i64 @vce_v2_0_lmi_clean(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i64 @vce_v2_0_wait_for_idle(%struct.amdgpu_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

17:                                               ; preds = %11
  %18 = load i32, i32* @mmVCE_LMI_CTRL2, align 4
  %19 = call i32 @WREG32_P(i32 %18, i32 256, i32 -257)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 100
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @mmVCE_LMI_STATUS, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 576
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  %31 = call i32 @mdelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %20

35:                                               ; preds = %29, %20
  %36 = load i32, i32* @mmVCE_VCPU_CNTL, align 4
  %37 = call i32 @WREG32_P(i32 %36, i32 0, i32 -524290)
  %38 = load i32, i32* @mmVCE_SOFT_RESET, align 4
  %39 = call i32 @WREG32_P(i32 %38, i32 1, i32 -2)
  %40 = load i32, i32* @mmVCE_STATUS, align 4
  %41 = call i32 @WREG32(i32 %40, i32 0)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %15, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @vce_v2_0_lmi_clean(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i64 @vce_v2_0_wait_for_idle(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
