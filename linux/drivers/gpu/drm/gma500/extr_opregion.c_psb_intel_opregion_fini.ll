; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_opregion }
%struct.psb_intel_opregion = type { i32*, i32*, i32*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@system_opregion = common dso_local global i32* null, align 8
@psb_intel_opregion_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_intel_opregion_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.psb_intel_opregion*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %8, i32 0, i32 0
  store %struct.psb_intel_opregion* %9, %struct.psb_intel_opregion** %4, align 8
  %10 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %11 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %17 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %22 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  store i32* null, i32** @system_opregion, align 8
  %25 = call i32 @unregister_acpi_notifier(i32* @psb_intel_opregion_notifier)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %28 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %27, i32 0, i32 5
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %31 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @iounmap(i32* %32)
  %34 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %35 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %37 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %36, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %39 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %41 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.psb_intel_opregion*, %struct.psb_intel_opregion** %4, align 8
  %43 = getelementptr inbounds %struct.psb_intel_opregion, %struct.psb_intel_opregion* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @unregister_acpi_notifier(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
