; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_drv.c_fsl_dcu_drm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_drv.c_fsl_dcu_drm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32 }

@DCU_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"read DCU_INT_STATUS failed\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@DCU_INT_STATUS_VBLANK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_dcu_drm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dcu_drm_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.fsl_dcu_drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.drm_device*
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %13, align 8
  store %struct.fsl_dcu_drm_device* %14, %struct.fsl_dcu_drm_device** %7, align 8
  %15 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DCU_INT_STATUS, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DCU_INT_STATUS_VBLANK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = call i32 @drm_handle_vblank(%struct.drm_device* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %7, align 8
  %38 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DCU_INT_STATUS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_handle_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
