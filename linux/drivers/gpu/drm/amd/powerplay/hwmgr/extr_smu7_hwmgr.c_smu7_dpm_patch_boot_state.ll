; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_dpm_patch_boot_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_dpm_patch_boot_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.pp_hw_power_state = type { i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.smu7_power_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*)* @smu7_dpm_patch_boot_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_dpm_patch_boot_state(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_hw_power_state*, align 8
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.smu7_power_state*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %5, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %16, %struct.smu7_hwmgr** %6, align 8
  %17 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %5, align 8
  %18 = bitcast %struct.pp_hw_power_state* %17 to %struct.smu7_power_state*
  store %struct.smu7_power_state* %18, %struct.smu7_power_state** %7, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @FirmwareInfo, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @smu_atom_get_data_table(i32 %24, i32 %25, i64* %9, i32* %10, i32* %11)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %37 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le16_to_cpu(i32 %48)
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i8* %49, i8** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %58 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  store i8* %56, i8** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %65 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i8* %63, i8** %66, align 8
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %68 = call i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr* %67)
  %69 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %70 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %73 = call i64 @smu7_get_current_pcie_lane_number(%struct.pp_hwmgr* %72)
  %74 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %75 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %78 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.smu7_power_state*, %struct.smu7_power_state** %7, align 8
  %82 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* %80, i8** %85, align 8
  %86 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %87 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.smu7_power_state*, %struct.smu7_power_state** %7, align 8
  %91 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i8* %89, i8** %94, align 8
  %95 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %96 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.smu7_power_state*, %struct.smu7_power_state** %7, align 8
  %100 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 8
  %104 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %105 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.smu7_power_state*, %struct.smu7_power_state** %7, align 8
  %109 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %31, %30
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i64*, i32*, i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr*) #1

declare dso_local i64 @smu7_get_current_pcie_lane_number(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
