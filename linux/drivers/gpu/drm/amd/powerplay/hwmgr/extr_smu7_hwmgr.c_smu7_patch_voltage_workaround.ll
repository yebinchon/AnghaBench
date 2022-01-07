; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_voltage_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_voltage_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.amdgpu_device*, i64 }
%struct.amdgpu_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_patch_voltage_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_voltage_workaround(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v1_information*, align 8
  %5 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %15, %struct.phm_ppt_v1_information** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %11, align 8
  %19 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %20 = icmp ne %struct.phm_ppt_v1_information* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %23 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %22, i32 0, i32 1
  %24 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %23, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %24, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %25 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %25, i32 0, i32 0
  %27 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %26, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %27, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

29:                                               ; preds = %21
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_POLARIS10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %136

50:                                               ; preds = %29
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 199
  br i1 %52, label %53, label %136

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 2871
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 4098
  br i1 %58, label %71, label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 1192
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 4163
  br i1 %64, label %71, label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 38016
  br i1 %67, label %68, label %136

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 5762
  br i1 %70, label %71, label %136

71:                                               ; preds = %68, %62, %56
  %72 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %73 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %76 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %79 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 1000
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %137

91:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %95 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %92
  %99 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %100 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 65281
  br i1 %107, label %108, label %131

108:                                              ; preds = %98
  %109 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %110 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 1000
  br i1 %117, label %118, label %131

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %122 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %5, align 8
  %125 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %120, i64* %130, align 8
  store i32 0, i32* %2, align 4
  br label %137

131:                                              ; preds = %108, %98
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %92

135:                                              ; preds = %92
  br label %136

136:                                              ; preds = %135, %68, %65, %50, %29
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %118, %90, %28
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
