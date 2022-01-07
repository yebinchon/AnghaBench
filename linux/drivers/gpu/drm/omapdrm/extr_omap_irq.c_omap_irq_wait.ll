; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32 }
%struct.omap_irq_wait = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_irq_wait(%struct.drm_device* %0, %struct.omap_irq_wait* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.omap_irq_wait*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.omap_drm_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.omap_irq_wait* %1, %struct.omap_irq_wait** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %11, align 8
  store %struct.omap_drm_private* %12, %struct.omap_drm_private** %7, align 8
  %13 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %5, align 8
  %14 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %5, align 8
  %17 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @wait_event_timeout(i32 %15, i32 %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %24 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %5, align 8
  %28 = getelementptr inbounds %struct.omap_irq_wait, %struct.omap_irq_wait* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = call i32 @omap_irq_update(%struct.drm_device* %30)
  %32 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %33 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %5, align 8
  %37 = call i32 @kfree(%struct.omap_irq_wait* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 0
  ret i32 %41
}

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @omap_irq_update(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.omap_irq_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
