; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_find_dpm_states_clocks_in_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_find_dpm_states_clocks_in_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.phm_set_power_state_input = type { i32 }
%struct.smu7_power_state = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.smu7_hwmgr = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.PP_Clocks = type { i64, i32 }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@SMU7_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@DPMTABLE_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu7_find_dpm_states_clocks_in_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_find_dpm_states_clocks_in_dpm_table(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.phm_set_power_state_input*, align 8
  %6 = alloca %struct.smu7_power_state*, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca %struct.smu7_single_dpm_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.smu7_single_dpm_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.PP_Clocks, align 8
  %13 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %15, %struct.phm_set_power_state_input** %5, align 8
  %16 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %5, align 8
  %17 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32 %18)
  store %struct.smu7_power_state* %19, %struct.smu7_power_state** %6, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %23, %struct.smu7_hwmgr** %7, align 8
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.smu7_single_dpm_table* %26, %struct.smu7_single_dpm_table** %8, align 8
  %27 = load %struct.smu7_power_state*, %struct.smu7_power_state** %6, align 8
  %28 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.smu7_power_state*, %struct.smu7_power_state** %6, align 8
  %31 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.smu7_single_dpm_table* %40, %struct.smu7_single_dpm_table** %10, align 8
  %41 = load %struct.smu7_power_state*, %struct.smu7_power_state** %6, align 8
  %42 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.smu7_power_state*, %struct.smu7_power_state** %6, align 8
  %45 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = bitcast %struct.PP_Clocks* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 16, i1 false)
  store i64 0, i64* %13, align 8
  br label %53

53:                                               ; preds = %71, %2
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %56 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %62 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %53

74:                                               ; preds = %69, %53
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %77 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %83 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %81, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %80
  %92 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %93 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %94 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %99 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i64 %97, i64* %104, align 8
  br label %105

105:                                              ; preds = %91, %80
  br label %133

106:                                              ; preds = %74
  %107 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %108 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %12, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %12, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SMU7_MINIMUM_ENGINE_CLOCK, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %121 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SMU7_MINIMUM_ENGINE_CLOCK, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %119, %114
  %127 = load i32, i32* @DPMTABLE_UPDATE_SCLK, align 4
  %128 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %129 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %119, %106
  br label %133

133:                                              ; preds = %132, %105
  store i64 0, i64* %13, align 8
  br label %134

134:                                              ; preds = %152, %133
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %137 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %143 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %141, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %155

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %13, align 8
  br label %134

155:                                              ; preds = %150, %134
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %158 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp uge i64 %156, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %155
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %164 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = sub i64 %166, 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ugt i64 %162, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %161
  %173 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %174 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %175 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %180 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %179, i32 0, i32 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i64 %178, i64* %185, align 8
  br label %186

186:                                              ; preds = %172, %161
  br label %187

187:                                              ; preds = %186, %155
  %188 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %189 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %193 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %191, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %187
  %199 = load i32, i32* @DPMTABLE_UPDATE_MCLK, align 4
  %200 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %201 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %187
  ret i32 0
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
