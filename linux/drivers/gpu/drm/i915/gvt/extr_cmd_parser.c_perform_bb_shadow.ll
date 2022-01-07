; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_perform_bb_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_perform_bb_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, %struct.intel_vgpu* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.intel_vgpu_mm* }
%struct.intel_vgpu_mm = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.intel_vgpu_mm* }
%struct.intel_vgpu_shadow_bb = type { i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }

@GTT_BUFFER = common dso_local global i64 0, align 8
@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I915_GTT_PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@CLFLUSH_BEFORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fail to copy guest ring buffer\0A\00", align 1
@BATCH_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @perform_bb_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_bb_shadow(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_shadow_bb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_mm*, align 8
  %11 = alloca i64, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  %12 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %13 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %12, i32 0, i32 7
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %16 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GTT_BUFFER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %22 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %21, i32 0, i32 7
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %22, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %25, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %29 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %28, i32 0, i32 6
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %31, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = phi %struct.intel_vgpu_mm* [ %26, %20 ], [ %32, %27 ]
  store %struct.intel_vgpu_mm* %34, %struct.intel_vgpu_mm** %10, align 8
  store i64 0, i64* %11, align 8
  %35 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %36 = call i64 @get_gma_bb_from_cmd(%struct.parser_exec_state* %35, i32 1)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %264

43:                                               ; preds = %33
  %44 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %45 = call i32 @find_bb_size(%struct.parser_exec_state* %44, i64* %7, i64* %8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %264

50:                                               ; preds = %43
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.intel_vgpu_shadow_bb* @kzalloc(i32 56, i32 %51)
  store %struct.intel_vgpu_shadow_bb* %52, %struct.intel_vgpu_shadow_bb** %5, align 8
  %53 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %54 = icmp ne %struct.intel_vgpu_shadow_bb* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %264

58:                                               ; preds = %50
  %59 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %60 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GTT_BUFFER, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  %66 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %69 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @I915_GTT_PAGE_MASK, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %73, %75
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %79 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %78, i32 0, i32 7
  %80 = load %struct.intel_vgpu*, %struct.intel_vgpu** %79, align 8
  %81 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = call i32 @round_up(i64 %87, i32 %88)
  %90 = call %struct.TYPE_21__* @i915_gem_object_create_shmem(i32 %84, i32 %89)
  %91 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %92 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %91, i32 0, i32 3
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %92, align 8
  %93 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %94 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %93, i32 0, i32 3
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = call i64 @IS_ERR(%struct.TYPE_21__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %77
  %99 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %100 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %99, i32 0, i32 3
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.TYPE_21__* %101)
  store i32 %102, i32* %9, align 4
  br label %260

103:                                              ; preds = %77
  %104 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %105 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %104, i32 0, i32 3
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %108 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %107, i32 0, i32 1
  %109 = call i32 @i915_gem_object_prepare_write(%struct.TYPE_21__* %106, i32* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %255

113:                                              ; preds = %103
  %114 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %115 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %114, i32 0, i32 3
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = load i32, i32* @I915_MAP_WB, align 4
  %118 = call %struct.TYPE_21__* @i915_gem_object_pin_map(%struct.TYPE_21__* %116, i32 %117)
  %119 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %120 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %119, i32 0, i32 4
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %120, align 8
  %121 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %122 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %121, i32 0, i32 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = call i64 @IS_ERR(%struct.TYPE_21__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %128 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %127, i32 0, i32 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = call i32 @PTR_ERR(%struct.TYPE_21__* %129)
  store i32 %130, i32* %9, align 4
  br label %250

131:                                              ; preds = %113
  %132 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %133 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CLFLUSH_BEFORE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %140 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %139, i32 0, i32 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %143 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %142, i32 0, i32 3
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @drm_clflush_virt_range(%struct.TYPE_21__* %141, i32 %147)
  %149 = load i32, i32* @CLFLUSH_BEFORE, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %152 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %138, %131
  %156 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %157 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %156, i32 0, i32 7
  %158 = load %struct.intel_vgpu*, %struct.intel_vgpu** %157, align 8
  %159 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %10, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %161, %162
  %164 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %165 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %164, i32 0, i32 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i64 %167
  %169 = call i32 @copy_gma_to_hva(%struct.intel_vgpu* %158, %struct.intel_vgpu_mm* %159, i64 %160, i64 %163, %struct.TYPE_21__* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %155
  %173 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %174 = load i32, i32* @EFAULT, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %9, align 4
  br label %245

176:                                              ; preds = %155
  %177 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %178 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %179 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %178, i32 0, i32 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i64 %181
  %183 = load i64, i64* %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i64 %183
  %185 = call i32 @audit_bb_end(%struct.parser_exec_state* %177, %struct.TYPE_21__* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %245

189:                                              ; preds = %176
  %190 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %191 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %190, i32 0, i32 7
  %192 = call i32 @INIT_LIST_HEAD(i32* %191)
  %193 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %194 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %193, i32 0, i32 7
  %195 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %196 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %195, i32 0, i32 6
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = call i32 @list_add(i32* %194, i32* %198)
  %200 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %201 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %200, i32 0, i32 2
  store i32 1, i32* %201, align 8
  %202 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %203 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %202, i32 0, i32 3
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %206 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %205, i32 0, i32 6
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %206, align 8
  %207 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %208 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @BATCH_BUFFER_INSTRUCTION, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %189
  %213 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %214 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %231, label %217

217:                                              ; preds = %212
  %218 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %219 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %218, i32 0, i32 3
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %222 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %221, i32 0, i32 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = ptrtoint %struct.TYPE_21__* %220 to i64
  %225 = ptrtoint %struct.TYPE_21__* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = inttoptr i64 %227 to %struct.TYPE_21__*
  %229 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %230 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %229, i32 0, i32 5
  store %struct.TYPE_21__* %228, %struct.TYPE_21__** %230, align 8
  br label %234

231:                                              ; preds = %212, %189
  %232 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %233 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %232, i32 0, i32 5
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %233, align 8
  br label %234

234:                                              ; preds = %231, %217
  %235 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %236 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %235, i32 0, i32 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = load i64, i64* %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 %238
  %240 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %241 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %240, i32 0, i32 3
  store %struct.TYPE_21__* %239, %struct.TYPE_21__** %241, align 8
  %242 = load i64, i64* %6, align 8
  %243 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %244 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  store i32 0, i32* %2, align 4
  br label %264

245:                                              ; preds = %188, %172
  %246 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %247 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %246, i32 0, i32 3
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  %249 = call i32 @i915_gem_object_unpin_map(%struct.TYPE_21__* %248)
  br label %250

250:                                              ; preds = %245, %126
  %251 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %252 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %251, i32 0, i32 3
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = call i32 @i915_gem_object_finish_access(%struct.TYPE_21__* %253)
  br label %255

255:                                              ; preds = %250, %112
  %256 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %257 = getelementptr inbounds %struct.intel_vgpu_shadow_bb, %struct.intel_vgpu_shadow_bb* %256, i32 0, i32 3
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = call i32 @i915_gem_object_put(%struct.TYPE_21__* %258)
  br label %260

260:                                              ; preds = %255, %98
  %261 = load %struct.intel_vgpu_shadow_bb*, %struct.intel_vgpu_shadow_bb** %5, align 8
  %262 = call i32 @kfree(%struct.intel_vgpu_shadow_bb* %261)
  %263 = load i32, i32* %9, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %234, %55, %48, %40
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i64 @get_gma_bb_from_cmd(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @find_bb_size(%struct.parser_exec_state*, i64*, i64*) #1

declare dso_local %struct.intel_vgpu_shadow_bb* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_21__* @i915_gem_object_create_shmem(i32, i32) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @i915_gem_object_prepare_write(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_21__* @i915_gem_object_pin_map(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @drm_clflush_virt_range(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @copy_gma_to_hva(%struct.intel_vgpu*, %struct.intel_vgpu_mm*, i64, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @audit_bb_end(%struct.parser_exec_state*, %struct.TYPE_21__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @i915_gem_object_unpin_map(%struct.TYPE_21__*) #1

declare dso_local i32 @i915_gem_object_finish_access(%struct.TYPE_21__*) #1

declare dso_local i32 @i915_gem_object_put(%struct.TYPE_21__*) #1

declare dso_local i32 @kfree(%struct.intel_vgpu_shadow_bb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
