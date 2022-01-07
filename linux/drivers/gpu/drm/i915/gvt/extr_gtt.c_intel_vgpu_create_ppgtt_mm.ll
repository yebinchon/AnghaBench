; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_create_ppgtt_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_create_ppgtt_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.intel_vgpu = type { %struct.TYPE_4__, %struct.intel_gvt* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_gvt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INTEL_GVT_MM_PPGTT = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_ROOT_L3_ENTRY = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_ROOT_L4_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to shadow ppgtt mm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_vgpu_mm* @intel_vgpu_create_ppgtt_mm(%struct.intel_vgpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.intel_vgpu_mm*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.intel_gvt*, align 8
  %9 = alloca %struct.intel_vgpu_mm*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %12, align 8
  store %struct.intel_gvt* %13, %struct.intel_gvt** %8, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %15 = call %struct.intel_vgpu_mm* @vgpu_alloc_mm(%struct.intel_vgpu* %14)
  store %struct.intel_vgpu_mm* %15, %struct.intel_vgpu_mm** %9, align 8
  %16 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %17 = icmp ne %struct.intel_vgpu_mm* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.intel_vgpu_mm* @ERR_PTR(i32 %20)
  store %struct.intel_vgpu_mm* %21, %struct.intel_vgpu_mm** %4, align 8
  br label %103

22:                                               ; preds = %3
  %23 = load i32, i32* @INTEL_GVT_MM_PPGTT, align 4
  %24 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GTT_TYPE_PPGTT_ROOT_L3_ENTRY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GTT_TYPE_PPGTT_ROOT_L4_ENTRY, align 4
  %32 = icmp ne i32 %30, %31
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi i1 [ false, %22 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %42 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @GTT_TYPE_PPGTT_ROOT_L4_ENTRY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %33
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %57 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %55, i32* %60, align 4
  br label %68

61:                                               ; preds = %33
  %62 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %63 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @memcpy(i32* %65, i32* %66, i32 8)
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %70 = call i32 @shadow_ppgtt_mm(%struct.intel_vgpu_mm* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %76 = call i32 @vgpu_free_mm(%struct.intel_vgpu_mm* %75)
  %77 = load i32, i32* %10, align 4
  %78 = call %struct.intel_vgpu_mm* @ERR_PTR(i32 %77)
  store %struct.intel_vgpu_mm* %78, %struct.intel_vgpu_mm** %4, align 8
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %81 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %84 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %82, i32* %85)
  %87 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %88 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  %92 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %95 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = call i32 @list_add_tail(i32* %93, i32* %96)
  %98 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %99 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %9, align 8
  store %struct.intel_vgpu_mm* %102, %struct.intel_vgpu_mm** %4, align 8
  br label %103

103:                                              ; preds = %79, %73, %18
  %104 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  ret %struct.intel_vgpu_mm* %104
}

declare dso_local %struct.intel_vgpu_mm* @vgpu_alloc_mm(%struct.intel_vgpu*) #1

declare dso_local %struct.intel_vgpu_mm* @ERR_PTR(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @shadow_ppgtt_mm(%struct.intel_vgpu_mm*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @vgpu_free_mm(%struct.intel_vgpu_mm*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
