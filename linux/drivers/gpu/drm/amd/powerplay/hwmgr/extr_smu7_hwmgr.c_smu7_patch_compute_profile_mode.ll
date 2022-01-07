; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_compute_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_compute_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PP_SMC_POWER_PROFILE_COMPUTE = common dso_local global i32 0, align 4
@PP_SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @smu7_patch_compute_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu7_patch_compute_profile_mode(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PP_SMC_POWER_PROFILE_COMPUTE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %17 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %22 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %23 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %30, %21
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %38 = load i32, i32* @PP_SCLK, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = shl i32 3, %40
  %42 = call i32 @smu7_force_clock_level(%struct.pp_hwmgr* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  br label %44

44:                                               ; preds = %43, %15
  br label %60

45:                                               ; preds = %2
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PP_SMC_POWER_PROFILE_COMPUTE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load i32, i32* @PP_SCLK, align 4
  %54 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %55 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @smu7_force_clock_level(%struct.pp_hwmgr* %52, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %51, %45
  br label %60

60:                                               ; preds = %59, %44
  ret void
}

declare dso_local i32 @smu7_force_clock_level(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
