; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_mode = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.ch7006_priv = type { i32, i32 }

@ch7006_modes = common dso_local global %struct.ch7006_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @ch7006_encoder_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_get_modes(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.ch7006_priv*, align 8
  %6 = alloca %struct.ch7006_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %8)
  store %struct.ch7006_priv* %9, %struct.ch7006_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ch7006_mode*, %struct.ch7006_mode** @ch7006_modes, align 8
  store %struct.ch7006_mode* %10, %struct.ch7006_mode** %6, align 8
  br label %11

11:                                               ; preds = %51, %2
  %12 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %13 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %19 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, -1
  %22 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %17
  %29 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %30 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %17
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %43 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %46 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %45, i32 0, i32 2
  %47 = call i32 @drm_mode_duplicate(i32 %44, %struct.TYPE_2__* %46)
  %48 = call i32 @drm_mode_probed_add(%struct.drm_connector* %41, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %40, %39
  %52 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %53 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %52, i32 1
  store %struct.ch7006_mode* %53, %struct.ch7006_mode** %6, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_mode_duplicate(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
