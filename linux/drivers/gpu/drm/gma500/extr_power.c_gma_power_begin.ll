; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_power_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_power_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.drm_psb_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_psb_private = type { i32, i64 }

@power_ctrl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_power_begin(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @power_ctrl_lock, i64 %12)
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %15 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_get(i32* %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @power_ctrl_lock, i64 %28)
  store i32 1, i32* %3, align 4
  br label %61

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %58

34:                                               ; preds = %30
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @gma_resume_pci(%struct.TYPE_2__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = call i32 @psb_irq_preinstall(%struct.drm_device* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call i32 @psb_irq_postinstall(%struct.drm_device* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_get(i32* %49)
  %51 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %52 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @power_ctrl_lock, i64 %55)
  store i32 1, i32* %3, align 4
  br label %61

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* @power_ctrl_lock, i64 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %41, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm_runtime_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gma_resume_pci(%struct.TYPE_2__*) #1

declare dso_local i32 @psb_irq_preinstall(%struct.drm_device*) #1

declare dso_local i32 @psb_irq_postinstall(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
