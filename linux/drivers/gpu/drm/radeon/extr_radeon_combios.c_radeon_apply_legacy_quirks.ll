; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_apply_legacy_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_apply_legacy_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_i2c_bus_rec = type { i64 }
%struct.radeon_hpd = type { i32 }

@CONNECTOR_CRT_LEGACY = common dso_local global i32 0, align 4
@RADEON_GPIO_CRT2_DDC = common dso_local global i64 0, align 8
@CONNECTOR_DVI_I_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, %struct.radeon_i2c_bus_rec*, %struct.radeon_hpd*)* @radeon_apply_legacy_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_apply_legacy_quirks(%struct.drm_device* %0, i32 %1, i32* %2, %struct.radeon_i2c_bus_rec* %3, %struct.radeon_hpd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %11 = alloca %struct.radeon_hpd*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.radeon_i2c_bus_rec* %3, %struct.radeon_i2c_bus_rec** %10, align 8
  store %struct.radeon_hpd* %4, %struct.radeon_hpd** %11, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 20830
  br i1 %17, label %18, label %38

18:                                               ; preds = %5
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 4116
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CONNECTOR_CRT_LEGACY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %10, align 8
  %32 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RADEON_GPIO_CRT2_DDC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %70

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %18, %5
  %39 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 23392
  br i1 %44, label %45, label %69

45:                                               ; preds = %38
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 6063
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8222
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CONNECTOR_DVI_I_LEGACY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %70

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %59, %52, %45, %38
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %67, %36
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
