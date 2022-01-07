; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_program_front_end_for_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_program_front_end_for_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_37__, %struct.TYPE_31__, i32, %struct.TYPE_25__* }
%struct.TYPE_37__ = type { i32 (%struct.pipe_ctx*, %struct.TYPE_38__*)*, i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)* }
%struct.TYPE_38__ = type { %struct.TYPE_27__, %struct.TYPE_26__, i32 }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i32* }
%struct.dc_plane_state = type { %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_41__, %struct.TYPE_36__, i32, i32, i32, i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i32, i32, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64, i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i64, i64, %struct.TYPE_33__, %struct.dc_plane_state*, %struct.TYPE_38__* }
%struct.TYPE_33__ = type { %struct.TYPE_30__, %struct.mem_input*, %struct.TYPE_39__* }
%struct.TYPE_30__ = type { %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_29__ }
%struct.TYPE_46__ = type { i32, i32, i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.mem_input = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { i32 (%struct.mem_input*, i32, i32*, i32)*, i32 (%struct.mem_input*, i32)*, i32 (%struct.mem_input*, i32, i32*, i32*, i32, i32*, i32)* }
%struct.TYPE_39__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)*, i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)* }
%struct.xfm_grph_csc_adjustment = type { i32*, i32, i32*, i32 }
%struct.out_csc_color_matrix = type { i32*, i32, i32*, i32 }

@GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS = common dso_local global i32 0, align 4
@GRAPHICS_GAMUT_ADJUST_TYPE_SW = common dso_local global i32 0, align 4
@CSC_TEMPERATURE_MATRIX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Pipe:%d %p: addr hi:0x%x, addr low:0x%x, src: %d, %d, %d, %d; dst: %d, %d, %d, %d;clip: %d, %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Pipe %d: width, height, x, y\0Aviewport:%d, %d, %d, %d\0Arecout:  %d, %d, %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dce110_program_front_end_for_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_program_front_end_for_pipe(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.mem_input*, align 8
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca %struct.dc_plane_state*, align 8
  %8 = alloca %struct.xfm_grph_csc_adjustment, align 8
  %9 = alloca %struct.out_csc_color_matrix, align 8
  %10 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 1
  %14 = load %struct.mem_input*, %struct.mem_input** %13, align 8
  store %struct.mem_input* %14, %struct.mem_input** %5, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %6, align 8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 3
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %16, align 8
  store %struct.dc_plane_state* %17, %struct.dc_plane_state** %7, align 8
  %18 = call i32 (...) @DC_LOGGER_INIT()
  %19 = bitcast %struct.out_csc_color_matrix* %9 to %struct.xfm_grph_csc_adjustment*
  %20 = call i32 @memset(%struct.xfm_grph_csc_adjustment* %19, i32 0, i32 32)
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 3
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = icmp ne %struct.TYPE_25__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.dc*, %struct.dc** %3, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %29, i32 0, i32 0
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %30, align 8
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i64 %34
  store %struct.pipe_ctx* %35, %struct.pipe_ctx** %6, align 8
  br label %36

36:                                               ; preds = %25, %2
  %37 = call i32 @memset(%struct.xfm_grph_csc_adjustment* %8, i32 0, i32 32)
  %38 = load i32, i32* @GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS, align 4
  %39 = getelementptr inbounds %struct.xfm_grph_csc_adjustment, %struct.xfm_grph_csc_adjustment* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load %struct.dc*, %struct.dc** %3, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %44 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dce_enable_fe_clock(i32 %42, i32 %45, i32 1)
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %48 = call i32 @set_default_colors(%struct.pipe_ctx* %47)
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 4
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %100

56:                                               ; preds = %36
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 4
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %9, i32 0, i32 3
  store i32 %61, i32* %62, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %82, %56
  %64 = load i32, i32* %10, align 4
  %65 = icmp ult i32 %64, 12
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 4
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %9, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_39__*, %struct.TYPE_39__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)*, i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)** %92, align 8
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %96, align 8
  %98 = bitcast %struct.out_csc_color_matrix* %9 to %struct.xfm_grph_csc_adjustment*
  %99 = call i32 %93(%struct.TYPE_39__* %97, %struct.xfm_grph_csc_adjustment* %98)
  br label %100

100:                                              ; preds = %85, %36
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i32 0, i32 4
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %135

108:                                              ; preds = %100
  %109 = load i32, i32* @GRAPHICS_GAMUT_ADJUST_TYPE_SW, align 4
  %110 = getelementptr inbounds %struct.xfm_grph_csc_adjustment, %struct.xfm_grph_csc_adjustment* %8, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %131, %108
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @CSC_TEMPERATURE_MATRIX_SIZE, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 4
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.xfm_grph_csc_adjustment, %struct.xfm_grph_csc_adjustment* %8, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %115
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %111

134:                                              ; preds = %111
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)*, i32 (%struct.TYPE_39__*, %struct.xfm_grph_csc_adjustment*)** %142, align 8
  %144 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_39__*, %struct.TYPE_39__** %146, align 8
  %148 = call i32 %143(%struct.TYPE_39__* %147, %struct.xfm_grph_csc_adjustment* %8)
  %149 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %150 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 8
  %159 = load %struct.dc*, %struct.dc** %3, align 8
  %160 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %161 = call i32 @program_scaler(%struct.dc* %159, %struct.pipe_ctx* %160)
  %162 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %163 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %162, i32 0, i32 0
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 2
  %166 = load i32 (%struct.mem_input*, i32, i32*, i32*, i32, i32*, i32)*, i32 (%struct.mem_input*, i32, i32*, i32*, i32, i32*, i32)** %165, align 8
  %167 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %168 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %169 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %172 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %171, i32 0, i32 6
  %173 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %174 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %173, i32 0, i32 9
  %175 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %176 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 %166(%struct.mem_input* %167, i32 %170, i32* %172, i32* %174, i32 %177, i32* null, i32 0)
  %179 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %180 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %179, i32 0, i32 0
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  %183 = load i32 (%struct.mem_input*, i32)*, i32 (%struct.mem_input*, i32)** %182, align 8
  %184 = icmp ne i32 (%struct.mem_input*, i32)* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %135
  %186 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %187 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %186, i32 0, i32 0
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 1
  %190 = load i32 (%struct.mem_input*, i32)*, i32 (%struct.mem_input*, i32)** %189, align 8
  %191 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %192 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %193 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %192, i32 0, i32 3
  %194 = load %struct.dc_plane_state*, %struct.dc_plane_state** %193, align 8
  %195 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 %190(%struct.mem_input* %191, i32 %196)
  br label %198

198:                                              ; preds = %185, %135
  %199 = load %struct.dc*, %struct.dc** %3, align 8
  %200 = getelementptr inbounds %struct.dc, %struct.dc* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %198
  %205 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %206 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %205, i32 0, i32 0
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 0
  %209 = load i32 (%struct.mem_input*, i32, i32*, i32)*, i32 (%struct.mem_input*, i32, i32*, i32)** %208, align 8
  %210 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %211 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 1
  %213 = load %struct.mem_input*, %struct.mem_input** %212, align 8
  %214 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %215 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %218 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %217, i32 0, i32 6
  %219 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %220 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = call i32 %209(%struct.mem_input* %213, i32 %216, i32* %218, i32 %221)
  br label %223

223:                                              ; preds = %204, %198
  %224 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %225 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %224, i32 0, i32 3
  %226 = load %struct.dc_plane_state*, %struct.dc_plane_state** %225, align 8
  %227 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %250, label %232

232:                                              ; preds = %223
  %233 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %234 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %233, i32 0, i32 3
  %235 = load %struct.dc_plane_state*, %struct.dc_plane_state** %234, align 8
  %236 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %232
  %242 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %243 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %242, i32 0, i32 3
  %244 = load %struct.dc_plane_state*, %struct.dc_plane_state** %243, align 8
  %245 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %241, %232, %223
  %251 = load %struct.dc*, %struct.dc** %3, align 8
  %252 = getelementptr inbounds %struct.dc, %struct.dc* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 1
  %254 = load i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)*, i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)** %253, align 8
  %255 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %256 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %257 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %256, i32 0, i32 3
  %258 = load %struct.dc_plane_state*, %struct.dc_plane_state** %257, align 8
  %259 = call i32 %254(%struct.pipe_ctx* %255, %struct.dc_plane_state* %258)
  br label %260

260:                                              ; preds = %250, %241
  %261 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %262 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %261, i32 0, i32 3
  %263 = load %struct.dc_plane_state*, %struct.dc_plane_state** %262, align 8
  %264 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %260
  %270 = load %struct.dc*, %struct.dc** %3, align 8
  %271 = getelementptr inbounds %struct.dc, %struct.dc* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 0
  %273 = load i32 (%struct.pipe_ctx*, %struct.TYPE_38__*)*, i32 (%struct.pipe_ctx*, %struct.TYPE_38__*)** %272, align 8
  %274 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %275 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %276 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %275, i32 0, i32 4
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %276, align 8
  %278 = call i32 %273(%struct.pipe_ctx* %274, %struct.TYPE_38__* %277)
  br label %279

279:                                              ; preds = %269, %260
  %280 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %281 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %284 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %283, i32 0, i32 3
  %285 = load %struct.dc_plane_state*, %struct.dc_plane_state** %284, align 8
  %286 = bitcast %struct.dc_plane_state* %285 to i8*
  %287 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %288 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %287, i32 0, i32 3
  %289 = load %struct.dc_plane_state*, %struct.dc_plane_state** %288, align 8
  %290 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %296 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %295, i32 0, i32 3
  %297 = load %struct.dc_plane_state*, %struct.dc_plane_state** %296, align 8
  %298 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %304 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %303, i32 0, i32 3
  %305 = load %struct.dc_plane_state*, %struct.dc_plane_state** %304, align 8
  %306 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %310 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %309, i32 0, i32 3
  %311 = load %struct.dc_plane_state*, %struct.dc_plane_state** %310, align 8
  %312 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %316 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %315, i32 0, i32 3
  %317 = load %struct.dc_plane_state*, %struct.dc_plane_state** %316, align 8
  %318 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %322 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %321, i32 0, i32 3
  %323 = load %struct.dc_plane_state*, %struct.dc_plane_state** %322, align 8
  %324 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %328 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %327, i32 0, i32 3
  %329 = load %struct.dc_plane_state*, %struct.dc_plane_state** %328, align 8
  %330 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %334 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %333, i32 0, i32 3
  %335 = load %struct.dc_plane_state*, %struct.dc_plane_state** %334, align 8
  %336 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %340 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %339, i32 0, i32 3
  %341 = load %struct.dc_plane_state*, %struct.dc_plane_state** %340, align 8
  %342 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %346 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %345, i32 0, i32 3
  %347 = load %struct.dc_plane_state*, %struct.dc_plane_state** %346, align 8
  %348 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %352 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %351, i32 0, i32 3
  %353 = load %struct.dc_plane_state*, %struct.dc_plane_state** %352, align 8
  %354 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %358 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %357, i32 0, i32 3
  %359 = load %struct.dc_plane_state*, %struct.dc_plane_state** %358, align 8
  %360 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %364 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %363, i32 0, i32 3
  %365 = load %struct.dc_plane_state*, %struct.dc_plane_state** %364, align 8
  %366 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %370 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %369, i32 0, i32 3
  %371 = load %struct.dc_plane_state*, %struct.dc_plane_state** %370, align 8
  %372 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @DC_LOG_SURFACE(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i64 %282, i8* %286, i32 %294, i32 %302, i32 %308, i32 %314, i32 %320, i32 %326, i32 %332, i32 %338, i32 %344, i32 %350, i32 %356, i32 %362, i32 %368, i32 %374)
  %376 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %377 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %380 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = inttoptr i64 %385 to i8*
  %387 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %388 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %394 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %400 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %406 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %412 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %418 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %424 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @DC_LOG_SURFACE(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %378, i8* %386, i32 %392, i32 %398, i32 %404, i32 %410, i32 %416, i32 %422, i32 %428)
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(...) #1

declare dso_local i32 @memset(%struct.xfm_grph_csc_adjustment*, i32, i32) #1

declare dso_local i32 @dce_enable_fe_clock(i32, i32, i32) #1

declare dso_local i32 @set_default_colors(%struct.pipe_ctx*) #1

declare dso_local i32 @program_scaler(%struct.dc*, %struct.pipe_ctx*) #1

declare dso_local i32 @DC_LOG_SURFACE(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
