; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_set_thermal_temperature_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_set_thermal_temperature_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid thermal range: %d - %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ixCG_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__DIG_THERM_INTH_MASK = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__DIG_THERM_INTL_MASK = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__DIG_THERM_INTH__SHIFT = common dso_local global i32 0, align 4
@CG_THERMAL_INT_CTRL__DIG_THERM_INTL__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32)* @kv_set_thermal_temperature_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_set_thermal_temperature_range(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 255000, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %22
  %33 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %34 = call i32 @RREG32_SMC(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @CG_THERMAL_INT_CTRL__DIG_THERM_INTH_MASK, align 4
  %36 = load i32, i32* @CG_THERMAL_INT_CTRL__DIG_THERM_INTL_MASK, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %41, 1000
  %43 = add nsw i32 49, %42
  %44 = load i32, i32* @CG_THERMAL_INT_CTRL__DIG_THERM_INTH__SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %46, 1000
  %48 = add nsw i32 49, %47
  %49 = load i32, i32* @CG_THERMAL_INT_CTRL__DIG_THERM_INTL__SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @ixCG_THERMAL_INT_CTRL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @WREG32_SMC(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %32, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
