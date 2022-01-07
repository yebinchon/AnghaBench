; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_opregion }
%struct.intel_opregion = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCI_D1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_opregion_unregister(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_opregion*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_opregion* %5, %struct.intel_opregion** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = load i32, i32* @PCI_D1, align 4
  %8 = call i32 @intel_opregion_suspend(%struct.drm_i915_private* %6, i32 %7)
  %9 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %10 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %16 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %22 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %21, i32 0, i32 8
  %23 = call i32 @unregister_acpi_notifier(%struct.TYPE_2__* %22)
  %24 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %25 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %29 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @memunmap(i32* %30)
  %32 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %33 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %38 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memunmap(i32* %39)
  %41 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %42 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %27
  %44 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %45 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %50 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %54 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %57 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %56, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %59 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %61 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %63 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %65 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %67 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %55, %13
  ret void
}

declare dso_local i32 @intel_opregion_suspend(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @unregister_acpi_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @memunmap(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
