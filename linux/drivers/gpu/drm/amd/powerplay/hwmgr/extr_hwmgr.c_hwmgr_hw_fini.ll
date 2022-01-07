; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwmgr_hw_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %5 = icmp ne %struct.pp_hwmgr* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %59

12:                                               ; preds = %6
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = call i32 @phm_stop_thermal_controller(%struct.pp_hwmgr* %13)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = call i32 @psm_set_boot_states(%struct.pp_hwmgr* %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = call i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr* %17, i32 1, i32* null)
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = call i32 @phm_disable_dynamic_state_management(%struct.pp_hwmgr* %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = call i32 @phm_disable_clock_power_gatings(%struct.pp_hwmgr* %21)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.pp_hwmgr*)**
  %28 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %27, align 8
  %29 = icmp ne i32 (%struct.pp_hwmgr*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %12
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.pp_hwmgr*)**
  %36 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %35, align 8
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %38 = call i32 %36(%struct.pp_hwmgr* %37)
  br label %39

39:                                               ; preds = %30, %12
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.pp_hwmgr*)**
  %45 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %44, align 8
  %46 = icmp ne i32 (%struct.pp_hwmgr*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.pp_hwmgr*)**
  %53 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %52, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = call i32 %53(%struct.pp_hwmgr* %54)
  br label %56

56:                                               ; preds = %47, %39
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = call i32 @psm_fini_power_state_table(%struct.pp_hwmgr* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @phm_stop_thermal_controller(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_set_boot_states(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @phm_disable_dynamic_state_management(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_disable_clock_power_gatings(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_fini_power_state_table(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
