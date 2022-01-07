; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.ch7006_priv = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CH7006_POWER = common dso_local global i64 0, align 8
@CH7006_POWER_RESET = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8
@CH7006_POWER_LEVEL = common dso_local global i32 0, align 4
@CVBS_OFF = common dso_local global i32 0, align 4
@SVIDEO_OFF = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@CH7006_POWER_SCART = common dso_local global i32 0, align 4
@FULL_POWER_OFF = common dso_local global i32 0, align 4
@POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_setup_power_state(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.ch7006_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %6)
  store %struct.ch7006_priv* %7, %struct.ch7006_priv** %3, align 8
  %8 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @CH7006_POWER, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %4, align 8
  %14 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @CH7006_POWER_RESET, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %60 [
    i32 128, label %37
    i32 130, label %44
    i32 129, label %51
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %39 = load i32, i32* @CVBS_OFF, align 4
  %40 = call i32 @bitfs(i32 %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %60

44:                                               ; preds = %35
  %45 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %46 = load i32, i32* @SVIDEO_OFF, align 4
  %47 = call i32 @bitfs(i32 %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %60

51:                                               ; preds = %35
  %52 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %53 = load i32, i32* @NORMAL, align 4
  %54 = call i32 @bitfs(i32 %52, i32 %53)
  %55 = load i32, i32* @CH7006_POWER_SCART, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %35, %51, %44, %37
  br label %81

61:                                               ; preds = %26
  %62 = load %struct.ch7006_priv*, %struct.ch7006_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 32
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %68 = load i32, i32* @FULL_POWER_OFF, align 4
  %69 = call i32 @bitfs(i32 %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %61
  %74 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %75 = load i32, i32* @POWER_OFF, align 4
  %76 = call i32 @bitfs(i32 %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %60
  ret void
}

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @bitfs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
