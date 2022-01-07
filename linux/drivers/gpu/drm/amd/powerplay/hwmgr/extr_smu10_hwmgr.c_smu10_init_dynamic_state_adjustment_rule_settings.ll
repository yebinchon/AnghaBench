; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_init_dynamic_state_adjustment_rule_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_init_dynamic_state_adjustment_rule_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@entries = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can not allocate memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_0 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_1 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_2 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_3 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_4 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_5 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_6 = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_init_dynamic_state_adjustment_rule_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_init_dynamic_state_adjustment_rule_settings(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %5 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %6 = load i32, i32* @entries, align 4
  %7 = call i32 @struct_size(%struct.phm_clock_voltage_dependency_table* %5, i32 %6, i32 7)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.phm_clock_voltage_dependency_table* @kzalloc(i32 %7, i32 %8)
  store %struct.phm_clock_voltage_dependency_table* %9, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %10 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %11 = icmp eq %struct.phm_clock_voltage_dependency_table* null, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %18 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %17, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = load i32, i32* @PP_DAL_POWERLEVEL_0, align 4
  %20 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %21 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %19, i32* %24, align 4
  %25 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %26 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @PP_DAL_POWERLEVEL_1, align 4
  %31 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %32 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %37 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @PP_DAL_POWERLEVEL_2, align 4
  %42 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %43 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %48 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 2, i32* %51, align 4
  %52 = load i32, i32* @PP_DAL_POWERLEVEL_3, align 4
  %53 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %54 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %59 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 3, i32* %62, align 4
  %63 = load i32, i32* @PP_DAL_POWERLEVEL_4, align 4
  %64 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %65 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %70 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 4
  %74 = load i32, i32* @PP_DAL_POWERLEVEL_5, align 4
  %75 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %76 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %81 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 5
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 5, i32* %84, align 4
  %85 = load i32, i32* @PP_DAL_POWERLEVEL_6, align 4
  %86 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %87 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 6
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %92 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 6
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 6, i32* %95, align 4
  %96 = load i32, i32* @PP_DAL_POWERLEVEL_7, align 4
  %97 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %98 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 7
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 4
  %102 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %103 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 7
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 7, i32* %106, align 4
  %107 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %109 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store %struct.phm_clock_voltage_dependency_table* %107, %struct.phm_clock_voltage_dependency_table** %110, align 8
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %16, %12
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.phm_clock_voltage_dependency_table* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.phm_clock_voltage_dependency_table*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
