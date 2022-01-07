; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }
%struct.dc_state = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dc_clocks }
%struct.dc_clocks = type { i64, i64, i64, i64, i64 }
%struct.clk_mgr_internal = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn_update_clocks(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_mgr_internal*, align 8
  %8 = alloca %struct.dc_clocks*, align 8
  %9 = alloca %struct.dc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dmcu*, align 8
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %17 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %16)
  store %struct.clk_mgr_internal* %17, %struct.clk_mgr_internal** %7, align 8
  %18 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %19 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store %struct.dc_clocks* %22, %struct.dc_clocks** %8, align 8
  %23 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %24 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.dc*, %struct.dc** %26, align 8
  store %struct.dc* %27, %struct.dc** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %29 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.dc*, %struct.dc** %31, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.dmcu*, %struct.dmcu** %35, align 8
  store %struct.dmcu* %36, %struct.dmcu** %15, align 8
  %37 = load %struct.dc*, %struct.dc** %9, align 8
  %38 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %39 = call i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc* %37, %struct.dc_state* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @rn_vbios_smu_set_display_count(%struct.clk_mgr_internal* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %54 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %57 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @should_set_clock(i32 %52, i64 %55, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %51
  %63 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %64 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %67 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %70 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %71 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @rn_vbios_smu_set_phyclk(%struct.clk_mgr_internal* %69, i64 %73)
  br label %75

75:                                               ; preds = %62, %51
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %78 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %81 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @should_set_clock(i32 %76, i64 %79, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %75
  %87 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %88 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %91 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  %93 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %94 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %95 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @rn_vbios_smu_set_hard_min_dcfclk(%struct.clk_mgr_internal* %93, i64 %97)
  br label %99

99:                                               ; preds = %86, %75
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %102 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %105 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @should_set_clock(i32 %100, i64 %103, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %99
  %111 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %112 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %115 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  store i64 %113, i64* %116, align 8
  %117 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %118 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %119 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @rn_vbios_smu_set_min_deep_sleep_dcfclk(%struct.clk_mgr_internal* %117, i64 %121)
  br label %123

123:                                              ; preds = %110, %99
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %126 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %129 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @should_set_clock(i32 %124, i64 %127, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %123
  %136 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %137 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %142 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 1, i32* %14, align 4
  br label %146

146:                                              ; preds = %145, %135
  %147 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %148 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %151 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  store i64 %149, i64* %152, align 8
  store i32 1, i32* %11, align 4
  br label %153

153:                                              ; preds = %146, %123
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %156 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %159 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @should_set_clock(i32 %154, i64 %157, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %153
  %165 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %166 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %169 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 4
  store i64 %167, i64* %170, align 8
  %171 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %172 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %173 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @rn_vbios_smu_set_dispclk(%struct.clk_mgr_internal* %171, i64 %175)
  store i32 1, i32* %12, align 4
  br label %177

177:                                              ; preds = %164, %153
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %182 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %183 = call i32 @dcn20_update_clocks_update_dpp_dto(%struct.clk_mgr_internal* %181, %struct.dc_state* %182)
  %184 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %185 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %186 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @rn_vbios_smu_set_dppclk(%struct.clk_mgr_internal* %184, i64 %188)
  br label %211

190:                                              ; preds = %177
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193, %190
  %197 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %198 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %199 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @rn_vbios_smu_set_dppclk(%struct.clk_mgr_internal* %197, i64 %201)
  br label %203

203:                                              ; preds = %196, %193
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %208 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %209 = call i32 @dcn20_update_clocks_update_dpp_dto(%struct.clk_mgr_internal* %207, %struct.dc_state* %208)
  br label %210

210:                                              ; preds = %206, %203
  br label %211

211:                                              ; preds = %210, %180
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %241

214:                                              ; preds = %211
  %215 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  %216 = icmp ne %struct.dmcu* %215, null
  br i1 %216, label %217, label %241

217:                                              ; preds = %214
  %218 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  %219 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %218, i32 0, i32 0
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %221, align 8
  %223 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  %224 = call i64 %222(%struct.dmcu* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %217
  %227 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  %228 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %227, i32 0, i32 0
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %230, align 8
  %232 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  %233 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %234 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = sdiv i64 %236, 1000
  %238 = sdiv i64 %237, 7
  %239 = trunc i64 %238 to i32
  %240 = call i32 %231(%struct.dmcu* %232, i32 %239)
  br label %241

241:                                              ; preds = %226, %217, %214, %211
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc*, %struct.dc_state*) #1

declare dso_local i32 @rn_vbios_smu_set_display_count(%struct.clk_mgr_internal*, i32) #1

declare dso_local i64 @should_set_clock(i32, i64, i64) #1

declare dso_local i32 @rn_vbios_smu_set_phyclk(%struct.clk_mgr_internal*, i64) #1

declare dso_local i32 @rn_vbios_smu_set_hard_min_dcfclk(%struct.clk_mgr_internal*, i64) #1

declare dso_local i32 @rn_vbios_smu_set_min_deep_sleep_dcfclk(%struct.clk_mgr_internal*, i64) #1

declare dso_local i32 @rn_vbios_smu_set_dispclk(%struct.clk_mgr_internal*, i64) #1

declare dso_local i32 @dcn20_update_clocks_update_dpp_dto(%struct.clk_mgr_internal*, %struct.dc_state*) #1

declare dso_local i32 @rn_vbios_smu_set_dppclk(%struct.clk_mgr_internal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
