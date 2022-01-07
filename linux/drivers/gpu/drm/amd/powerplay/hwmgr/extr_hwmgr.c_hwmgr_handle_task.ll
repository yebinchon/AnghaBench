; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_handle_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_handle_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_power_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwmgr_handle_task(%struct.pp_hwmgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pp_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = icmp eq %struct.pp_hwmgr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %66 [
    i32 130, label %18
    i32 129, label %42
    i32 131, label %63
    i32 128, label %63
  ]

18:                                               ; preds = %16
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = call i32 @phm_pre_display_configuration_changed(%struct.pp_hwmgr* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %18
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %27 = call i32 @phm_set_cpu_power_state(%struct.pp_hwmgr* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %34 = call i32 @psm_set_performance_states(%struct.pp_hwmgr* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %32
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %41 = call i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr* %40, i32 0, %struct.pp_power_state* null)
  store i32 %41, i32* %8, align 4
  br label %67

42:                                               ; preds = %16
  store %struct.pp_power_state* null, %struct.pp_power_state** %10, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %67

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @power_state_convert(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @psm_set_user_performance_state(%struct.pp_hwmgr* %52, i32 %53, %struct.pp_power_state** %10)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %48
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %61 = load %struct.pp_power_state*, %struct.pp_power_state** %10, align 8
  %62 = call i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr* %60, i32 1, %struct.pp_power_state* %61)
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %16, %16
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %65 = call i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr* %64, i32 1, %struct.pp_power_state* null)
  store i32 %65, i32* %8, align 4
  br label %67

66:                                               ; preds = %16
  br label %67

67:                                               ; preds = %66, %63, %59, %45, %39
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %57, %37, %30, %23, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @phm_pre_display_configuration_changed(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_set_cpu_power_state(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_set_performance_states(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr*, i32, %struct.pp_power_state*) #1

declare dso_local i32 @power_state_convert(i32) #1

declare dso_local i32 @psm_set_user_performance_state(%struct.pp_hwmgr*, i32, %struct.pp_power_state**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
