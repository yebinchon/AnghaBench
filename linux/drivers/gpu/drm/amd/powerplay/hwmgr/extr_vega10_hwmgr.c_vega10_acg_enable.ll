; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_acg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_acg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@GNLD_ACG = common dso_local global i64 0, align 8
@GNLD_DPM_PREFETCHER = common dso_local global i64 0, align 8
@PPSMC_MSG_InitializeAcg = common dso_local global i32 0, align 4
@PPSMC_MSG_RunAcgBtc = common dso_local global i32 0, align 4
@PPSMC_MSG_RunAcgInClosedLoop = common dso_local global i32 0, align 4
@PPSMC_MSG_RunAcgInOpenLoop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"[ACG_Enable] ACG BTC Returned Failed Status!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_acg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_acg_enable(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %6, align 8
  store %struct.vega10_hwmgr* %7, %struct.vega10_hwmgr** %3, align 8
  %8 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @GNLD_ACG, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @GNLD_DPM_PREFETCHER, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @vega10_enable_smc_features(%struct.pp_hwmgr* %17, i32 1, i32 %24)
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* @GNLD_DPM_PREFETCHER, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = load i32, i32* @PPSMC_MSG_InitializeAcg, align 4
  %37 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %35, i32 %36)
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = load i32, i32* @PPSMC_MSG_RunAcgBtc, align 4
  %40 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %38, i32 %39)
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %42 = call i32 @smum_get_argument(%struct.pp_hwmgr* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 1, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %34
  %46 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 1, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = load i32, i32* @PPSMC_MSG_RunAcgInClosedLoop, align 4
  %53 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %51, i32 %52)
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %56 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 2, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %61 = load i32, i32* @PPSMC_MSG_RunAcgInOpenLoop, align 4
  %62 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %66 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %67 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @GNLD_ACG, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @vega10_enable_smc_features(%struct.pp_hwmgr* %65, i32 1, i32 %72)
  %74 = icmp eq i64 0, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %77 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @GNLD_ACG, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %75, %64
  br label %91

83:                                               ; preds = %34
  %84 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %86 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* @GNLD_ACG, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %82
  br label %92

92:                                               ; preds = %91, %1
  ret i32 0
}

declare dso_local i64 @vega10_enable_smc_features(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
