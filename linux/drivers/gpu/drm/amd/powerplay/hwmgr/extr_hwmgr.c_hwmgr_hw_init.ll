; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i64, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { {}*, {}* }
%struct.TYPE_13__ = type { {}*, {}* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"dpm not supported \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwmgr_hw_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %166

10:                                               ; preds = %1
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.pp_hwmgr*)**
  %21 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %20, align 8
  %22 = icmp ne i32 (%struct.pp_hwmgr*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.pp_hwmgr*)**
  %29 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %28, align 8
  %30 = icmp ne i32 (%struct.pp_hwmgr*)* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %23, %15, %10
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

35:                                               ; preds = %23
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.pp_hwmgr*)**
  %41 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %40, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = call i32 %41(%struct.pp_hwmgr* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %164

47:                                               ; preds = %35
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.amdgpu_device*
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.pp_hwmgr*)**
  %64 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %63, align 8
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = call i32 %64(%struct.pp_hwmgr* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %47
  br label %146

70:                                               ; preds = %47
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %79 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77, %70
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %86 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %89 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_10__* %87 to i8*
  %92 = bitcast %struct.TYPE_10__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  br label %93

93:                                               ; preds = %84, %77
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %95 = call i32 @psm_init_power_state_table(%struct.pp_hwmgr* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %128

99:                                               ; preds = %93
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %101 = call i32 @phm_setup_asic(%struct.pp_hwmgr* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %128

105:                                              ; preds = %99
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %107 = call i32 @phm_enable_dynamic_state_management(%struct.pp_hwmgr* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %128

111:                                              ; preds = %105
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %113 = call i32 @phm_start_thermal_controller(%struct.pp_hwmgr* %112)
  store i32 %113, i32* %4, align 4
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %115 = call i32 @psm_set_performance_states(%struct.pp_hwmgr* %114)
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %128

121:                                              ; preds = %111
  %122 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %123 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.amdgpu_device*
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  store i32 0, i32* %2, align 4
  br label %166

128:                                              ; preds = %120, %110, %104, %98
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 2
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = bitcast {}** %132 to i32 (%struct.pp_hwmgr*)**
  %134 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %133, align 8
  %135 = icmp ne i32 (%struct.pp_hwmgr*)* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %138 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %137, i32 0, i32 2
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = bitcast {}** %140 to i32 (%struct.pp_hwmgr*)**
  %142 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %141, align 8
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %144 = call i32 %142(%struct.pp_hwmgr* %143)
  br label %145

145:                                              ; preds = %136, %128
  br label %146

146:                                              ; preds = %145, %69
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %148 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %147, i32 0, i32 1
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = bitcast {}** %150 to i32 (%struct.pp_hwmgr*)**
  %152 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %151, align 8
  %153 = icmp ne i32 (%struct.pp_hwmgr*)* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %156 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = bitcast {}** %158 to i32 (%struct.pp_hwmgr*)**
  %160 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %159, align 8
  %161 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %162 = call i32 %160(%struct.pp_hwmgr* %161)
  br label %163

163:                                              ; preds = %154, %146
  br label %164

164:                                              ; preds = %163, %46
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %121, %31, %9
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @pr_info(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @psm_init_power_state_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_setup_asic(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_enable_dynamic_state_management(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_start_thermal_controller(%struct.pp_hwmgr*) #1

declare dso_local i32 @psm_set_performance_states(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
