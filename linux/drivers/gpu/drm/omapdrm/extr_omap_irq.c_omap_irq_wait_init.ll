; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_wait_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_wait_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_irq_wait = type { i32, i32, i32, i32 }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_irq_wait* @omap_irq_wait_init(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_drm_private*, align 8
  %8 = alloca %struct.omap_irq_wait*, align 8
  %9 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %11, align 8
  store %struct.omap_drm_private* %12, %struct.omap_drm_private** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.omap_irq_wait* @kzalloc(i32 16, i32 %13)
  store %struct.omap_irq_wait* %14, %struct.omap_irq_wait** %8, align 8
  %15 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %8, align 8
  %16 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %15, i32 0, i32 3
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %8, align 8
  %20 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %8, align 8
  %23 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %8, align 8
  %29 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %28, i32 0, i32 1
  %30 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %31 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %30, i32 0, i32 1
  %32 = call i32 @list_add(i32* %29, i32* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = call i32 @omap_irq_update(%struct.drm_device* %33)
  %35 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %36 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %8, align 8
  ret %struct.omap_irq_wait* %39
}

declare dso_local %struct.omap_irq_wait* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @omap_irq_update(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
