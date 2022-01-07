; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_11__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.dc* }
%struct.dc = type { %struct.dc_debug_options }
%struct.dc_debug_options = type { i64 }
%struct.dc_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.dc_clocks }
%struct.dc_clocks = type { i64, i64, i64, i32, i32 }
%struct.clk_mgr_internal = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.pp_smu_funcs_rv }
%struct.pp_smu_funcs_rv = type { i32, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr*, %struct.dc_state*, i32)* @rv1_update_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv1_update_clocks(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_mgr_internal*, align 8
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.dc_debug_options*, align 8
  %10 = alloca %struct.dc_clocks*, align 8
  %11 = alloca %struct.pp_smu_funcs_rv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %17 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %16)
  store %struct.clk_mgr_internal* %17, %struct.clk_mgr_internal** %7, align 8
  %18 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %19 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.dc*, %struct.dc** %21, align 8
  store %struct.dc* %22, %struct.dc** %8, align 8
  %23 = load %struct.dc*, %struct.dc** %8, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 0
  store %struct.dc_debug_options* %24, %struct.dc_debug_options** %9, align 8
  %25 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %26 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.dc_clocks* %29, %struct.dc_clocks** %10, align 8
  store %struct.pp_smu_funcs_rv* null, %struct.pp_smu_funcs_rv** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %31 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = call i32 @ASSERT(%struct.TYPE_12__* %32)
  %34 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %35 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store %struct.pp_smu_funcs_rv* %37, %struct.pp_smu_funcs_rv** %11, align 8
  %38 = load %struct.dc*, %struct.dc** %8, align 8
  %39 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %40 = call i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc* %38, %struct.dc_state* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %50 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %49, i32 0, i32 4
  %51 = load i32 (i32*, i32)*, i32 (i32*, i32)** %50, align 8
  %52 = icmp ne i32 (i32*, i32)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %55 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %54, i32 0, i32 4
  %56 = load i32 (i32*, i32)*, i32 (i32*, i32)** %55, align 8
  %57 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %58 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %57, i32 0, i32 0
  %59 = load i32, i32* %14, align 4
  %60 = call i32 %56(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %64 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %67 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %65, %69
  br i1 %70, label %98, label %71

71:                                               ; preds = %62
  %72 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %73 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %76 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %71
  %81 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %82 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %85 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %83, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %80
  %90 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %91 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %94 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %80, %71, %62
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %89
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %102 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %106 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i64 @should_set_clock(i32 %100, i32 %104, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %114 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %117 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %112, %99
  %120 = load %struct.dc_debug_options*, %struct.dc_debug_options** %9, align 8
  %121 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.dc_debug_options*, %struct.dc_debug_options** %9, align 8
  %126 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %129 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %133 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %137 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i64 @should_set_clock(i32 %131, i32 %135, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %145 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %148 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  store i64 %146, i64* %149, align 8
  store i32 1, i32* %13, align 4
  br label %150

150:                                              ; preds = %143, %130
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %153 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %156 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @should_set_clock(i32 %151, i32 %154, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %163 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %166 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 8
  store i32 1, i32* %13, align 4
  br label %168

168:                                              ; preds = %161, %150
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %171 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %174 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @should_set_clock(i32 %169, i32 %172, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %168
  %180 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %181 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %184 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  store i32 %182, i32* %185, align 4
  store i32 1, i32* %13, align 4
  br label %186

186:                                              ; preds = %179, %168
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %238

189:                                              ; preds = %186
  %190 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %191 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %190, i32 0, i32 3
  %192 = load i32 (i32*, i32)*, i32 (i32*, i32)** %191, align 8
  %193 = icmp ne i32 (i32*, i32)* %192, null
  br i1 %193, label %194, label %237

194:                                              ; preds = %189
  %195 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %196 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %195, i32 0, i32 2
  %197 = load i32 (i32*, i32)*, i32 (i32*, i32)** %196, align 8
  %198 = icmp ne i32 (i32*, i32)* %197, null
  br i1 %198, label %199, label %237

199:                                              ; preds = %194
  %200 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %201 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %200, i32 0, i32 1
  %202 = load i32 (i32*, i32)*, i32 (i32*, i32)** %201, align 8
  %203 = icmp ne i32 (i32*, i32)* %202, null
  br i1 %203, label %204, label %237

204:                                              ; preds = %199
  %205 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %206 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %205, i32 0, i32 3
  %207 = load i32 (i32*, i32)*, i32 (i32*, i32)** %206, align 8
  %208 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %209 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %208, i32 0, i32 0
  %210 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %211 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = sdiv i64 %212, 1000
  %214 = trunc i64 %213 to i32
  %215 = call i32 %207(i32* %209, i32 %214)
  %216 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %217 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %216, i32 0, i32 2
  %218 = load i32 (i32*, i32)*, i32 (i32*, i32)** %217, align 8
  %219 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %220 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %219, i32 0, i32 0
  %221 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %222 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = sdiv i32 %223, 1000
  %225 = call i32 %218(i32* %220, i32 %224)
  %226 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %227 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %226, i32 0, i32 1
  %228 = load i32 (i32*, i32)*, i32 (i32*, i32)** %227, align 8
  %229 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %230 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %229, i32 0, i32 0
  %231 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %232 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 999
  %235 = sdiv i32 %234, 1000
  %236 = call i32 %228(i32* %230, i32 %235)
  br label %237

237:                                              ; preds = %204, %199, %194, %189
  br label %238

238:                                              ; preds = %237, %186
  %239 = load i32, i32* %6, align 4
  %240 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %241 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %245 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i64 @should_set_clock(i32 %239, i32 %243, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %238
  %252 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %253 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %256 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %254, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %251, %238
  %261 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %262 = load %struct.dc*, %struct.dc** %8, align 8
  %263 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %264 = call i32 @ramp_up_dispclk_with_dpp(%struct.clk_mgr_internal* %261, %struct.dc* %262, %struct.dc_clocks* %263)
  %265 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %266 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %269 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  store i32 1, i32* %13, align 4
  br label %271

271:                                              ; preds = %260, %251
  %272 = load i32, i32* %12, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %326, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %326

277:                                              ; preds = %274
  %278 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %279 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %278, i32 0, i32 3
  %280 = load i32 (i32*, i32)*, i32 (i32*, i32)** %279, align 8
  %281 = icmp ne i32 (i32*, i32)* %280, null
  br i1 %281, label %282, label %325

282:                                              ; preds = %277
  %283 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %284 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %283, i32 0, i32 2
  %285 = load i32 (i32*, i32)*, i32 (i32*, i32)** %284, align 8
  %286 = icmp ne i32 (i32*, i32)* %285, null
  br i1 %286, label %287, label %325

287:                                              ; preds = %282
  %288 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %289 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %288, i32 0, i32 1
  %290 = load i32 (i32*, i32)*, i32 (i32*, i32)** %289, align 8
  %291 = icmp ne i32 (i32*, i32)* %290, null
  br i1 %291, label %292, label %325

292:                                              ; preds = %287
  %293 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %294 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %293, i32 0, i32 3
  %295 = load i32 (i32*, i32)*, i32 (i32*, i32)** %294, align 8
  %296 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %297 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %296, i32 0, i32 0
  %298 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %299 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = sdiv i64 %300, 1000
  %302 = trunc i64 %301 to i32
  %303 = call i32 %295(i32* %297, i32 %302)
  %304 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %305 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %304, i32 0, i32 2
  %306 = load i32 (i32*, i32)*, i32 (i32*, i32)** %305, align 8
  %307 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %308 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %307, i32 0, i32 0
  %309 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %310 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = sdiv i32 %311, 1000
  %313 = call i32 %306(i32* %308, i32 %312)
  %314 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %315 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %314, i32 0, i32 1
  %316 = load i32 (i32*, i32)*, i32 (i32*, i32)** %315, align 8
  %317 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %11, align 8
  %318 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %317, i32 0, i32 0
  %319 = load %struct.dc_clocks*, %struct.dc_clocks** %10, align 8
  %320 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 999
  %323 = sdiv i32 %322, 1000
  %324 = call i32 %316(i32* %318, i32 %323)
  br label %325

325:                                              ; preds = %292, %287, %282, %277
  br label %326

326:                                              ; preds = %325, %274, %271
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_mgr_helper_get_active_display_cnt(%struct.dc*, %struct.dc_state*) #1

declare dso_local i64 @should_set_clock(i32, i32, i32) #1

declare dso_local i32 @ramp_up_dispclk_with_dpp(%struct.clk_mgr_internal*, %struct.dc*, %struct.dc_clocks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
