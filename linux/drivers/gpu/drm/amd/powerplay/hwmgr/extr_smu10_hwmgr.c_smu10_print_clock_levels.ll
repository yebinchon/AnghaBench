; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_print_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_print_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu10_hwmgr = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smu10_voltage_dependency_table* }
%struct.smu10_voltage_dependency_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PPSMC_MSG_GetGfxclkFrequency = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"0: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"1: %uMhz %s\0A\00", align 1
@SMU10_UMD_PSTATE_GFXCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"2: %uMhz %s\0A\00", align 1
@PPSMC_MSG_GetFclkFrequency = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*)* @smu10_print_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_print_clock_levels(%struct.pp_hwmgr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smu10_hwmgr*, align 8
  %8 = alloca %struct.smu10_voltage_dependency_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %15, %struct.smu10_hwmgr** %7, align 8
  %16 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %7, align 8
  %17 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %18, align 8
  store %struct.smu10_voltage_dependency_table* %19, %struct.smu10_voltage_dependency_table** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %141 [
    i32 128, label %21
    i32 129, label %94
  ]

21:                                               ; preds = %3
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %23 = load i32, i32* @PPSMC_MSG_GetGfxclkFrequency, align 4
  %24 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %22, i32 %23)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = call i32 @smum_get_argument(%struct.pp_hwmgr* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %7, align 8
  %29 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 100
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 2, i32* %9, align 4
  br label %44

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %7, align 8
  %37 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 100
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %43

42:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %7, align 8
  %50 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 100
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %56)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i32, i32* %10, align 4
  br label %70

68:                                               ; preds = %44
  %69 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8* %75)
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %7, align 8
  %84 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 100
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %91 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %86, i8* %90)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %142

94:                                               ; preds = %3
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %96 = load i32, i32* @PPSMC_MSG_GetFclkFrequency, align 4
  %97 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %95, i32 %96)
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %99 = call i32 @smum_get_argument(%struct.pp_hwmgr* %98)
  store i32 %99, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %137, %94
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %8, align 8
  %103 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %100
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %8, align 8
  %113 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 100
  %121 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %8, align 8
  %122 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 100
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %134 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %120, i8* %133)
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %106
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %100

140:                                              ; preds = %100
  br label %142

141:                                              ; preds = %3
  br label %142

142:                                              ; preds = %141, %140, %70
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
