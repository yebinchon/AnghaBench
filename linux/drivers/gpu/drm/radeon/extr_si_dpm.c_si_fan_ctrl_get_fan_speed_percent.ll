; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_fan_ctrl_get_fan_speed_percent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_fan_ctrl_get_fan_speed_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100_MASK = common dso_local global i32 0, align 4
@FMAX_DUTY100_SHIFT = common dso_local global i32 0, align 4
@CG_THERMAL_STATUS = common dso_local global i32 0, align 4
@FDO_PWM_DUTY_MASK = common dso_local global i32 0, align 4
@FDO_PWM_DUTY_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_fan_ctrl_get_fan_speed_percent(%struct.radeon_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* @CG_FDO_CTRL1, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32, i32* @FMAX_DUTY100_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @FMAX_DUTY100_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @CG_THERMAL_STATUS, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = load i32, i32* @FDO_PWM_DUTY_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @FDO_PWM_DUTY_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 100
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @do_div(i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 100
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  store i32 100, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %32, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
