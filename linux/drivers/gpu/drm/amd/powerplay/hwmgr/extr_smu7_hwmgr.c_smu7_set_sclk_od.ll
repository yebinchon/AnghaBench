; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_sclk_od.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_sclk_od.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.pp_power_state*, i64 }
%struct.pp_power_state = type { i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.smu7_power_state = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @smu7_set_sclk_od to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_set_sclk_od(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.smu7_single_dpm_table*, align 8
  %8 = alloca %struct.pp_power_state*, align 8
  %9 = alloca %struct.smu7_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %6, align 8
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.smu7_single_dpm_table* %16, %struct.smu7_single_dpm_table** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 20
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 20, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load %struct.pp_power_state*, %struct.pp_power_state** %22, align 8
  store %struct.pp_power_state* %23, %struct.pp_power_state** %8, align 8
  %24 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %25 = icmp eq %struct.pp_power_state* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %20
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 0
  %32 = call %struct.smu7_power_state* @cast_phw_smu7_power_state(i32* %31)
  store %struct.smu7_power_state* %32, %struct.smu7_power_state** %9, align 8
  %33 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %34 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %37 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sdiv i32 %45, 100
  %47 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %48 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %51 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %46, %57
  %59 = load %struct.smu7_power_state*, %struct.smu7_power_state** %9, align 8
  %60 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.smu7_power_state*, %struct.smu7_power_state** %9, align 8
  %63 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %58, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %29, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.smu7_power_state* @cast_phw_smu7_power_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
