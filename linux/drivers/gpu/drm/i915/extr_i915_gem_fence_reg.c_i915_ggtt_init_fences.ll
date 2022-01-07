; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_ggtt_init_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_ggtt_init_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i915_ggtt = type { i32, i32, %struct.i915_fence_reg*, i32, i32, %struct.TYPE_3__ }
%struct.i915_fence_reg = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }

@avail_rs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_ggtt_init_fences(%struct.i915_ggtt* %0) #0 {
  %2 = alloca %struct.i915_ggtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_fence_reg*, align 8
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %2, align 8
  %7 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %8 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %12 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %11, i32 0, i32 1
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %15 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %18 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %17, i32 0, i32 3
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = call i32 @intel_wakeref_auto_init(i32* %18, i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i32 @detect_bit_6_swizzle(%struct.drm_i915_private* %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 7
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 32, i32* %4, align 4
  br label %59

36:                                               ; preds = %31, %27, %1
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 4
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @IS_I945G(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = call i64 @IS_I945GM(%struct.drm_i915_private* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i64 @IS_G33(%struct.drm_i915_private* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %40, %36
  store i32 16, i32* %4, align 4
  br label %58

57:                                               ; preds = %52
  store i32 8, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @avail_rs, i32 0, i32 0), align 4
  %67 = call i32 @vgtif_reg(i32 %66)
  %68 = call i32 @intel_uncore_read(i32* %65, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %59
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %76 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %75, i32 0, i32 2
  %77 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %77, i64 %79
  store %struct.i915_fence_reg* %80, %struct.i915_fence_reg** %6, align 8
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %6, align 8
  %83 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %82, i32 0, i32 2
  store %struct.drm_i915_private* %81, %struct.drm_i915_private** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %6, align 8
  %86 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %6, align 8
  %88 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %87, i32 0, i32 1
  %89 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %90 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %89, i32 0, i32 1
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %98 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %100 = call i32 @i915_gem_restore_fences(%struct.drm_i915_private* %99)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @intel_wakeref_auto_init(i32*, i32*) #1

declare dso_local i32 @detect_bit_6_swizzle(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_read(i32*, i32) #1

declare dso_local i32 @vgtif_reg(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i915_gem_restore_fences(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
