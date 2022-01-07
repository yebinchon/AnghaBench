; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_set_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_set_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, i32, %struct.pp_power_state* }
%struct.pp_power_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64)* @psm_set_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psm_set_states(%struct.pp_hwmgr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 3
  %14 = load %struct.pp_power_state*, %struct.pp_power_state** %13, align 8
  store %struct.pp_power_state* %14, %struct.pp_power_state** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %42, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %21 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memcpy(i32 %28, %struct.pp_power_state* %29, i64 %32)
  store i32 0, i32* %3, align 4
  br label %48

34:                                               ; preds = %19
  %35 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %36 = ptrtoint %struct.pp_power_state* %35 to i64
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = inttoptr i64 %40 to %struct.pp_power_state*
  store %struct.pp_power_state* %41, %struct.pp_power_state** %6, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i32, %struct.pp_power_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
