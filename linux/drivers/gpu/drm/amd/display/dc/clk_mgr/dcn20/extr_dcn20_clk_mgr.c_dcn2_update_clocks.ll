; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_36__, %struct.TYPE_30__* }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_30__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_34__, %struct.TYPE_35__, %struct.TYPE_33__*, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.dmcu* }
%struct.TYPE_32__ = type { %struct.pp_smu_funcs_nv }
%struct.pp_smu_funcs_nv = type { i32, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32, i32)*, i32 (i32*, i32)* }
%struct.dmcu = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }
%struct.TYPE_31__ = type { i64 }
%struct.dc_state = type { %struct.TYPE_24__, %struct.TYPE_29__ }
%struct.TYPE_24__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { %struct.TYPE_44__, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__, %struct.TYPE_42__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.dc_clocks }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.clk_mgr_internal = type { %struct.TYPE_37__*, %struct.TYPE_41__ }
%struct.TYPE_37__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_37__*, i32, i32, i32)* }
%struct.TYPE_41__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }

@PP_SMU_NV_PHYCLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn2_update_clocks(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_mgr_internal*, align 8
  %8 = alloca %struct.dc_clocks*, align 8
  %9 = alloca %struct.dc*, align 8
  %10 = alloca %struct.pp_smu_funcs_nv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dmcu*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %22 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %21)
  store %struct.clk_mgr_internal* %22, %struct.clk_mgr_internal** %7, align 8
  %23 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %24 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  store %struct.dc_clocks* %27, %struct.dc_clocks** %8, align 8
  %28 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %29 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load %struct.dc*, %struct.dc** %31, align 8
  store %struct.dc* %32, %struct.dc** %9, align 8
  store %struct.pp_smu_funcs_nv* null, %struct.pp_smu_funcs_nv** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %34 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = load %struct.dc*, %struct.dc** %36, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 1
  %41 = load %struct.dmcu*, %struct.dmcu** %40, align 8
  store %struct.dmcu* %41, %struct.dmcu** %14, align 8
  store i32 0, i32* %15, align 4
  %42 = load %struct.dc*, %struct.dc** %9, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %596

48:                                               ; preds = %3
  %49 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %50 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.dc*, %struct.dc** %9, align 8
  %56 = getelementptr inbounds %struct.dc, %struct.dc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %48
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load %struct.dc*, %struct.dc** %9, align 8
  %64 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %65 = call i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc* %63, %struct.dc_state* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.dc*, %struct.dc** %9, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %69, align 8
  %71 = icmp ne %struct.TYPE_32__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.dc*, %struct.dc** %9, align 8
  %74 = getelementptr inbounds %struct.dc, %struct.dc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  store %struct.pp_smu_funcs_nv* %78, %struct.pp_smu_funcs_nv** %10, align 8
  br label %79

79:                                               ; preds = %72, %62
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %89 = icmp ne %struct.pp_smu_funcs_nv* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %92 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %91, i32 0, i32 7
  %93 = load i32 (i32*, i32)*, i32 (i32*, i32)** %92, align 8
  %94 = icmp ne i32 (i32*, i32)* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %97 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %96, i32 0, i32 7
  %98 = load i32 (i32*, i32)*, i32 (i32*, i32)** %97, align 8
  %99 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %100 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 %98(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %90, %87
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %107 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %110 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @should_set_clock(i32 %105, i32 %108, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %104
  %116 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %117 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %120 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %123 = icmp ne %struct.pp_smu_funcs_nv* %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %115
  %125 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %126 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %125, i32 0, i32 6
  %127 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %126, align 8
  %128 = icmp ne i32 (i32*, i32, i32)* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %131 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %130, i32 0, i32 6
  %132 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %131, align 8
  %133 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %134 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %133, i32 0, i32 0
  %135 = load i32, i32* @PP_SMU_NV_PHYCLK, align 4
  %136 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %137 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 1000
  %141 = call i32 %132(i32* %134, i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %129, %124, %115
  br label %143

143:                                              ; preds = %142, %104
  %144 = load %struct.dc*, %struct.dc** %9, align 8
  %145 = getelementptr inbounds %struct.dc, %struct.dc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %143
  %150 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %151 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dc*, %struct.dc** %9, align 8
  %154 = getelementptr inbounds %struct.dc, %struct.dc* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 1000
  %158 = icmp sgt i32 %152, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %161 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  br label %169

163:                                              ; preds = %149
  %164 = load %struct.dc*, %struct.dc** %9, align 8
  %165 = getelementptr inbounds %struct.dc, %struct.dc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 1000
  br label %169

169:                                              ; preds = %163, %159
  %170 = phi i32 [ %162, %159 ], [ %168, %163 ]
  %171 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %172 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %143
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %176 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %179 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @should_set_clock(i32 %174, i32 %177, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %173
  %185 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %186 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %189 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 8
  %191 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %192 = icmp ne %struct.pp_smu_funcs_nv* %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %184
  %194 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %195 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %194, i32 0, i32 5
  %196 = load i32 (i32*, i32)*, i32 (i32*, i32)** %195, align 8
  %197 = icmp ne i32 (i32*, i32)* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %200 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %199, i32 0, i32 5
  %201 = load i32 (i32*, i32)*, i32 (i32*, i32)** %200, align 8
  %202 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %203 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %202, i32 0, i32 0
  %204 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %205 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sdiv i32 %207, 1000
  %209 = call i32 %201(i32* %203, i32 %208)
  br label %210

210:                                              ; preds = %198, %193, %184
  br label %211

211:                                              ; preds = %210, %173
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %214 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %217 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @should_set_clock(i32 %212, i32 %215, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %249

222:                                              ; preds = %211
  %223 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %224 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %227 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 4
  %229 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %230 = icmp ne %struct.pp_smu_funcs_nv* %229, null
  br i1 %230, label %231, label %248

231:                                              ; preds = %222
  %232 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %233 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %232, i32 0, i32 4
  %234 = load i32 (i32*, i32)*, i32 (i32*, i32)** %233, align 8
  %235 = icmp ne i32 (i32*, i32)* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %231
  %237 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %238 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %237, i32 0, i32 4
  %239 = load i32 (i32*, i32)*, i32 (i32*, i32)** %238, align 8
  %240 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %241 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %240, i32 0, i32 0
  %242 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %243 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %245, 1000
  %247 = call i32 %239(i32* %241, i32 %246)
  br label %248

248:                                              ; preds = %236, %231, %222
  br label %249

249:                                              ; preds = %248, %211
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %252 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %255 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @should_set_clock(i32 %250, i32 %253, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %249
  %261 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %262 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %265 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 4
  store i32 %263, i32* %266, align 8
  %267 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %268 = icmp ne %struct.pp_smu_funcs_nv* %267, null
  br i1 %268, label %269, label %286

269:                                              ; preds = %260
  %270 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %271 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %270, i32 0, i32 3
  %272 = load i32 (i32*, i32)*, i32 (i32*, i32)** %271, align 8
  %273 = icmp ne i32 (i32*, i32)* %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %269
  %275 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %276 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %275, i32 0, i32 3
  %277 = load i32 (i32*, i32)*, i32 (i32*, i32)** %276, align 8
  %278 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %279 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %278, i32 0, i32 0
  %280 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %281 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = sdiv i32 %283, 1000
  %285 = call i32 %277(i32* %279, i32 %284)
  br label %286

286:                                              ; preds = %274, %269, %260
  br label %287

287:                                              ; preds = %286, %249
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %290 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %293 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @should_update_pstate_support(i32 %288, i32 %291, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %331

298:                                              ; preds = %287
  %299 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %300 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %304 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 8
  store i32 %302, i32* %305, align 4
  %306 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %307 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %310 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 7
  store i32 %308, i32* %311, align 8
  %312 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %313 = icmp ne %struct.pp_smu_funcs_nv* %312, null
  br i1 %313, label %314, label %330

314:                                              ; preds = %298
  %315 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %316 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %315, i32 0, i32 2
  %317 = load i32 (i32*, i32)*, i32 (i32*, i32)** %316, align 8
  %318 = icmp ne i32 (i32*, i32)* %317, null
  br i1 %318, label %319, label %330

319:                                              ; preds = %314
  %320 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %321 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %320, i32 0, i32 2
  %322 = load i32 (i32*, i32)*, i32 (i32*, i32)** %321, align 8
  %323 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %324 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %323, i32 0, i32 0
  %325 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %326 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 8
  %329 = call i32 %322(i32* %324, i32 %328)
  br label %330

330:                                              ; preds = %319, %314, %298
  br label %331

331:                                              ; preds = %330, %287
  %332 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %333 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %337 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 8
  store i32 %335, i32* %338, align 4
  %339 = load i32, i32* %6, align 4
  %340 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %341 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %344 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = call i64 @should_set_clock(i32 %339, i32 %342, i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %376

349:                                              ; preds = %331
  %350 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %351 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %354 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 5
  store i32 %352, i32* %355, align 4
  %356 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %357 = icmp ne %struct.pp_smu_funcs_nv* %356, null
  br i1 %357, label %358, label %375

358:                                              ; preds = %349
  %359 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %360 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %359, i32 0, i32 1
  %361 = load i32 (i32*, i32)*, i32 (i32*, i32)** %360, align 8
  %362 = icmp ne i32 (i32*, i32)* %361, null
  br i1 %362, label %363, label %375

363:                                              ; preds = %358
  %364 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %365 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %364, i32 0, i32 1
  %366 = load i32 (i32*, i32)*, i32 (i32*, i32)** %365, align 8
  %367 = load %struct.pp_smu_funcs_nv*, %struct.pp_smu_funcs_nv** %10, align 8
  %368 = getelementptr inbounds %struct.pp_smu_funcs_nv, %struct.pp_smu_funcs_nv* %367, i32 0, i32 0
  %369 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %370 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = sdiv i32 %372, 1000
  %374 = call i32 %366(i32* %368, i32 %373)
  br label %375

375:                                              ; preds = %363, %358, %349
  br label %376

376:                                              ; preds = %375, %331
  %377 = load %struct.dc*, %struct.dc** %9, align 8
  %378 = getelementptr inbounds %struct.dc, %struct.dc* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %567

382:                                              ; preds = %376
  %383 = load i32, i32* %6, align 4
  %384 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %385 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %388 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i64 @should_set_clock(i32 %383, i32 %386, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %382
  %394 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %395 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %396 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @request_voltage_and_program_disp_clk(%struct.clk_mgr* %394, i32 %397)
  br label %399

399:                                              ; preds = %393, %382
  %400 = load i32, i32* %6, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %484, label %402

402:                                              ; preds = %399
  %403 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %404 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %403, i32 0, i32 6
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %407 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %407, i32 0, i32 6
  %409 = load i64, i64* %408, align 8
  %410 = icmp sgt i64 %405, %409
  br i1 %410, label %411, label %417

411:                                              ; preds = %402
  %412 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %413 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %414 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %413, i32 0, i32 6
  %415 = load i64, i64* %414, align 8
  %416 = call i32 @request_voltage_and_program_global_dpp_clk(%struct.clk_mgr* %412, i64 %415)
  br label %417

417:                                              ; preds = %411, %402
  store i32 0, i32* %16, align 4
  br label %418

418:                                              ; preds = %480, %417
  %419 = load i32, i32* %16, align 4
  %420 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %421 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_40__*, %struct.TYPE_40__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_39__*, %struct.TYPE_39__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_38__*, %struct.TYPE_38__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = icmp slt i32 %419, %429
  br i1 %430, label %431, label %483

431:                                              ; preds = %418
  %432 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %433 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_45__*, %struct.TYPE_45__** %434, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %431
  br label %480

443:                                              ; preds = %431
  %444 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %445 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_45__*, %struct.TYPE_45__** %446, align 8
  %448 = load i32, i32* %16, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_42__*, %struct.TYPE_42__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %17, align 4
  %456 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %457 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_45__*, %struct.TYPE_45__** %458, align 8
  %460 = load i32, i32* %16, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  store i32 %466, i32* %18, align 4
  %467 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %468 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %467, i32 0, i32 0
  %469 = load %struct.TYPE_37__*, %struct.TYPE_37__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %471, i32 0, i32 0
  %473 = load i32 (%struct.TYPE_37__*, i32, i32, i32)*, i32 (%struct.TYPE_37__*, i32, i32, i32)** %472, align 8
  %474 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %475 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %474, i32 0, i32 0
  %476 = load %struct.TYPE_37__*, %struct.TYPE_37__** %475, align 8
  %477 = load i32, i32* %17, align 4
  %478 = load i32, i32* %18, align 4
  %479 = call i32 %473(%struct.TYPE_37__* %476, i32 %477, i32 %478, i32 1)
  br label %480

480:                                              ; preds = %443, %442
  %481 = load i32, i32* %16, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %16, align 4
  br label %418

483:                                              ; preds = %418
  br label %566

484:                                              ; preds = %399
  %485 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %486 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %485, i32 0, i32 6
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %489 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %489, i32 0, i32 6
  %491 = load i64, i64* %490, align 8
  %492 = icmp slt i64 %487, %491
  br i1 %492, label %493, label %499

493:                                              ; preds = %484
  %494 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %495 = load %struct.dc_clocks*, %struct.dc_clocks** %8, align 8
  %496 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %495, i32 0, i32 6
  %497 = load i64, i64* %496, align 8
  %498 = call i32 @request_voltage_and_program_global_dpp_clk(%struct.clk_mgr* %494, i64 %497)
  br label %499

499:                                              ; preds = %493, %484
  store i32 0, i32* %16, align 4
  br label %500

500:                                              ; preds = %562, %499
  %501 = load i32, i32* %16, align 4
  %502 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %503 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %503, i32 0, i32 0
  %505 = load %struct.TYPE_40__*, %struct.TYPE_40__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %505, i32 0, i32 0
  %507 = load %struct.TYPE_39__*, %struct.TYPE_39__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_38__*, %struct.TYPE_38__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = icmp slt i32 %501, %511
  br i1 %512, label %513, label %565

513:                                              ; preds = %500
  %514 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %515 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %515, i32 0, i32 0
  %517 = load %struct.TYPE_45__*, %struct.TYPE_45__** %516, align 8
  %518 = load i32, i32* %16, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %513
  br label %562

525:                                              ; preds = %513
  %526 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %527 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_45__*, %struct.TYPE_45__** %528, align 8
  %530 = load i32, i32* %16, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %533, i32 0, i32 1
  %535 = load %struct.TYPE_42__*, %struct.TYPE_42__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  store i32 %537, i32* %19, align 4
  %538 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %539 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %539, i32 0, i32 0
  %541 = load %struct.TYPE_45__*, %struct.TYPE_45__** %540, align 8
  %542 = load i32, i32* %16, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  store i32 %548, i32* %20, align 4
  %549 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %550 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %549, i32 0, i32 0
  %551 = load %struct.TYPE_37__*, %struct.TYPE_37__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_25__*, %struct.TYPE_25__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 0
  %555 = load i32 (%struct.TYPE_37__*, i32, i32, i32)*, i32 (%struct.TYPE_37__*, i32, i32, i32)** %554, align 8
  %556 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %557 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %556, i32 0, i32 0
  %558 = load %struct.TYPE_37__*, %struct.TYPE_37__** %557, align 8
  %559 = load i32, i32* %19, align 4
  %560 = load i32, i32* %20, align 4
  %561 = call i32 %555(%struct.TYPE_37__* %558, i32 %559, i32 %560, i32 0)
  br label %562

562:                                              ; preds = %525, %524
  %563 = load i32, i32* %16, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %16, align 4
  br label %500

565:                                              ; preds = %500
  br label %566

566:                                              ; preds = %565, %483
  br label %567

567:                                              ; preds = %566, %376
  %568 = load i32, i32* %12, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %596

570:                                              ; preds = %567
  %571 = load %struct.dmcu*, %struct.dmcu** %14, align 8
  %572 = icmp ne %struct.dmcu* %571, null
  br i1 %572, label %573, label %596

573:                                              ; preds = %570
  %574 = load %struct.dmcu*, %struct.dmcu** %14, align 8
  %575 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %574, i32 0, i32 0
  %576 = load %struct.TYPE_26__*, %struct.TYPE_26__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %576, i32 0, i32 1
  %578 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %577, align 8
  %579 = load %struct.dmcu*, %struct.dmcu** %14, align 8
  %580 = call i64 %578(%struct.dmcu* %579)
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %596

582:                                              ; preds = %573
  %583 = load %struct.dmcu*, %struct.dmcu** %14, align 8
  %584 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %583, i32 0, i32 0
  %585 = load %struct.TYPE_26__*, %struct.TYPE_26__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %585, i32 0, i32 0
  %587 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %586, align 8
  %588 = load %struct.dmcu*, %struct.dmcu** %14, align 8
  %589 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %590 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = sdiv i32 %592, 1000
  %594 = sdiv i32 %593, 7
  %595 = call i32 %587(%struct.dmcu* %588, i32 %594)
  br label %596

596:                                              ; preds = %47, %582, %573, %570, %567
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc*, %struct.dc_state*) #1

declare dso_local i64 @should_set_clock(i32, i32, i32) #1

declare dso_local i64 @should_update_pstate_support(i32, i32, i32) #1

declare dso_local i32 @request_voltage_and_program_disp_clk(%struct.clk_mgr*, i32) #1

declare dso_local i32 @request_voltage_and_program_global_dpp_clk(%struct.clk_mgr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
