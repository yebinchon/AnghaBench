; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_get_fan_speed_percent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_get_fan_speed_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100 = common dso_local global i32 0, align 4
@CG_THERMAL_STATUS = common dso_local global i32 0, align 4
@FDO_PWM_DUTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_get_fan_speed_percent(%struct.pp_hwmgr* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %23 = load i32, i32* @CG_FDO_CTRL1, align 4
  %24 = load i32, i32* @FMAX_DUTY100, align 4
  %25 = call i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %21, i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %30 = load i32, i32* @CG_THERMAL_STATUS, align 4
  %31 = load i32, i32* @FDO_PWM_DUTY, align 4
  %32 = call i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %28, i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %18
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %40, 100
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @do_div(i32 %42, i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 100
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i64*, i64** %5, align 8
  store i64 100, i64* %52, align 8
  br label %53

53:                                               ; preds = %51, %38
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %35, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
