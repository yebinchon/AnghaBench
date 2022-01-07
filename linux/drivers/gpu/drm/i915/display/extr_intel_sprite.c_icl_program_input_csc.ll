; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_program_input_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_program_input_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.drm_i915_private = type { i32 }

@icl_program_input_csc.input_csc_matrix = internal constant [131 x [9 x i32]] [[9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] [i32 31896, i32 30720, i32 0, i32 40696, i32 30720, i32 44032, i32 0, i32 30720, i32 32472], [9 x i32] [i32 31480, i32 30720, i32 0, i32 35624, i32 30720, i32 39616, i32 0, i32 30720, i32 32216], [9 x i32] [i32 31688, i32 30720, i32 0, i32 35112, i32 30720, i32 43656, i32 0, i32 30720, i32 32528]], align 16
@icl_program_input_csc.input_csc_matrix_lr = internal constant [131 x [9 x i32]] [[9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] [i32 32344, i32 31056, i32 0, i32 34952, i32 31056, i32 44456, i32 0, i32 31056, i32 26736], [9 x i32] [i32 31944, i32 31056, i32 0, i32 36096, i32 31056, i32 40072, i32 0, i32 31056, i32 26640], [9 x i32] [i32 32112, i32 31056, i32 0, i32 35432, i32 31056, i32 44032, i32 0, i32 31056, i32 26768]], align 16
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i64 0, align 8
@PREOFF_YUV_TO_RGB_HI = common dso_local global i32 0, align 4
@PREOFF_YUV_TO_RGB_ME = common dso_local global i32 0, align 4
@PREOFF_YUV_TO_RGB_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @icl_program_input_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_program_input_csc(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %11 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %12 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %23 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %30 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [131 x [9 x i32]], [131 x [9 x i32]]* @icl_program_input_csc.input_csc_matrix, i64 0, i64 %32
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0
  store i32* %34, i32** %10, align 8
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %37 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [131 x [9 x i32]], [131 x [9 x i32]]* @icl_program_input_csc.input_csc_matrix_lr, i64 0, i64 %39
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %40, i64 0, i64 0
  store i32* %41, i32** %10, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %43, i32 %44, i32 0)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ROFF(i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GOFF(i32 %52)
  %54 = or i32 %49, %53
  %55 = call i32 @I915_WRITE_FW(i32 %45, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %56, i32 %57, i32 1)
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BOFF(i32 %61)
  %63 = call i32 @I915_WRITE_FW(i32 %58, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %64, i32 %65, i32 2)
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ROFF(i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GOFF(i32 %73)
  %75 = or i32 %70, %74
  %76 = call i32 @I915_WRITE_FW(i32 %66, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %77, i32 %78, i32 3)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BOFF(i32 %82)
  %84 = call i32 @I915_WRITE_FW(i32 %79, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %85, i32 %86, i32 4)
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ROFF(i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @GOFF(i32 %94)
  %96 = or i32 %91, %95
  %97 = call i32 @I915_WRITE_FW(i32 %87, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @PLANE_INPUT_CSC_COEFF(i32 %98, i32 %99, i32 5)
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @BOFF(i32 %103)
  %105 = call i32 @I915_WRITE_FW(i32 %100, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @PLANE_INPUT_CSC_PREOFF(i32 %106, i32 %107, i32 0)
  %109 = load i32, i32* @PREOFF_YUV_TO_RGB_HI, align 4
  %110 = call i32 @I915_WRITE_FW(i32 %108, i32 %109)
  %111 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %112 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %42
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @PLANE_INPUT_CSC_PREOFF(i32 %118, i32 %119, i32 1)
  %121 = call i32 @I915_WRITE_FW(i32 %120, i32 0)
  br label %128

122:                                              ; preds = %42
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @PLANE_INPUT_CSC_PREOFF(i32 %123, i32 %124, i32 1)
  %126 = load i32, i32* @PREOFF_YUV_TO_RGB_ME, align 4
  %127 = call i32 @I915_WRITE_FW(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %117
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @PLANE_INPUT_CSC_PREOFF(i32 %129, i32 %130, i32 2)
  %132 = load i32, i32* @PREOFF_YUV_TO_RGB_LO, align 4
  %133 = call i32 @I915_WRITE_FW(i32 %131, i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @PLANE_INPUT_CSC_POSTOFF(i32 %134, i32 %135, i32 0)
  %137 = call i32 @I915_WRITE_FW(i32 %136, i32 0)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @PLANE_INPUT_CSC_POSTOFF(i32 %138, i32 %139, i32 1)
  %141 = call i32 @I915_WRITE_FW(i32 %140, i32 0)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @PLANE_INPUT_CSC_POSTOFF(i32 %142, i32 %143, i32 2)
  %145 = call i32 @I915_WRITE_FW(i32 %144, i32 0)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @PLANE_INPUT_CSC_COEFF(i32, i32, i32) #1

declare dso_local i32 @ROFF(i32) #1

declare dso_local i32 @GOFF(i32) #1

declare dso_local i32 @BOFF(i32) #1

declare dso_local i32 @PLANE_INPUT_CSC_PREOFF(i32, i32, i32) #1

declare dso_local i32 @PLANE_INPUT_CSC_POSTOFF(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
