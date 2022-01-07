; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_print_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_print_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixTARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURR_SCLK_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURR_MCLK_INDEX = common dso_local global i32 0, align 4
@SMU8_NUM_NBPMEMORYCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*)* @smu8_print_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_print_clock_levels(%struct.pp_hwmgr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smu8_hwmgr*, align 8
  %8 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %13, align 8
  store %struct.smu8_hwmgr* %14, %struct.smu8_hwmgr** %7, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %17, align 8
  store %struct.phm_clock_voltage_dependency_table* %18, %struct.phm_clock_voltage_dependency_table** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %109 [
    i32 128, label %20
    i32 129, label %63
  ]

20:                                               ; preds = %3
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %25 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %26 = call i32 @cgs_read_ind_register(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %28 = load i32, i32* @CURR_SCLK_INDEX, align 4
  %29 = call i32 @PHM_GET_FIELD(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %59, %20
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %8, align 8
  %33 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %8, align 8
  %43 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 100
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %50, i8* %55)
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %30

62:                                               ; preds = %30
  br label %110

63:                                               ; preds = %3
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %68 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %69 = call i32 @cgs_read_ind_register(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %71 = load i32, i32* @CURR_MCLK_INDEX, align 4
  %72 = call i32 @PHM_GET_FIELD(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %105, %63
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  %86 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 100
  %95 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %94, i8* %101)
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %77
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %9, align 4
  br label %74

108:                                              ; preds = %74
  br label %110

109:                                              ; preds = %3
  br label %110

110:                                              ; preds = %109, %108, %62
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @PHM_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
