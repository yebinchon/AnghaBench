; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_set_fan_speed_percent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_set_fan_speed_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.si_power_info = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100_MASK = common dso_local global i32 0, align 4
@FMAX_DUTY100_SHIFT = common dso_local global i32 0, align 4
@CG_FDO_CTRL0 = common dso_local global i32 0, align 4
@FDO_STATIC_DUTY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @si_dpm_set_fan_speed_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_set_fan_speed_percent(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.si_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %6, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %14)
  store %struct.si_power_info* %15, %struct.si_power_info** %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %26 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 100
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %32
  %39 = load i32, i32* @CG_FDO_CTRL1, align 4
  %40 = call i32 @RREG32(i32 %39)
  %41 = load i32, i32* @FMAX_DUTY100_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @FMAX_DUTY100_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @do_div(i32 %54, i32 100)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @CG_FDO_CTRL0, align 4
  %58 = call i32 @RREG32(i32 %57)
  %59 = load i32, i32* @FDO_STATIC_DUTY_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @FDO_STATIC_DUTY(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @CG_FDO_CTRL0, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %50, %47, %35, %29, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @FDO_STATIC_DUTY(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
