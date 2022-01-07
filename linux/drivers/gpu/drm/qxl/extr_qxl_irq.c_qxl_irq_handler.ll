; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_irq.c_qxl_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_irq.c_qxl_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.qxl_device = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@QXL_INTERRUPT_DISPLAY = common dso_local global i32 0, align 4
@QXL_INTERRUPT_CURSOR = common dso_local global i32 0, align 4
@QXL_INTERRUPT_IO_CMD = common dso_local global i32 0, align 4
@QXL_INTERRUPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"driver is in bug mode\0A\00", align 1
@QXL_INTERRUPT_CLIENT_MONITORS_CONFIG = common dso_local global i32 0, align 4
@QXL_INTERRUPT_MASK = common dso_local global i32 0, align 4
@QXL_IO_UPDATE_IRQ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.drm_device*
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qxl_device*
  store %struct.qxl_device* %14, %struct.qxl_device** %7, align 8
  %15 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %16 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @xchg(i32* %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %98

24:                                               ; preds = %2
  %25 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %26 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %25, i32 0, i32 10
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @QXL_INTERRUPT_DISPLAY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %34 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %33, i32 0, i32 9
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 8
  %38 = call i32 @wake_up_all(i32* %37)
  %39 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %40 = call i32 @qxl_queue_garbage_collect(%struct.qxl_device* %39, i32 0)
  br label %41

41:                                               ; preds = %32, %24
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @QXL_INTERRUPT_CURSOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %48 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %47, i32 0, i32 7
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %51 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %50, i32 0, i32 6
  %52 = call i32 @wake_up_all(i32* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @QXL_INTERRUPT_IO_CMD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %60 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %59, i32 0, i32 5
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %63 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %62, i32 0, i32 4
  %64 = call i32 @wake_up_all(i32* %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @QXL_INTERRUPT_ERROR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %72 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = call i32 @DRM_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @QXL_INTERRUPT_CLIENT_MONITORS_CONFIG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %83 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %82, i32 0, i32 2
  %84 = call i32 @schedule_work(i32* %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* @QXL_INTERRUPT_MASK, align 4
  %87 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %88 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %92 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @QXL_IO_UPDATE_IRQ, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 0, i64 %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %85, %22
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @qxl_queue_garbage_collect(%struct.qxl_device*, i32) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
