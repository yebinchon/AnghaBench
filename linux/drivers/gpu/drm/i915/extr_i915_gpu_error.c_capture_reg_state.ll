; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_reg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_reg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@GTIER = common dso_local global i32 0, align 4
@VLV_IER = common dso_local global i32 0, align 4
@FORCEWAKE_VLV = common dso_local global i32 0, align 4
@GEN7_ERR_INT = common dso_local global i32 0, align 4
@GEN12_FAULT_TLB_DATA0 = common dso_local global i32 0, align 4
@GEN12_FAULT_TLB_DATA1 = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA0 = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA1 = common dso_local global i32 0, align 4
@FORCEWAKE = common dso_local global i32 0, align 4
@GAB_CTL = common dso_local global i32 0, align 4
@GFX_MODE = common dso_local global i32 0, align 4
@FORCEWAKE_MT = common dso_local global i32 0, align 4
@DERRMR = common dso_local global i32 0, align 4
@ERROR_GEN6 = common dso_local global i32 0, align 4
@DONE_REG = common dso_local global i32 0, align 4
@RENDER_RING_BASE = common dso_local global i32 0, align 4
@GAM_ECOCHK = common dso_local global i32 0, align 4
@GAC_ECO_BITS = common dso_local global i32 0, align 4
@GEN8_DE_MISC_IER = common dso_local global i32 0, align 4
@GEN11_RENDER_COPY_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_VCS_VECS_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GUC_SG_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GPM_WGBOXPERF_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_CRYPTO_RSVD_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GUNIT_CSME_INTR_ENABLE = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@GEN2_IER = common dso_local global i32 0, align 4
@EIR = common dso_local global i32 0, align 4
@PGTBL_ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*)* @capture_reg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_reg_state(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %6 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %7 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %6, i32 0, i32 17
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.intel_uncore* %10, %struct.intel_uncore** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %16 = load i32, i32* @GTIER, align 4
  %17 = call i8* @intel_uncore_read(%struct.intel_uncore* %15, i32 %16)
  %18 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %19 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %18, i32 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %23 = load i32, i32* @VLV_IER, align 4
  %24 = call i8* @intel_uncore_read(%struct.intel_uncore* %22, i32 %23)
  %25 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %26 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %28 = load i32, i32* @FORCEWAKE_VLV, align 4
  %29 = call i8* @intel_uncore_read_fw(%struct.intel_uncore* %27, i32 %28)
  %30 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %31 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %30, i32 0, i32 11
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %14, %1
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i64 @IS_GEN(%struct.drm_i915_private* %33, i32 7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %38 = load i32, i32* @GEN7_ERR_INT, align 4
  %39 = call i8* @intel_uncore_read(%struct.intel_uncore* %37, i32 %38)
  %40 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %41 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %40, i32 0, i32 16
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i32 @INTEL_GEN(%struct.drm_i915_private* %43)
  %45 = icmp sge i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %48 = load i32, i32* @GEN12_FAULT_TLB_DATA0, align 4
  %49 = call i8* @intel_uncore_read(%struct.intel_uncore* %47, i32 %48)
  %50 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %51 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %50, i32 0, i32 15
  store i8* %49, i8** %51, align 8
  %52 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %53 = load i32, i32* @GEN12_FAULT_TLB_DATA1, align 4
  %54 = call i8* @intel_uncore_read(%struct.intel_uncore* %52, i32 %53)
  %55 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %56 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  br label %73

57:                                               ; preds = %42
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = call i32 @INTEL_GEN(%struct.drm_i915_private* %58)
  %60 = icmp sge i32 %59, 8
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %63 = load i32, i32* @GEN8_FAULT_TLB_DATA0, align 4
  %64 = call i8* @intel_uncore_read(%struct.intel_uncore* %62, i32 %63)
  %65 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %66 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %65, i32 0, i32 15
  store i8* %64, i8** %66, align 8
  %67 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %68 = load i32, i32* @GEN8_FAULT_TLB_DATA1, align 4
  %69 = call i8* @intel_uncore_read(%struct.intel_uncore* %67, i32 %68)
  %70 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %71 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %70, i32 0, i32 14
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %61, %57
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = call i64 @IS_GEN(%struct.drm_i915_private* %74, i32 6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %79 = load i32, i32* @FORCEWAKE, align 4
  %80 = call i8* @intel_uncore_read_fw(%struct.intel_uncore* %78, i32 %79)
  %81 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %82 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %81, i32 0, i32 11
  store i8* %80, i8** %82, align 8
  %83 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %84 = load i32, i32* @GAB_CTL, align 4
  %85 = call i8* @intel_uncore_read(%struct.intel_uncore* %83, i32 %84)
  %86 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %87 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %86, i32 0, i32 13
  store i8* %85, i8** %87, align 8
  %88 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %89 = load i32, i32* @GFX_MODE, align 4
  %90 = call i8* @intel_uncore_read(%struct.intel_uncore* %88, i32 %89)
  %91 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %92 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %91, i32 0, i32 12
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %77, %73
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %95 = call i32 @INTEL_GEN(%struct.drm_i915_private* %94)
  %96 = icmp sge i32 %95, 7
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %99 = load i32, i32* @FORCEWAKE_MT, align 4
  %100 = call i8* @intel_uncore_read_fw(%struct.intel_uncore* %98, i32 %99)
  %101 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %102 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %101, i32 0, i32 11
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %97, %93
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %105 = call i32 @INTEL_GEN(%struct.drm_i915_private* %104)
  %106 = icmp sge i32 %105, 6
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %109 = load i32, i32* @DERRMR, align 4
  %110 = call i8* @intel_uncore_read(%struct.intel_uncore* %108, i32 %109)
  %111 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %112 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %114 = call i32 @INTEL_GEN(%struct.drm_i915_private* %113)
  %115 = icmp slt i32 %114, 12
  br i1 %115, label %116, label %127

116:                                              ; preds = %107
  %117 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %118 = load i32, i32* @ERROR_GEN6, align 4
  %119 = call i8* @intel_uncore_read(%struct.intel_uncore* %117, i32 %118)
  %120 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %121 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %120, i32 0, i32 9
  store i8* %119, i8** %121, align 8
  %122 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %123 = load i32, i32* @DONE_REG, align 4
  %124 = call i8* @intel_uncore_read(%struct.intel_uncore* %122, i32 %123)
  %125 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %126 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %116, %107
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = call i32 @INTEL_GEN(%struct.drm_i915_private* %129)
  %131 = icmp sge i32 %130, 5
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %134 = load i32, i32* @RENDER_RING_BASE, align 4
  %135 = call i32 @CCID(i32 %134)
  %136 = call i8* @intel_uncore_read(%struct.intel_uncore* %133, i32 %135)
  %137 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %138 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %137, i32 0, i32 7
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %132, %128
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %141 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %140, i32 6, i32 7)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %145 = load i32, i32* @GAM_ECOCHK, align 4
  %146 = call i8* @intel_uncore_read(%struct.intel_uncore* %144, i32 %145)
  %147 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %148 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %150 = load i32, i32* @GAC_ECO_BITS, align 4
  %151 = call i8* @intel_uncore_read(%struct.intel_uncore* %149, i32 %150)
  %152 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %153 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %143, %139
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %156 = call i32 @INTEL_GEN(%struct.drm_i915_private* %155)
  %157 = icmp sge i32 %156, 11
  br i1 %157, label %158, label %208

158:                                              ; preds = %154
  %159 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %160 = load i32, i32* @GEN8_DE_MISC_IER, align 4
  %161 = call i8* @intel_uncore_read(%struct.intel_uncore* %159, i32 %160)
  %162 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %163 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %165 = load i32, i32* @GEN11_RENDER_COPY_INTR_ENABLE, align 4
  %166 = call i8* @intel_uncore_read(%struct.intel_uncore* %164, i32 %165)
  %167 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %168 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %167, i32 0, i32 4
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  store i8* %166, i8** %170, align 8
  %171 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %172 = load i32, i32* @GEN11_VCS_VECS_INTR_ENABLE, align 4
  %173 = call i8* @intel_uncore_read(%struct.intel_uncore* %171, i32 %172)
  %174 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %175 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %174, i32 0, i32 4
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  store i8* %173, i8** %177, align 8
  %178 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %179 = load i32, i32* @GEN11_GUC_SG_INTR_ENABLE, align 4
  %180 = call i8* @intel_uncore_read(%struct.intel_uncore* %178, i32 %179)
  %181 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %182 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %181, i32 0, i32 4
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 2
  store i8* %180, i8** %184, align 8
  %185 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %186 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_ENABLE, align 4
  %187 = call i8* @intel_uncore_read(%struct.intel_uncore* %185, i32 %186)
  %188 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %189 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %188, i32 0, i32 4
  %190 = load i8**, i8*** %189, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 3
  store i8* %187, i8** %191, align 8
  %192 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %193 = load i32, i32* @GEN11_CRYPTO_RSVD_INTR_ENABLE, align 4
  %194 = call i8* @intel_uncore_read(%struct.intel_uncore* %192, i32 %193)
  %195 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %196 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %195, i32 0, i32 4
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 4
  store i8* %194, i8** %198, align 8
  %199 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %200 = load i32, i32* @GEN11_GUNIT_CSME_INTR_ENABLE, align 4
  %201 = call i8* @intel_uncore_read(%struct.intel_uncore* %199, i32 %200)
  %202 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %203 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %202, i32 0, i32 4
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 5
  store i8* %201, i8** %205, align 8
  %206 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %207 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %206, i32 0, i32 0
  store i32 6, i32* %207, align 8
  br label %281

208:                                              ; preds = %154
  %209 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %210 = call i32 @INTEL_GEN(%struct.drm_i915_private* %209)
  %211 = icmp sge i32 %210, 8
  br i1 %211, label %212, label %238

212:                                              ; preds = %208
  %213 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %214 = load i32, i32* @GEN8_DE_MISC_IER, align 4
  %215 = call i8* @intel_uncore_read(%struct.intel_uncore* %213, i32 %214)
  %216 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %217 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %232, %212
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %235

221:                                              ; preds = %218
  %222 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @GEN8_GT_IER(i32 %223)
  %225 = call i8* @intel_uncore_read(%struct.intel_uncore* %222, i32 %224)
  %226 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %227 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %226, i32 0, i32 4
  %228 = load i8**, i8*** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  store i8* %225, i8** %231, align 8
  br label %232

232:                                              ; preds = %221
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %218

235:                                              ; preds = %218
  %236 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %237 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %236, i32 0, i32 0
  store i32 4, i32* %237, align 8
  br label %280

238:                                              ; preds = %208
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %240 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %238
  %243 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %244 = load i32, i32* @DEIER, align 4
  %245 = call i8* @intel_uncore_read(%struct.intel_uncore* %243, i32 %244)
  %246 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %247 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %246, i32 0, i32 3
  store i8* %245, i8** %247, align 8
  %248 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %249 = load i32, i32* @GTIER, align 4
  %250 = call i8* @intel_uncore_read(%struct.intel_uncore* %248, i32 %249)
  %251 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %252 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %251, i32 0, i32 4
  %253 = load i8**, i8*** %252, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  store i8* %250, i8** %254, align 8
  %255 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %256 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %255, i32 0, i32 0
  store i32 1, i32* %256, align 8
  br label %279

257:                                              ; preds = %238
  %258 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %259 = call i64 @IS_GEN(%struct.drm_i915_private* %258, i32 2)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %257
  %262 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %263 = load i32, i32* @GEN2_IER, align 4
  %264 = call i8* @intel_uncore_read16(%struct.intel_uncore* %262, i32 %263)
  %265 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %266 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %265, i32 0, i32 3
  store i8* %264, i8** %266, align 8
  br label %278

267:                                              ; preds = %257
  %268 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %269 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %267
  %272 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %273 = load i32, i32* @GEN2_IER, align 4
  %274 = call i8* @intel_uncore_read(%struct.intel_uncore* %272, i32 %273)
  %275 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %276 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %275, i32 0, i32 3
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %271, %267
  br label %278

278:                                              ; preds = %277, %261
  br label %279

279:                                              ; preds = %278, %242
  br label %280

280:                                              ; preds = %279, %235
  br label %281

281:                                              ; preds = %280, %158
  %282 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %283 = load i32, i32* @EIR, align 4
  %284 = call i8* @intel_uncore_read(%struct.intel_uncore* %282, i32 %283)
  %285 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %286 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %288 = load i32, i32* @PGTBL_ER, align 4
  %289 = call i8* @intel_uncore_read(%struct.intel_uncore* %287, i32 %288)
  %290 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %291 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  ret void
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i8* @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i8* @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @CCID(i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @GEN8_GT_IER(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i8* @intel_uncore_read16(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
