; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_render_state_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_renderstate.c_render_state_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_renderstate = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.intel_renderstate_rodata* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_renderstate_rodata = type { i32, i32*, i32* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"only %d relocs resolved\0A\00", align 1
@CACHELINE_DWORDS = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@GEN9_MEDIA_POOL_STATE = common dso_local global i32 0, align 4
@GEN9_MEDIA_POOL_ENABLE = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_renderstate*, %struct.drm_i915_private*)* @render_state_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_state_setup(%struct.intel_renderstate* %0, %struct.drm_i915_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_renderstate*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_renderstate_rodata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_renderstate* %0, %struct.intel_renderstate** %4, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %16 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %15, i32 0, i32 6
  %17 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %16, align 8
  store %struct.intel_renderstate_rodata* %17, %struct.intel_renderstate_rodata** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %19 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @i915_gem_object_prepare_write(i32 %20, i32* %9)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %230

26:                                               ; preds = %2
  %27 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %28 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i915_gem_object_get_dirty_page(i32 %29, i32 0)
  %31 = call i32* @kmap_atomic(i32 %30)
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %100, %26
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %35 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %32
  %39 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %40 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul i32 %46, 4
  %48 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %49 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %38
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %59 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @lower_32_bits(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %68 = call i64 @HAS_64BIT_RELOC(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %56
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  %73 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %74 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp uge i32 %72, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %79 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77, %70
  br label %225

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @upper_32_bits(i32 %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %88, %56
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %38
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  br label %32

107:                                              ; preds = %32
  %108 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %109 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %225

119:                                              ; preds = %107
  %120 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %121 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %120, i32 0, i32 5
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = call i64 @i915_ggtt_offset(%struct.TYPE_4__* %122)
  %124 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %125 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  %126 = load %struct.intel_renderstate_rodata*, %struct.intel_renderstate_rodata** %6, align 8
  %127 = getelementptr inbounds %struct.intel_renderstate_rodata, %struct.intel_renderstate_rodata* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %133 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %139, %119
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @CACHELINE_DWORDS, align 4
  %137 = urem i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @MI_NOOP, align 4
  %143 = call i32 @OUT_BATCH(i32* %140, i32 %141, i32 %142)
  br label %134

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %150 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %152 = call i64 @HAS_POOLED_EU(%struct.drm_i915_private* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %176

154:                                              ; preds = %144
  store i32 7827456, i32* %14, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @GEN9_MEDIA_POOL_STATE, align 4
  %158 = call i32 @OUT_BATCH(i32* %155, i32 %156, i32 %157)
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @GEN9_MEDIA_POOL_ENABLE, align 4
  %162 = call i32 @OUT_BATCH(i32* %159, i32 %160, i32 %161)
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @OUT_BATCH(i32* %163, i32 %164, i32 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @OUT_BATCH(i32* %167, i32 %168, i32 0)
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @OUT_BATCH(i32* %170, i32 %171, i32 0)
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @OUT_BATCH(i32* %173, i32 %174, i32 0)
  br label %176

176:                                              ; preds = %154, %144
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @MI_BATCH_BUFFER_END, align 4
  %180 = call i32 @OUT_BATCH(i32* %177, i32 %178, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = zext i32 %181 to i64
  %183 = mul i64 %182, 4
  %184 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %185 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  %188 = sub i64 %183, %187
  %189 = trunc i64 %188 to i32
  %190 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %191 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %193 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %196 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  %199 = add nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %202 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ALIGN(i32 %203, i32 8)
  %205 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %206 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %176
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %7, align 4
  %212 = zext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = call i32 @drm_clflush_virt_range(i32* %210, i32 %214)
  br label %216

216:                                              ; preds = %209, %176
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @kunmap_atomic(i32* %217)
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %225, %216
  %220 = load %struct.intel_renderstate*, %struct.intel_renderstate** %4, align 8
  %221 = getelementptr inbounds %struct.intel_renderstate, %struct.intel_renderstate* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @i915_gem_object_finish_access(i32 %222)
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %3, align 4
  br label %230

225:                                              ; preds = %116, %87
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @kunmap_atomic(i32* %226)
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %11, align 4
  br label %219

230:                                              ; preds = %219, %24
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @i915_gem_object_prepare_write(i32, i32*) #1

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @i915_gem_object_get_dirty_page(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @HAS_64BIT_RELOC(%struct.drm_i915_private*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @i915_ggtt_offset(%struct.TYPE_4__*) #1

declare dso_local i32 @OUT_BATCH(i32*, i32, i32) #1

declare dso_local i64 @HAS_POOLED_EU(%struct.drm_i915_private*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @drm_clflush_virt_range(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @i915_gem_object_finish_access(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
