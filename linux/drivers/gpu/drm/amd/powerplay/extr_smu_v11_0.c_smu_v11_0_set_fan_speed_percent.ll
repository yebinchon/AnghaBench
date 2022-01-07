; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_fan_speed_percent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_fan_speed_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmCG_FDO_CTRL1 = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100 = common dso_local global i32 0, align 4
@mmCG_FDO_CTRL0 = common dso_local global i32 0, align 4
@CG_FDO_CTRL0 = common dso_local global i32 0, align 4
@FDO_STATIC_DUTY = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_v11_0_set_fan_speed_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_fan_speed_percent(%struct.smu_context* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 100, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %18 = call i64 @smu_v11_0_auto_fan_control(%struct.smu_context* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %16
  %24 = load i32, i32* @THM, align 4
  %25 = load i32, i32* @mmCG_FDO_CTRL1, align 4
  %26 = call i32 @RREG32_SOC15(i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* @CG_FDO_CTRL1, align 4
  %28 = load i32, i32* @FMAX_DUTY100, align 4
  %29 = call i32 @REG_GET_FIELD(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @do_div(i32 %39, i32 100)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @THM, align 4
  %43 = load i32, i32* @mmCG_FDO_CTRL0, align 4
  %44 = load i32, i32* @THM, align 4
  %45 = load i32, i32* @mmCG_FDO_CTRL0, align 4
  %46 = call i32 @RREG32_SOC15(i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* @CG_FDO_CTRL0, align 4
  %48 = load i32, i32* @FDO_STATIC_DUTY, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32 @WREG32_SOC15(i32 %42, i32 0, i32 %43, i32 %50)
  %52 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %53 = load i32, i32* @FDO_PWM_MODE_STATIC, align 4
  %54 = call i32 @smu_v11_0_set_fan_static_mode(%struct.smu_context* %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %35, %32, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @smu_v11_0_auto_fan_control(%struct.smu_context*, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_set_fan_static_mode(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
