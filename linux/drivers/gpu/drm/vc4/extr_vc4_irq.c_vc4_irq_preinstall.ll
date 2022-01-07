; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, i32, i32 }

@vc4_overflow_mem_work = common dso_local global i32 0, align 4
@V3D_INTCTL = common dso_local global i32 0, align 4
@V3D_DRIVER_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_irq_preinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %4)
  store %struct.vc4_dev* %5, %struct.vc4_dev** %3, align 8
  %6 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %12, i32 0, i32 1
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @vc4_overflow_mem_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load i32, i32* @V3D_INTCTL, align 4
  %20 = load i32, i32* @V3D_DRIVER_IRQS, align 4
  %21 = call i32 @V3D_WRITE(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
