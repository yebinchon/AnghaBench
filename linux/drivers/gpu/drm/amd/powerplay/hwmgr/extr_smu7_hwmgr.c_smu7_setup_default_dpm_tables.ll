; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_setup_default_dpm_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_setup_default_dpm_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PP_TABLE_V1 = common dso_local global i64 0, align 8
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_setup_default_dpm_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_setup_default_dpm_tables(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = call i32 @smu7_reset_dpm_tables(%struct.pp_hwmgr* %8)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PP_TABLE_V1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = call i32 @smu7_setup_dpm_tables_v1(%struct.pp_hwmgr* %16)
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PP_TABLE_V0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = call i32 @smu7_setup_dpm_tables_v0(%struct.pp_hwmgr* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %30 = call i32 @smu7_setup_default_pcie_table(%struct.pp_hwmgr* %29)
  %31 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %31, i32 0, i32 2
  %33 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %33, i32 0, i32 1
  %35 = call i32 @memcpy(i32* %32, i32* %34, i32 4)
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %28
  %41 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = call i32 @smu7_check_dpm_table_updated(%struct.pp_hwmgr* %47)
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = call i32 @smu7_setup_voltage_range_from_vbios(%struct.pp_hwmgr* %50)
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %53 = call i32 @smu7_odn_initial_default_setting(%struct.pp_hwmgr* %52)
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %28
  ret i32 0
}

declare dso_local i32 @smu7_reset_dpm_tables(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_setup_dpm_tables_v1(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_setup_dpm_tables_v0(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_setup_default_pcie_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @smu7_check_dpm_table_updated(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_setup_voltage_range_from_vbios(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_odn_initial_default_setting(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
