; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_set_and_wait_config_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_set_and_wait_config_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { i32, i32, %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*, i32)* }

@MALIDP_CONFIG_VALID_DONE = common dso_local global i64 0, align 8
@MALIDP_CONF_VALID_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @malidp_set_and_wait_config_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_set_and_wait_config_valid(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca %struct.malidp_hw_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.malidp_drm*, %struct.malidp_drm** %8, align 8
  store %struct.malidp_drm* %9, %struct.malidp_drm** %4, align 8
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %11 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %10, i32 0, i32 2
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %11, align 8
  store %struct.malidp_hw_device* %12, %struct.malidp_hw_device** %5, align 8
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %14 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.malidp_hw_device*, i32)*, i32 (%struct.malidp_hw_device*, i32)** %16, align 8
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %19 = call i32 %17(%struct.malidp_hw_device* %18, i32 1)
  %20 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %21 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.malidp_hw_device*)*, i64 (%struct.malidp_hw_device*)** %23, align 8
  %25 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %26 = call i64 %24(%struct.malidp_hw_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %30 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %29, i32 0, i32 0
  %31 = load i64, i64* @MALIDP_CONFIG_VALID_DONE, align 8
  %32 = call i32 @atomic_set(i32* %30, i64 %31)
  store i32 0, i32* %2, align 4
  br label %54

33:                                               ; preds = %1
  %34 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %35 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %38 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %37, i32 0, i32 0
  %39 = call i64 @atomic_read(i32* %38)
  %40 = load i64, i64* @MALIDP_CONFIG_VALID_DONE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @MALIDP_CONF_VALID_TIMEOUT, align 4
  %44 = call i32 @msecs_to_jiffies(i32 %43)
  %45 = call i32 @wait_event_interruptible_timeout(i32 %36, i32 %42, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %28
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
