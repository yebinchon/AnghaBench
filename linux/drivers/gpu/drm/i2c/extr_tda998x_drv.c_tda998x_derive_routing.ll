; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_derive_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_derive_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tda998x_audio_settings = type { i64, i32* }

@tda998x_audio_route = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"no audio configuration found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, %struct.tda998x_audio_settings*, i32)* @tda998x_derive_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_derive_routing(%struct.tda998x_priv* %0, %struct.tda998x_audio_settings* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda998x_priv*, align 8
  %6 = alloca %struct.tda998x_audio_settings*, align 8
  %7 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %5, align 8
  store %struct.tda998x_audio_settings* %1, %struct.tda998x_audio_settings** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** @tda998x_audio_route, align 8
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %6, align 8
  %13 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %6, align 8
  %22 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %6, align 8
  %24 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.tda998x_priv*, %struct.tda998x_priv** %5, align 8
  %29 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
