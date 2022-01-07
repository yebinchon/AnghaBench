; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_se_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_se_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32 }

@MALIDP_SE_BLOCK = common dso_local global i32 0, align 4
@malidp_se_irq = common dso_local global i32 0, align 4
@malidp_se_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"malidp-se\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to install SE IRQ handler\0A\00", align 1
@MW_NOT_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malidp_se_irq_init(%struct.drm_device* %0, i32 %1) #0 {
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
  %16 = load i32, i32* @MALIDP_SE_BLOCK, align 4
  %17 = call i32 @malidp_hw_disable_irq(%struct.malidp_hw_device* %15, i32 %16, i32 -1)
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %19 = load i32, i32* @MALIDP_SE_BLOCK, align 4
  %20 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %18, i32 %19, i32 -1)
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @malidp_se_irq, align 4
  %26 = load i32, i32* @malidp_se_irq_thread_handler, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @devm_request_threaded_irq(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @MW_NOT_ENABLED, align 4
  %37 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %38 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %40 = call i32 @malidp_se_irq_hw_init(%struct.malidp_hw_device* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @malidp_hw_disable_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_clear_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i8*, %struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @malidp_se_irq_hw_init(%struct.malidp_hw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
