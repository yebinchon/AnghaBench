; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_clock_by_type_with_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_clock_by_type_with_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_clock_levels_with_latency = type { i32 }
%struct.pp_hwmgr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)* @pp_get_clock_by_type_with_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_get_clock_by_type_with_latency(i8* %0, i32 %1, %struct.pp_clock_levels_with_latency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %8 = alloca %struct.pp_hwmgr*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pp_clock_levels_with_latency* %2, %struct.pp_clock_levels_with_latency** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %11, %struct.pp_hwmgr** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %13 = icmp ne %struct.pp_hwmgr* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %21 = icmp ne %struct.pp_clock_levels_with_latency* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %7, align 8
  %32 = call i32 @phm_get_clock_by_type_with_latency(%struct.pp_hwmgr* %29, i32 %30, %struct.pp_clock_levels_with_latency* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @phm_get_clock_by_type_with_latency(%struct.pp_hwmgr*, i32, %struct.pp_clock_levels_with_latency*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
