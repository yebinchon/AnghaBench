; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_apply_dal_min_voltage_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_apply_dal_min_voltage_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@PP_DAL_POWERLEVEL_ULTRALOW = common dso_local global i32 0, align 4
@PP_DAL_POWERLEVEL_PERFORMANCE = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i64 0, align 8
@PPSMC_MSG_VddC_Request = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"DAL requested level can not found a available voltage in VDDC DPM Table \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phm_apply_dal_min_voltage_request(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.phm_ppt_v1_information*, align 8
  %4 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %5 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %13, %struct.phm_ppt_v1_information** %3, align 8
  %14 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %3, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %14, i32 0, i32 1
  %16 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %15, align 8
  store %struct.phm_clock_voltage_dependency_table* %16, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %21 = icmp ne %struct.phm_clock_voltage_dependency_table* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %24 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PP_DAL_POWERLEVEL_ULTRALOW, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PP_DAL_POWERLEVEL_PERFORMANCE, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %22, %1
  br label %105

36:                                               ; preds = %31
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %40 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %46 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %44, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %55 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  br label %65

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %37

65:                                               ; preds = %53, %37
  %66 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %3, align 8
  %67 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %66, i32 0, i32 0
  %68 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %67, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %68, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  store i64 0, i64* %9, align 8
  br label %69

69:                                               ; preds = %100, %65
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %72 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %78 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ule i64 %76, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %75
  %86 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %87 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VOLTAGE_SCALE, align 8
  %94 = mul i64 %92, %93
  store i64 %94, i64* %8, align 8
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %96 = load i32, i32* @PPSMC_MSG_VddC_Request, align 4
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %95, i32 %96, i64 %97)
  br label %105

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %69

103:                                              ; preds = %69
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %85, %35
  ret void
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
