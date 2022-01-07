; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_irq.c_qxl_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_irq.c_qxl_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_5__*, %struct.TYPE_6__, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@qxl_client_monitors_config_work_func = common dso_local global i32 0, align 4
@QXL_INTERRUPT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed installing irq: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_irq_init(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %5 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %6 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %5, i32 0, i32 10
  %7 = call i32 @init_waitqueue_head(i32* %6)
  %8 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %9 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %8, i32 0, i32 9
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %12 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %11, i32 0, i32 8
  %13 = call i32 @init_waitqueue_head(i32* %12)
  %14 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %15 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %14, i32 0, i32 7
  %16 = load i32, i32* @qxl_client_monitors_config_work_func, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %19 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %18, i32 0, i32 6
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %22 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %21, i32 0, i32 5
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %25 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %24, i32 0, i32 4
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %28 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %27, i32 0, i32 3
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %31 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 1
  %34 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %35 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_irq_install(%struct.TYPE_6__* %33, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @QXL_INTERRUPT_MASK, align 4
  %42 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %43 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
