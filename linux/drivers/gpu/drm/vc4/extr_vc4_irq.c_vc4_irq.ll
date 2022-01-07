; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@V3D_INTCTL = common dso_local global i32 0, align 4
@V3D_INT_OUTOMEM = common dso_local global i32 0, align 4
@V3D_INTDIS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@V3D_INT_FLDONE = common dso_local global i32 0, align 4
@V3D_INT_FRDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.drm_device*
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %11)
  store %struct.vc4_dev* %12, %struct.vc4_dev** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @barrier()
  %15 = load i32, i32* @V3D_INTCTL, align 4
  %16 = call i32 @V3D_READ(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @V3D_INTCTL, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @V3D_WRITE(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @V3D_INT_OUTOMEM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @V3D_INTDIS, align 4
  %26 = load i32, i32* @V3D_INT_OUTOMEM, align 4
  %27 = call i32 @V3D_WRITE(i32 %25, i32 %26)
  %28 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %29 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %28, i32 0, i32 1
  %30 = call i32 @schedule_work(i32* %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @V3D_INT_FLDONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %39 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i32 @vc4_irq_finish_bin_job(%struct.drm_device* %41)
  %43 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %44 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @V3D_INT_FRDONE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %54 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = call i32 @vc4_irq_finish_render_job(%struct.drm_device* %56)
  %58 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %59 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %52, %47
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vc4_irq_finish_bin_job(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vc4_irq_finish_render_job(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
