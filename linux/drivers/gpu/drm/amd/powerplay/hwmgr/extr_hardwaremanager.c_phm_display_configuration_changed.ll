; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_display_configuration_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_display_configuration_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_display_configuration_changed(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = call i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr* %3)
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.pp_hwmgr*)**
  %10 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %9, align 8
  %11 = icmp ne i32 (%struct.pp_hwmgr*)* null, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.pp_hwmgr*)**
  %18 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %17, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = call i32 %18(%struct.pp_hwmgr* %19)
  br label %21

21:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
