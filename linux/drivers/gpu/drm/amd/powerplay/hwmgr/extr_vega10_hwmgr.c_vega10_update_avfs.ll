; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_update_avfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_update_avfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32 }

@DPMTABLE_OD_UPDATE_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_update_avfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_update_avfs(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  store %struct.vega10_hwmgr* %6, %struct.vega10_hwmgr** %3, align 8
  %7 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = call i32 @vega10_avfs_enable(%struct.pp_hwmgr* %14, i32 0)
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = call i32 @vega10_avfs_enable(%struct.pp_hwmgr* %22, i32 0)
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %25 = call i32 @vega10_avfs_enable(%struct.pp_hwmgr* %24, i32 1)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = call i32 @vega10_avfs_enable(%struct.pp_hwmgr* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %13
  ret i32 0
}

declare dso_local i32 @vega10_avfs_enable(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
