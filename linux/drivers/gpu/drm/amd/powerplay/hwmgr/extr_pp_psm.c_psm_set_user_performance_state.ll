; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_set_user_performance_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_set_user_performance_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, %struct.pp_power_state* }
%struct.pp_power_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PP_StateUILabel_Performance = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psm_set_user_performance_state(%struct.pp_hwmgr* %0, i32 %1, %struct.pp_power_state** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_power_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_power_state** %2, %struct.pp_power_state*** %7, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load %struct.pp_power_state*, %struct.pp_power_state** %11, align 8
  %13 = icmp ne %struct.pp_power_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 2
  %21 = load %struct.pp_power_state*, %struct.pp_power_state** %20, align 8
  %22 = load %struct.pp_power_state**, %struct.pp_power_state*** %7, align 8
  store %struct.pp_power_state* %21, %struct.pp_power_state** %22, align 8
  br label %23

23:                                               ; preds = %53, %15
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.pp_power_state**, %struct.pp_power_state*** %7, align 8
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %29, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %59

38:                                               ; preds = %28
  %39 = load %struct.pp_power_state**, %struct.pp_power_state*** %7, align 8
  %40 = load %struct.pp_power_state*, %struct.pp_power_state** %39, align 8
  %41 = ptrtoint %struct.pp_power_state* %40 to i64
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = inttoptr i64 %45 to %struct.pp_power_state*
  %47 = load %struct.pp_power_state**, %struct.pp_power_state*** %7, align 8
  store %struct.pp_power_state* %46, %struct.pp_power_state** %47, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %55 [
    i32 128, label %53
    i32 129, label %53
  ]

53:                                               ; preds = %51, %51
  %54 = load i32, i32* @PP_StateUILabel_Performance, align 4
  store i32 %54, i32* %6, align 4
  br label %23

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %37, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
