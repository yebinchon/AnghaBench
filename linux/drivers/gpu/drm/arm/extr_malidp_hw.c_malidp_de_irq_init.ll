; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32 }

@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@MALIDP_DC_BLOCK = common dso_local global i32 0, align 4
@malidp_de_irq = common dso_local global i32 0, align 4
@malidp_de_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"malidp-de\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to install DE IRQ handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malidp_de_irq_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.malidp_drm*, align 8
  %7 = alloca %struct.malidp_hw_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %10, align 8
  store %struct.malidp_drm* %11, %struct.malidp_drm** %6, align 8
  %12 = load %struct.malidp_drm*, %struct.malidp_drm** %6, align 8
  %13 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %12, i32 0, i32 0
  %14 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %13, align 8
  store %struct.malidp_hw_device* %14, %struct.malidp_hw_device** %7, align 8
  %15 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %16 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %17 = call i32 @malidp_hw_disable_irq(%struct.malidp_hw_device* %15, i32 %16, i32 -1)
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %19 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %20 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %18, i32 %19, i32 -1)
  %21 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %22 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %23 = call i32 @malidp_hw_disable_irq(%struct.malidp_hw_device* %21, i32 %22, i32 -1)
  %24 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %25 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %26 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %24, i32 %25, i32 -1)
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @malidp_de_irq, align 4
  %32 = load i32, i32* @malidp_de_irq_thread_handler, align 4
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = call i32 @devm_request_threaded_irq(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %43 = call i32 @malidp_de_irq_hw_init(%struct.malidp_hw_device* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @malidp_hw_disable_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_clear_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i8*, %struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @malidp_de_irq_hw_init(%struct.malidp_hw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
