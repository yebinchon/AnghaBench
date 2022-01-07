; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no 'DE' IRQ specified!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no 'SE' IRQ specified!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @malidp_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_irq_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.malidp_drm*, align 8
  %9 = alloca %struct.malidp_hw_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.drm_device* @dev_get_drvdata(i32* %11)
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.malidp_drm*, %struct.malidp_drm** %14, align 8
  store %struct.malidp_drm* %15, %struct.malidp_drm** %8, align 8
  %16 = load %struct.malidp_drm*, %struct.malidp_drm** %8, align 8
  %17 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %16, i32 0, i32 0
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %17, align 8
  store %struct.malidp_hw_device* %18, %struct.malidp_hw_device** %9, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @platform_get_irq_byname(%struct.platform_device* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq_byname(%struct.platform_device* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @malidp_de_irq_init(%struct.drm_device* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %34
  %43 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @malidp_se_irq_init(%struct.drm_device* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %50 = call i32 @malidp_de_irq_fini(%struct.malidp_hw_device* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %48, %40, %31, %23
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @malidp_de_irq_init(%struct.drm_device*, i32) #1

declare dso_local i32 @malidp_se_irq_init(%struct.drm_device*, i32) #1

declare dso_local i32 @malidp_de_irq_fini(%struct.malidp_hw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
