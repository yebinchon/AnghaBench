; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_hook_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_hook_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { %struct.gpio_desc*, %struct.TYPE_2__* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"nxp,calib\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get calibration gpio: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tda998x_cec_hook_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_cec_hook_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.tda998x_priv*
  store %struct.tda998x_priv* %7, %struct.tda998x_priv** %4, align 8
  %8 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %9 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @GPIOD_ASIS, align 4
  %13 = call %struct.gpio_desc* @gpiod_get(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.gpio_desc* %13, %struct.gpio_desc** %5, align 8
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %15 = call i64 @IS_ERR(%struct.gpio_desc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %19 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.gpio_desc* %22)
  %24 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.gpio_desc* %25)
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %30 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %29, i32 0, i32 0
  store %struct.gpio_desc* %28, %struct.gpio_desc** %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.gpio_desc* @gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
