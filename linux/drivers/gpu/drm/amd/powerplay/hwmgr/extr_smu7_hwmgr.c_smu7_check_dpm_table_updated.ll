; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_dpm_table_updated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_dpm_table_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { i32, %struct.TYPE_20__, %struct.smu7_odn_dpm_table }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.smu7_odn_dpm_table = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @smu7_check_dpm_table_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu7_check_dpm_table_updated(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.smu7_odn_dpm_table*, align 8
  %5 = alloca %struct.phm_ppt_v1_information*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %3, align 8
  %13 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %13, i32 0, i32 2
  store %struct.smu7_odn_dpm_table* %14, %struct.smu7_odn_dpm_table** %4, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %18, %struct.phm_ppt_v1_information** %5, align 8
  %19 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %20 = icmp eq %struct.phm_ppt_v1_information* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %201

22:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %23
  %32 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %4, align 8
  %33 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %41 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %39, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %52 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %60

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %23

60:                                               ; preds = %50, %23
  store i64 0, i64* %6, align 8
  br label %61

61:                                               ; preds = %95, %60
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %61
  %70 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %4, align 8
  %71 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %79 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %77, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %69
  %89 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %90 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %98

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %61

98:                                               ; preds = %88, %61
  %99 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %100 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %99, i32 0, i32 1
  %101 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %100, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %101, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %102 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %4, align 8
  %103 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %102, i32 0, i32 1
  %104 = bitcast i32* %103 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %104, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  store i64 0, i64* %6, align 8
  br label %105

105:                                              ; preds = %136, %98
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %108 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %105
  %112 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %113 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %120 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %118, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %111
  %128 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %129 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %132 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %201

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %6, align 8
  br label %105

139:                                              ; preds = %105
  %140 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %141 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %140, i32 0, i32 0
  %142 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %141, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %142, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %143 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %4, align 8
  %144 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %143, i32 0, i32 0
  %145 = bitcast i32* %144 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %145, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  store i64 0, i64* %6, align 8
  br label %146

146:                                              ; preds = %177, %139
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %149 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %146
  %153 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %154 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %161 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %159, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %152
  %169 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %170 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %173 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %201

176:                                              ; preds = %152
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %6, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %6, align 8
  br label %146

180:                                              ; preds = %146
  %181 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %182 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %180
  %188 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %191 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %195 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %198 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %21, %127, %168, %187, %180
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
