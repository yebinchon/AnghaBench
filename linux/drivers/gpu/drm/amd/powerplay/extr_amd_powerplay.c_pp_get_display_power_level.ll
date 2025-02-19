; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_display_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_display_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_pp_simple_clock_info = type { i32 }
%struct.pp_hwmgr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.amd_pp_simple_clock_info*)* @pp_get_display_power_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_get_display_power_level(i8* %0, %struct.amd_pp_simple_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amd_pp_simple_clock_info*, align 8
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.amd_pp_simple_clock_info* %1, %struct.amd_pp_simple_clock_info** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %9, %struct.pp_hwmgr** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %11 = icmp ne %struct.pp_hwmgr* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %19 = icmp ne %struct.amd_pp_simple_clock_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %12, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %17
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %28 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %29 = call i32 @phm_get_dal_power_level(%struct.pp_hwmgr* %27, %struct.amd_pp_simple_clock_info* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @phm_get_dal_power_level(%struct.pp_hwmgr*, %struct.amd_pp_simple_clock_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
