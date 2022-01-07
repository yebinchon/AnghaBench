; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_select_legacy_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_select_legacy_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_execbuffer2 = type { i32 }

@I915_EXEC_RING_MASK = common dso_local global i32 0, align 4
@I915_EXEC_BSD = common dso_local global i32 0, align 4
@I915_EXEC_BSD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"execbuf with non bsd ring but with invalid bsd dispatch flags: %d\0A\00", align 1
@I915_EXEC_BSD_DEFAULT = common dso_local global i32 0, align 4
@I915_EXEC_BSD_RING1 = common dso_local global i32 0, align 4
@I915_EXEC_BSD_RING2 = common dso_local global i32 0, align 4
@I915_EXEC_BSD_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"execbuf with unknown bsd ring: %u\0A\00", align 1
@user_ring_map = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"execbuf with unknown ring: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.drm_file*, %struct.drm_i915_gem_execbuffer2*)* @eb_select_legacy_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_select_legacy_ring(%struct.i915_execbuffer* %0, %struct.drm_file* %1, %struct.drm_i915_gem_execbuffer2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_i915_gem_execbuffer2*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_i915_gem_execbuffer2* %2, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %11 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I915_EXEC_RING_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @I915_EXEC_BSD, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I915_EXEC_BSD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %4, align 4
  br label %90

34:                                               ; preds = %22, %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @I915_EXEC_BSD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %40 = call i32 @num_vcs_engines(%struct.drm_i915_private* %39)
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I915_EXEC_BSD_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @I915_EXEC_BSD_DEFAULT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %53 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %54 = call i32 @gen8_dispatch_bsd_engine(%struct.drm_i915_private* %52, %struct.drm_file* %53)
  store i32 %54, i32* %10, align 4
  br label %73

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @I915_EXEC_BSD_RING1, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @I915_EXEC_BSD_RING2, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @I915_EXEC_BSD_SHIFT, align 4
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 -1, i32* %4, align 4
  br label %90

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @_VCS(i32 %74)
  store i32 %75, i32* %4, align 4
  br label %90

76:                                               ; preds = %38, %34
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** @user_ring_map, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = icmp uge i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 -1, i32* %4, align 4
  br label %90

84:                                               ; preds = %76
  %85 = load i32*, i32** @user_ring_map, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %81, %73, %69, %29
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @num_vcs_engines(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_dispatch_bsd_engine(%struct.drm_i915_private*, %struct.drm_file*) #1

declare dso_local i32 @_VCS(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
