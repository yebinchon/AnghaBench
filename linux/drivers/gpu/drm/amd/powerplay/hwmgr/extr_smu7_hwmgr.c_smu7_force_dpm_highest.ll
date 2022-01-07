; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_highest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_highest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PPSMC_MSG_PCIeDPM_ForceLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_SCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_force_dpm_highest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_force_dpm_highest(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %9, %struct.smu7_hwmgr** %3, align 8
  %10 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %1
  %15 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %21 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %29, %20
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %25

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = load i32, i32* @PPSMC_MSG_PCIeDPM_ForceLevel, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %14
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %42
  %48 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  %54 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %62, %53
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %58

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %70 = load i32, i32* @PPSMC_MSG_SCLKDPM_SetEnabledMask, align 4
  %71 = load i32, i32* %4, align 4
  %72 = shl i32 1, %71
  %73 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %69, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %42
  %77 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %110, label %81

81:                                               ; preds = %76
  %82 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %83 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  %88 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %89 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %96, %87
  %93 = load i32, i32* %5, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %92

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %104 = load i32, i32* @PPSMC_MSG_MCLKDPM_SetEnabledMask, align 4
  %105 = load i32, i32* %4, align 4
  %106 = shl i32 1, %105
  %107 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %102, %99
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %76
  ret i32 0
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
