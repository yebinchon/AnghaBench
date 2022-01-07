; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_get_ui_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_get_ui_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, %struct.pp_power_state* }
%struct.pp_power_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64*)* @psm_get_ui_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psm_get_ui_state(%struct.pp_hwmgr* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pp_power_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 2
  %16 = load %struct.pp_power_state*, %struct.pp_power_state** %15, align 8
  store %struct.pp_power_state* %16, %struct.pp_power_state** %8, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %23 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %48

34:                                               ; preds = %21
  %35 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %36 = ptrtoint %struct.pp_power_state* %35 to i64
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = inttoptr i64 %40 to %struct.pp_power_state*
  store %struct.pp_power_state* %41, %struct.pp_power_state** %8, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %29
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
