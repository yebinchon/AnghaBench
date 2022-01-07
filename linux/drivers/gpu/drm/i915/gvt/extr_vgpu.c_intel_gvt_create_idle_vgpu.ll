; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_create_idle_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_create_idle_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_2__, i32, %struct.intel_gvt*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.intel_gvt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IDLE_VGPU_IDR = common dso_local global i32 0, align 4
@I915_NUM_ENGINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_vgpu* @intel_gvt_create_idle_vgpu(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %7 = call %struct.intel_vgpu* @vzalloc(i32 40)
  store %struct.intel_vgpu* %7, %struct.intel_vgpu** %4, align 8
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %9 = icmp ne %struct.intel_vgpu* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.intel_vgpu* @ERR_PTR(i32 %12)
  store %struct.intel_vgpu* %13, %struct.intel_vgpu** %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load i32, i32* @IDLE_VGPU_IDR, align 4
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 3
  store %struct.intel_gvt* %18, %struct.intel_gvt** %20, align 8
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %37, %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @I915_NUM_ENGINES, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %42 = call i32 @intel_vgpu_init_sched_policy(%struct.intel_vgpu* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  store %struct.intel_vgpu* %49, %struct.intel_vgpu** %2, align 8
  br label %55

50:                                               ; preds = %45
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %52 = call i32 @vfree(%struct.intel_vgpu* %51)
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.intel_vgpu* @ERR_PTR(i32 %53)
  store %struct.intel_vgpu* %54, %struct.intel_vgpu** %2, align 8
  br label %55

55:                                               ; preds = %50, %46, %10
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  ret %struct.intel_vgpu* %56
}

declare dso_local %struct.intel_vgpu* @vzalloc(i32) #1

declare dso_local %struct.intel_vgpu* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @intel_vgpu_init_sched_policy(%struct.intel_vgpu*) #1

declare dso_local i32 @vfree(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
