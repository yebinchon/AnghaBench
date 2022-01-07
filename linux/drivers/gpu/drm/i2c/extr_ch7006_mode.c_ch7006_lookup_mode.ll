; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_lookup_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_lookup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_mode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i64, i64, i64, i64, i64 }
%struct.ch7006_priv = type { i32 }

@ch7006_modes = common dso_local global %struct.ch7006_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ch7006_mode* @ch7006_lookup_mode(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.ch7006_mode*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ch7006_priv*, align 8
  %7 = alloca %struct.ch7006_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %9 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %8)
  store %struct.ch7006_priv* %9, %struct.ch7006_priv** %6, align 8
  %10 = load %struct.ch7006_mode*, %struct.ch7006_mode** @ch7006_modes, align 8
  store %struct.ch7006_mode* %10, %struct.ch7006_mode** %7, align 8
  br label %11

11:                                               ; preds = %77, %2
  %12 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %13 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %11
  %18 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %19 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, -1
  %22 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %17
  %30 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %31 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %74, label %38

38:                                               ; preds = %29
  %39 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %40 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %74, label %47

47:                                               ; preds = %38
  %48 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %49 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %47
  %57 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %58 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %67 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %56, %47, %38, %29
  br label %77

75:                                               ; preds = %65
  %76 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  store %struct.ch7006_mode* %76, %struct.ch7006_mode** %3, align 8
  br label %81

77:                                               ; preds = %74, %28
  %78 = load %struct.ch7006_mode*, %struct.ch7006_mode** %7, align 8
  %79 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %78, i32 1
  store %struct.ch7006_mode* %79, %struct.ch7006_mode** %7, align 8
  br label %11

80:                                               ; preds = %11
  store %struct.ch7006_mode* null, %struct.ch7006_mode** %3, align 8
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.ch7006_mode*, %struct.ch7006_mode** %3, align 8
  ret %struct.ch7006_mode* %82
}

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
