; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_fan_speed_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_fan_speed_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmCG_TACH_CTRL = common dso_local global i32 0, align 4
@CG_TACH_CTRL = common dso_local global i32 0, align 4
@TARGET_PERIOD = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC_RPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_v11_0_set_fan_speed_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_fan_speed_rpm(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %20 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %23 = call i32 @smu_v11_0_auto_fan_control(%struct.smu_context* %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 60, %30
  %32 = mul nsw i32 %31, 10000
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 8, %33
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @THM, align 4
  %37 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %38 = load i32, i32* @THM, align 4
  %39 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %40 = call i32 @RREG32_SOC15(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* @CG_TACH_CTRL, align 4
  %42 = load i32, i32* @TARGET_PERIOD, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = call i32 @WREG32_SOC15(i32 %36, i32 0, i32 %37, i32 %44)
  %46 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %47 = load i32, i32* @FDO_PWM_MODE_STATIC_RPM, align 4
  %48 = call i32 @smu_v11_0_set_fan_static_mode(%struct.smu_context* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %27, %26
  %50 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %51 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_v11_0_auto_fan_control(%struct.smu_context*, i32) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_set_fan_static_mode(%struct.smu_context*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
