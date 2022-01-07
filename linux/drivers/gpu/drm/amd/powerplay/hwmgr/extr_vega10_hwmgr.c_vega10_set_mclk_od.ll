; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_mclk_od.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_mclk_od.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_10__, %struct.pp_power_state*, %struct.vega10_hwmgr* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pp_power_state = type { i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vega10_power_state = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"max mclk supported by vbios is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @vega10_set_mclk_od to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_set_mclk_od(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vega10_hwmgr*, align 8
  %7 = alloca %struct.vega10_single_dpm_table*, align 8
  %8 = alloca %struct.pp_power_state*, align 8
  %9 = alloca %struct.vega10_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %6, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %15, %struct.vega10_single_dpm_table** %7, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load %struct.pp_power_state*, %struct.pp_power_state** %17, align 8
  store %struct.pp_power_state* %18, %struct.pp_power_state** %8, align 8
  %19 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %20 = icmp eq %struct.pp_power_state* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %104

24:                                               ; preds = %2
  %25 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %26 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %25, i32 0, i32 0
  %27 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(i32* %26)
  store %struct.vega10_power_state* %27, %struct.vega10_power_state** %9, align 8
  %28 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %29 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %32 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %40, 100
  %42 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %43 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %46 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %41, %52
  %54 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %55 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %58 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %53, i32* %63, align 4
  %64 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %65 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %68 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %24
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %83 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %88 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.vega10_power_state*, %struct.vega10_power_state** %9, align 8
  %91 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %86, i32* %96, align 4
  %97 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %98 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %81, %24
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %21
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.vega10_power_state* @cast_phw_vega10_power_state(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
