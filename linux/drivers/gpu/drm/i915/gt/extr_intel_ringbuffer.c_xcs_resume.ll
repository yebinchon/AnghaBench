; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_xcs_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_xcs_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.TYPE_2__, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { %struct.intel_ring* }
%struct.intel_ring = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: ring:{HEAD:%04x, TAIL:%04x}\0A\00", align 1
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"%s head not reset to zero ctl %08x head %08x tail %08x start %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"failed to set %s head to zero ctl %08x head %08x tail %08x start %08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RING_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [108 x i8] c"%s initialization failed ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\0A\00", align 1
@STOP_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @xcs_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcs_resume(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.intel_ring*, %struct.intel_ring** %11, align 8
  store %struct.intel_ring* %12, %struct.intel_ring** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %17 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %20 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FORCEWAKE_ALL, align 4
  %27 = call i32 @intel_uncore_forcewake_get(i32 %25, i32 %26)
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %29 = call i32 @stop_ring(%struct.intel_engine_cs* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %1
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %33 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %36 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %35, i32 (i32)* @RING_CTL)
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %38 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %37, i32 (i32)* @RING_HEAD)
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %40 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %39, i32 (i32)* @RING_TAIL)
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %42 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %41, i32 (i32)* @RING_START)
  %43 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %45 = call i32 @stop_ring(%struct.intel_engine_cs* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %31
  %48 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %49 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %52 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %51, i32 (i32)* @RING_CTL)
  %53 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %54 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %53, i32 (i32)* @RING_HEAD)
  %55 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %56 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %55, i32 (i32)* @RING_TAIL)
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %58 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %57, i32 (i32)* @RING_START)
  %59 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52, i32 %54, i32 %56, i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %192

62:                                               ; preds = %31
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i64 @HWS_NEEDS_PHYSICAL(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %69 = call i32 @ring_setup_phys_status_page(%struct.intel_engine_cs* %68)
  br label %73

70:                                               ; preds = %63
  %71 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %72 = call i32 @ring_setup_status_page(%struct.intel_engine_cs* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %75 = call i32 @intel_engine_reset_breadcrumbs(%struct.intel_engine_cs* %74)
  %76 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %77 = call i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs* %76, i32 (i32)* @RING_HEAD)
  %78 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %79 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %80 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @i915_ggtt_offset(i32 %81)
  %83 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %78, i32 (i32)* @RING_START, i32 %82)
  %84 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %85 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %86 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @intel_ring_offset_valid(%struct.intel_ring* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @GEM_BUG_ON(i32 %91)
  %93 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %94 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %95 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @intel_ring_offset_valid(%struct.intel_ring* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @GEM_BUG_ON(i32 %100)
  %102 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %103 = call i32 @intel_ring_update_space(%struct.intel_ring* %102)
  %104 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %105 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %106 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %104, i32 (i32)* @RING_HEAD, i32 %107)
  %109 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %110 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %111 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %109, i32 (i32)* @RING_TAIL, i32 %112)
  %114 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %115 = call i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs* %114, i32 (i32)* @RING_TAIL)
  %116 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %117 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %118 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @RING_CTL_SIZE(i32 %119)
  %121 = load i32, i32* @RING_VALID, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %116, i32 (i32)* @RING_CTL, i32 %122)
  %124 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %125 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %128 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @RING_CTL(i32 %129)
  %131 = load i32, i32* @RING_VALID, align 4
  %132 = load i32, i32* @RING_VALID, align 4
  %133 = call i64 @intel_wait_for_register(i32 %126, i32 %130, i32 %131, i32 %132, i32 50)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %73
  %136 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %137 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %140 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %139, i32 (i32)* @RING_CTL)
  %141 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %142 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %141, i32 (i32)* @RING_CTL)
  %143 = load i32, i32* @RING_VALID, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %146 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %145, i32 (i32)* @RING_HEAD)
  %147 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %148 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %151 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %150, i32 (i32)* @RING_TAIL)
  %152 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %153 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %156 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %155, i32 (i32)* @RING_START)
  %157 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %158 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @i915_ggtt_offset(i32 %159)
  %161 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %140, i32 %144, i32 %146, i32 %149, i32 %151, i32 %154, i32 %156, i32 %160)
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %192

164:                                              ; preds = %73
  %165 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %166 = call i32 @INTEL_GEN(%struct.drm_i915_private* %165)
  %167 = icmp sgt i32 %166, 2
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %170 = load i32, i32* @STOP_RING, align 4
  %171 = call i32 @_MASKED_BIT_DISABLE(i32 %170)
  %172 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %169, i32 (i32)* @RING_MI_MODE, i32 %171)
  br label %173

173:                                              ; preds = %168, %164
  %174 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %175 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %178 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %183 = load %struct.intel_ring*, %struct.intel_ring** %4, align 8
  %184 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %182, i32 (i32)* @RING_TAIL, i32 %185)
  %187 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %188 = call i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs* %187, i32 (i32)* @RING_TAIL)
  br label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %191 = call i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs* %190)
  br label %192

192:                                              ; preds = %189, %135, %47
  %193 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %194 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @FORCEWAKE_ALL, align 4
  %197 = call i32 @intel_uncore_forcewake_put(i32 %195, i32 %196)
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32, i32) #1

declare dso_local i32 @stop_ring(%struct.intel_engine_cs*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32 (i32)*) #1

declare dso_local i32 @RING_CTL(i32) #1

declare dso_local i32 @RING_HEAD(i32) #1

declare dso_local i32 @RING_TAIL(i32) #1

declare dso_local i32 @RING_START(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i64 @HWS_NEEDS_PHYSICAL(%struct.drm_i915_private*) #1

declare dso_local i32 @ring_setup_phys_status_page(%struct.intel_engine_cs*) #1

declare dso_local i32 @ring_setup_status_page(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_reset_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs*, i32 (i32)*) #1

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32 (i32)*, i32) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_ring_offset_valid(%struct.intel_ring*, i32) #1

declare dso_local i32 @intel_ring_update_space(%struct.intel_ring*) #1

declare dso_local i32 @RING_CTL_SIZE(i32) #1

declare dso_local i64 @intel_wait_for_register(i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @RING_MI_MODE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
