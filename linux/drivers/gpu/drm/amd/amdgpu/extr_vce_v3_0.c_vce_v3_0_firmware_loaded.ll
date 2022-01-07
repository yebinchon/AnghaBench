; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_firmware_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_firmware_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmVCE_STATUS = common dso_local global i32 0, align 4
@VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"VCE not responding, trying to reset the ECPU!!!\0A\00", align 1
@VCE_SOFT_RESET = common dso_local global i32 0, align 4
@ECPU_SOFT_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v3_0_firmware_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_firmware_loaded(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* @mmVCE_STATUS, align 4
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %43

22:                                               ; preds = %14
  %23 = call i32 @mdelay(i32 10)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @VCE_SOFT_RESET, align 4
  %30 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %31 = call i32 @WREG32_FIELD(i32 %29, i32 %30, i32 1)
  %32 = call i32 @mdelay(i32 10)
  %33 = load i32, i32* @VCE_SOFT_RESET, align 4
  %34 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %35 = call i32 @WREG32_FIELD(i32 %33, i32 %34, i32 0)
  %36 = call i32 @mdelay(i32 10)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
