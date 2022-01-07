; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_force_clock_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_force_clock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu10_hwmgr* }
%struct.smu10_hwmgr = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smu10_voltage_dependency_table* }
%struct.smu10_voltage_dependency_table = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Currently sclk only support 3 levels on RV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinGfxClk = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_GFXCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxGfxClk = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinFclkByFreq = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxFclkByFreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu10_force_clock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_force_clock_level(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu10_hwmgr*, align 8
  %9 = alloca %struct.smu10_voltage_dependency_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %13, align 8
  store %struct.smu10_hwmgr* %14, %struct.smu10_hwmgr** %8, align 8
  %15 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %8, align 8
  %16 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %17, align 8
  store %struct.smu10_voltage_dependency_table* %18, %struct.smu10_voltage_dependency_table** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ffs(i32 %22)
  %24 = sub nsw i32 %23, 1
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @fls(i32 %31)
  %33 = sub nsw i32 %32, 1
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %140 [
    i32 128, label %38
    i32 130, label %97
    i32 129, label %139
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %38
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %142

48:                                               ; preds = %41
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %50 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %8, align 8
  %55 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 100
  br label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  br label %68

63:                                               ; preds = %58
  %64 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %8, align 8
  %65 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 100
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi i32 [ %57, %53 ], [ %69, %68 ]
  %72 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %49, i32 %50, i32 %71)
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %74 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %8, align 8
  %79 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 100
  br label %94

82:                                               ; preds = %70
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  br label %92

87:                                               ; preds = %82
  %88 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %8, align 8
  %89 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 100
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %86, %85 ], [ %91, %87 ]
  br label %94

94:                                               ; preds = %92, %77
  %95 = phi i32 [ %81, %77 ], [ %93, %92 ]
  %96 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %73, i32 %74, i32 %95)
  br label %141

97:                                               ; preds = %35
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %9, align 8
  %100 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = icmp sgt i32 %98, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %9, align 8
  %107 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = icmp sgt i32 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104, %97
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %142

114:                                              ; preds = %104
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %116 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %117 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %9, align 8
  %118 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 100
  %126 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %115, i32 %116, i32 %125)
  %127 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %128 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %129 = load %struct.smu10_voltage_dependency_table*, %struct.smu10_voltage_dependency_table** %9, align 8
  %130 = getelementptr inbounds %struct.smu10_voltage_dependency_table, %struct.smu10_voltage_dependency_table* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 100
  %138 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %127, i32 %128, i32 %137)
  br label %141

139:                                              ; preds = %35
  br label %140

140:                                              ; preds = %35, %139
  br label %141

141:                                              ; preds = %140, %114, %94
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %111, %44
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
