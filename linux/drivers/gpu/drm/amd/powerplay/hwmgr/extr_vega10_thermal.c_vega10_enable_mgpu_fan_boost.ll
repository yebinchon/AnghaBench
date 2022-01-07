; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_enable_mgpu_fan_boost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_enable_mgpu_fan_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.vega10_hwmgr* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@PPTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to update fan control table in pptable!\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Attempt to disable SMC fan control feature failed!\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Attempt to enable SMC fan control feature failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_enable_mgpu_fan_boost(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_hwmgr*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  store %struct.vega10_hwmgr* %9, %struct.vega10_hwmgr** %4, align 8
  %10 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %40 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_10__* %41 to i32*
  %43 = load i32, i32* @PPTABLE, align 4
  %44 = call i32 @smum_smc_table_manager(%struct.pp_hwmgr* %38, i32* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %30
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = call i32 @vega10_disable_fan_control_feature(%struct.pp_hwmgr* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = call i32 @vega10_enable_fan_control_feature(%struct.pp_hwmgr* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %55, %47, %29, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @smum_smc_table_manager(%struct.pp_hwmgr*, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @vega10_disable_fan_control_feature(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_enable_fan_control_feature(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
