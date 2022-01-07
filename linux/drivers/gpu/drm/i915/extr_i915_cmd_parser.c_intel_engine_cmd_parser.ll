; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_intel_engine_cmd_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_intel_engine_cmd_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_cmd_descriptor = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i915_gem_context = type { i32, i32 }
%struct.intel_engine_cs = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@noop_desc = common dso_local global %struct.drm_i915_cmd_descriptor zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"CMD: Failed to copy batch\0A\00", align 1
@MI_BATCH_BUFFER_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD: Unrecognized command: 0x%08X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_DESC_FIXED = common dso_local global i32 0, align 4
@LENGTH_BIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_START = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"CMD: Got to the end of the buffer w/o a BBE cmd!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_cmd_parser(%struct.i915_gem_context* %0, %struct.intel_engine_cs* %1, %struct.drm_i915_gem_object* %2, i32 %3, i32 %4, i32 %5, %struct.drm_i915_gem_object* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i915_gem_context*, align 8
  %11 = alloca %struct.intel_engine_cs*, align 8
  %12 = alloca %struct.drm_i915_gem_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_i915_gem_object*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.drm_i915_cmd_descriptor, align 8
  %22 = alloca %struct.drm_i915_cmd_descriptor*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %10, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %11, align 8
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.drm_i915_gem_object* %6, %struct.drm_i915_gem_object** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %27 = bitcast %struct.drm_i915_cmd_descriptor* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.drm_i915_cmd_descriptor* @noop_desc to i8*), i64 24, i1 false)
  store %struct.drm_i915_cmd_descriptor* %21, %struct.drm_i915_cmd_descriptor** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %16, align 8
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32* @copy_batch(%struct.drm_i915_gem_object* %28, %struct.drm_i915_gem_object* %29, i32 %30, i32 %31, i32* %23)
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %8
  %37 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %9, align 4
  br label %197

40:                                               ; preds = %8
  %41 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @init_whitelist(%struct.i915_gem_context* %41, i32 %42)
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %19, align 8
  br label %49

49:                                               ; preds = %172, %40
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MI_BATCH_BUFFER_END, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %173

55:                                               ; preds = %49
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %60 = call %struct.drm_i915_cmd_descriptor* @find_cmd(%struct.intel_engine_cs* %56, i32 %58, %struct.drm_i915_cmd_descriptor* %59, %struct.drm_i915_cmd_descriptor* %21)
  store %struct.drm_i915_cmd_descriptor* %60, %struct.drm_i915_cmd_descriptor** %22, align 8
  %61 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %62 = icmp ne %struct.drm_i915_cmd_descriptor* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %18, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %24, align 4
  br label %193

69:                                               ; preds = %55
  %70 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %71 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CMD_DESC_FIXED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %78 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %25, align 4
  br label %91

81:                                               ; preds = %69
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %85 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %83, %87
  %89 = load i32, i32* @LENGTH_BIAS, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %25, align 4
  br label %91

91:                                               ; preds = %81, %76
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load i32, i32* %25, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32*, i32** %19, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i64 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %24, align 4
  br label %193

114:                                              ; preds = %91
  %115 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, align 8
  %116 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %25, align 4
  %119 = call i32 @check_cmd(%struct.intel_engine_cs* %115, %struct.drm_i915_cmd_descriptor* %116, i32* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @EACCES, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %24, align 4
  br label %193

124:                                              ; preds = %114
  %125 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %22, align 8
  %126 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MI_BATCH_BUFFER_START, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @check_bbstart(%struct.i915_gem_context* %132, i32* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %24, align 4
  %140 = load i32, i32* %24, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %193

143:                                              ; preds = %131
  br label %173

144:                                              ; preds = %124
  %145 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %146 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %20, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i32, i32* %20, align 4
  %152 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %153 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @set_bit(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %144
  %157 = load i32, i32* %25, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %18, align 8
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %20, align 4
  %164 = load i32*, i32** %18, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = icmp uge i32* %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %156
  %168 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %24, align 4
  br label %193

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171
  br i1 true, label %49, label %173

173:                                              ; preds = %172, %143, %54
  %174 = load i32, i32* %23, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %16, align 8
  %178 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @page_mask_bits(i32 %180)
  store i8* %181, i8** %26, align 8
  %182 = load i8*, i8** %26, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = bitcast i32* %184 to i8*
  %186 = load i8*, i8** %26, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32 @drm_clflush_virt_range(i8* %182, i32 %190)
  br label %192

192:                                              ; preds = %176, %173
  br label %193

193:                                              ; preds = %192, %167, %142, %121, %101, %63
  %194 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %16, align 8
  %195 = call i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object* %194)
  %196 = load i32, i32* %24, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %193, %36
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @copy_batch(%struct.drm_i915_gem_object*, %struct.drm_i915_gem_object*, i32, i32, i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @init_whitelist(%struct.i915_gem_context*, i32) #2

declare dso_local %struct.drm_i915_cmd_descriptor* @find_cmd(%struct.intel_engine_cs*, i32, %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor*) #2

declare dso_local i32 @check_cmd(%struct.intel_engine_cs*, %struct.drm_i915_cmd_descriptor*, i32*, i32) #2

declare dso_local i32 @check_bbstart(%struct.i915_gem_context*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local i8* @page_mask_bits(i32) #2

declare dso_local i32 @drm_clflush_virt_range(i8*, i32) #2

declare dso_local i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
