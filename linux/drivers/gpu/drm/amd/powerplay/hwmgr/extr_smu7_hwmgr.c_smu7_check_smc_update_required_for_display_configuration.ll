; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_smc_update_required_for_display_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_smc_update_required_for_display_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@SMU7_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_check_smc_update_required_for_display_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_check_smc_update_required_for_display_configuration(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %8, %struct.smu7_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %38 = call i64 @phm_cap_enabled(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SMU7_MINIMUM_ENGINE_CLOCK, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SMU7_MINIMUM_ENGINE_CLOCK, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %51
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %58, %40
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
