; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_find_dpm_states_clocks_in_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_find_dpm_states_clocks_in_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_10__*, %struct.vega10_hwmgr* }
%struct.TYPE_10__ = type { i64 }
%struct.vega10_hwmgr = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.phm_set_power_state_input = type { i32 }
%struct.vega10_power_state = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @vega10_find_dpm_states_clocks_in_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_find_dpm_states_clocks_in_dpm_table(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vega10_hwmgr*, align 8
  %6 = alloca %struct.phm_set_power_state_input*, align 8
  %7 = alloca %struct.vega10_power_state*, align 8
  %8 = alloca %struct.vega10_single_dpm_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vega10_single_dpm_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  store %struct.vega10_hwmgr* %15, %struct.vega10_hwmgr** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %17, %struct.phm_set_power_state_input** %6, align 8
  %18 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %6, align 8
  %19 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vega10_power_state* @cast_const_phw_vega10_power_state(i32 %20)
  store %struct.vega10_power_state* %21, %struct.vega10_power_state** %7, align 8
  %22 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %23 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %24, %struct.vega10_single_dpm_table** %8, align 8
  %25 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %26 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %29 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %37 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %38, %struct.vega10_single_dpm_table** %10, align 8
  %39 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %40 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %43 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %68, %2
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %53 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %59 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %57, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %50

71:                                               ; preds = %66, %50
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %74 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp uge i64 %72, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %80 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %78, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %77
  %89 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %90 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %91 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %96 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %94, i64* %101, align 8
  br label %102

102:                                              ; preds = %88, %77
  br label %103

103:                                              ; preds = %102, %71
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %107 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %113 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %111, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %125

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %12, align 8
  br label %104

125:                                              ; preds = %120, %104
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %128 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp uge i64 %126, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %125
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %134 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %132, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %131
  %143 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %144 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %145 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %150 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = sub i64 %152, 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i64 %148, i64* %155, align 8
  br label %156

156:                                              ; preds = %142, %131
  br label %157

157:                                              ; preds = %156, %125
  %158 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %159 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %163 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %161, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %157
  %169 = load i32, i32* @DPMTABLE_UPDATE_MCLK, align 4
  %170 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %171 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %157
  ret i32 0
}

declare dso_local %struct.vega10_power_state* @cast_const_phw_vega10_power_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
