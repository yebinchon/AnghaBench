; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_igt_spinner_create_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_igt_spinner_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.igt_spinner = type { i64, i32*, i32, i32 }
%struct.intel_context = type { %struct.TYPE_8__*, %struct.intel_engine_cs* }
%struct.TYPE_8__ = type { i64 }
%struct.intel_engine_cs = type { i32 (%struct.i915_vma*)*, i32 (%struct.i915_vma.0*, i32, i32, i32)*, i32 }
%struct.i915_vma = type opaque
%struct.i915_vma.0 = type opaque
%struct.i915_vma.1 = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }

@PIN_USER = common dso_local global i32 0, align 4
@MI_STORE_DWORD_IMM_GEN4 = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_START = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_END = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_request* @igt_spinner_create_request(%struct.igt_spinner* %0, %struct.intel_context* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.igt_spinner*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_engine_cs*, align 8
  %9 = alloca %struct.i915_request*, align 8
  %10 = alloca %struct.i915_vma.1*, align 8
  %11 = alloca %struct.i915_vma.1*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.igt_spinner* %0, %struct.igt_spinner** %5, align 8
  store %struct.intel_context* %1, %struct.intel_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %15 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %14, i32 0, i32 1
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %15, align 8
  store %struct.intel_engine_cs* %16, %struct.intel_engine_cs** %8, align 8
  store %struct.i915_request* null, %struct.i915_request** %9, align 8
  %17 = load %struct.igt_spinner*, %struct.igt_spinner** %5, align 8
  %18 = getelementptr inbounds %struct.igt_spinner, %struct.igt_spinner* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %21 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load %struct.igt_spinner*, %struct.igt_spinner** %5, align 8
  %29 = getelementptr inbounds %struct.igt_spinner, %struct.igt_spinner* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %32 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call %struct.i915_vma.1* @i915_vma_instance(i32 %30, %struct.TYPE_8__* %33, i32* null)
  store %struct.i915_vma.1* %34, %struct.i915_vma.1** %11, align 8
  %35 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %36 = call i64 @IS_ERR(%struct.i915_vma.1* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %40 = call %struct.i915_vma.1* @ERR_CAST(%struct.i915_vma.1* %39)
  %41 = bitcast %struct.i915_vma.1* %40 to %struct.i915_request*
  store %struct.i915_request* %41, %struct.i915_request** %4, align 8
  br label %226

42:                                               ; preds = %3
  %43 = load %struct.igt_spinner*, %struct.igt_spinner** %5, align 8
  %44 = getelementptr inbounds %struct.igt_spinner, %struct.igt_spinner* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %47 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.i915_vma.1* @i915_vma_instance(i32 %45, %struct.TYPE_8__* %48, i32* null)
  store %struct.i915_vma.1* %49, %struct.i915_vma.1** %10, align 8
  %50 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %51 = call i64 @IS_ERR(%struct.i915_vma.1* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %55 = call %struct.i915_vma.1* @ERR_CAST(%struct.i915_vma.1* %54)
  %56 = bitcast %struct.i915_vma.1* %55 to %struct.i915_request*
  store %struct.i915_request* %56, %struct.i915_request** %4, align 8
  br label %226

57:                                               ; preds = %42
  %58 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %59 = load i32, i32* @PIN_USER, align 4
  %60 = call i32 @i915_vma_pin(%struct.i915_vma.1* %58, i32 0, i32 0, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.i915_vma.1* @ERR_PTR(i32 %64)
  %66 = bitcast %struct.i915_vma.1* %65 to %struct.i915_request*
  store %struct.i915_request* %66, %struct.i915_request** %4, align 8
  br label %226

67:                                               ; preds = %57
  %68 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %69 = load i32, i32* @PIN_USER, align 4
  %70 = call i32 @i915_vma_pin(%struct.i915_vma.1* %68, i32 0, i32 0, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %211

74:                                               ; preds = %67
  %75 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %76 = call %struct.i915_vma.1* @intel_context_create_request(%struct.intel_context* %75)
  %77 = bitcast %struct.i915_vma.1* %76 to %struct.i915_request*
  store %struct.i915_request* %77, %struct.i915_request** %9, align 8
  %78 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %79 = bitcast %struct.i915_request* %78 to %struct.i915_vma.1*
  %80 = call i64 @IS_ERR(%struct.i915_vma.1* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %84 = bitcast %struct.i915_request* %83 to %struct.i915_vma.1*
  %85 = call i32 @PTR_ERR(%struct.i915_vma.1* %84)
  store i32 %85, i32* %13, align 4
  br label %208

86:                                               ; preds = %74
  %87 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %88 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %89 = bitcast %struct.i915_request* %88 to %struct.i915_vma.1*
  %90 = call i32 @move_to_active(%struct.i915_vma.1* %87, %struct.i915_vma.1* %89, i32 0)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %196

94:                                               ; preds = %86
  %95 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %96 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %97 = bitcast %struct.i915_request* %96 to %struct.i915_vma.1*
  %98 = call i32 @move_to_active(%struct.i915_vma.1* %95, %struct.i915_vma.1* %97, i32 0)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %196

102:                                              ; preds = %94
  %103 = load %struct.igt_spinner*, %struct.igt_spinner** %5, align 8
  %104 = getelementptr inbounds %struct.igt_spinner, %struct.igt_spinner* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %12, align 8
  %106 = load i32, i32* @MI_STORE_DWORD_IMM_GEN4, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  %109 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %110 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %111 = bitcast %struct.i915_request* %110 to %struct.i915_vma.1*
  %112 = call i32 @hws_address(%struct.i915_vma.1* %109, %struct.i915_vma.1* %111)
  %113 = call i8* @lower_32_bits(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  %117 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %118 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %119 = bitcast %struct.i915_request* %118 to %struct.i915_vma.1*
  %120 = call i32 @hws_address(%struct.i915_vma.1* %117, %struct.i915_vma.1* %119)
  %121 = call i8* @upper_32_bits(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load i32*, i32** %12, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  %125 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %126 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  store i32 %128, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %12, align 8
  store i32 %131, i32* %132, align 4
  %134 = load i32, i32* @MI_BATCH_BUFFER_START, align 4
  %135 = or i32 %134, 256
  %136 = or i32 %135, 1
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %12, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %140 = getelementptr inbounds %struct.i915_vma.1, %struct.i915_vma.1* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @lower_32_bits(i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %12, align 8
  store i32 %144, i32* %145, align 4
  %147 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %148 = getelementptr inbounds %struct.i915_vma.1, %struct.i915_vma.1* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @upper_32_bits(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %12, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* @MI_BATCH_BUFFER_END, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  %158 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %159 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @intel_gt_chipset_flush(i32 %160)
  %162 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %163 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %162, i32 0, i32 0
  %164 = load i32 (%struct.i915_vma*)*, i32 (%struct.i915_vma*)** %163, align 8
  %165 = icmp ne i32 (%struct.i915_vma*)* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %102
  %167 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %168 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %175 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %174, i32 0, i32 0
  %176 = load i32 (%struct.i915_vma*)*, i32 (%struct.i915_vma*)** %175, align 8
  %177 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %178 = bitcast %struct.i915_request* %177 to %struct.i915_vma*
  %179 = call i32 %176(%struct.i915_vma* %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %196

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %166, %102
  %185 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %186 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %185, i32 0, i32 1
  %187 = load i32 (%struct.i915_vma.0*, i32, i32, i32)*, i32 (%struct.i915_vma.0*, i32, i32, i32)** %186, align 8
  %188 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %189 = bitcast %struct.i915_request* %188 to %struct.i915_vma.0*
  %190 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %191 = getelementptr inbounds %struct.i915_vma.1, %struct.i915_vma.1* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PAGE_SIZE, align 4
  %195 = call i32 %187(%struct.i915_vma.0* %189, i32 %193, i32 %194, i32 0)
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %184, %182, %101, %93
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %201 = bitcast %struct.i915_request* %200 to %struct.i915_vma.1*
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @i915_request_skip(%struct.i915_vma.1* %201, i32 %202)
  %204 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %205 = bitcast %struct.i915_request* %204 to %struct.i915_vma.1*
  %206 = call i32 @i915_request_add(%struct.i915_vma.1* %205)
  br label %207

207:                                              ; preds = %199, %196
  br label %208

208:                                              ; preds = %207, %82
  %209 = load %struct.i915_vma.1*, %struct.i915_vma.1** %10, align 8
  %210 = call i32 @i915_vma_unpin(%struct.i915_vma.1* %209)
  br label %211

211:                                              ; preds = %208, %73
  %212 = load %struct.i915_vma.1*, %struct.i915_vma.1** %11, align 8
  %213 = call i32 @i915_vma_unpin(%struct.i915_vma.1* %212)
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* %13, align 4
  %218 = call %struct.i915_vma.1* @ERR_PTR(i32 %217)
  %219 = bitcast %struct.i915_vma.1* %218 to i8*
  br label %223

220:                                              ; preds = %211
  %221 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %222 = bitcast %struct.i915_request* %221 to i8*
  br label %223

223:                                              ; preds = %220, %216
  %224 = phi i8* [ %219, %216 ], [ %222, %220 ]
  %225 = bitcast i8* %224 to %struct.i915_request*
  store %struct.i915_request* %225, %struct.i915_request** %4, align 8
  br label %226

226:                                              ; preds = %223, %63, %53, %38
  %227 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  ret %struct.i915_request* %227
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.i915_vma.1* @i915_vma_instance(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma.1*) #1

declare dso_local %struct.i915_vma.1* @ERR_CAST(%struct.i915_vma.1*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma.1*, i32, i32, i32) #1

declare dso_local %struct.i915_vma.1* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma.1* @intel_context_create_request(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma.1*) #1

declare dso_local i32 @move_to_active(%struct.i915_vma.1*, %struct.i915_vma.1*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @hws_address(%struct.i915_vma.1*, %struct.i915_vma.1*) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @intel_gt_chipset_flush(i32) #1

declare dso_local i32 @i915_request_skip(%struct.i915_vma.1*, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma.1*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
