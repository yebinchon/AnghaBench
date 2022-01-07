; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_load_render_mocs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_load_render_mocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8**, i8*** }
%struct.drm_i915_private = type { %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@GEN9_MOCS_SIZE = common dso_local global i32 0, align 4
@gen9_render_mocs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @load_render_mocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_render_mocs(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  store %struct.intel_gvt* %11, %struct.intel_gvt** %3, align 8
  %12 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %89

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @HAS_ENGINE(%struct.drm_i915_private* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %64

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %60, %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @I915_READ_FW(i32 %47)
  %49 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gen9_render_mocs, i32 0, i32 2), align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %48, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %41

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %24

67:                                               ; preds = %24
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 45088, i32* %68, align 4
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %85, %67
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %72 = sdiv i32 %71, 2
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @I915_READ_FW(i32 %76)
  %78 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gen9_render_mocs, i32 0, i32 1), align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %77, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %69

88:                                               ; preds = %69
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gen9_render_mocs, i32 0, i32 0), align 8
  br label %89

89:                                               ; preds = %88, %22
  ret void
}

declare dso_local i32 @HAS_ENGINE(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ_FW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
