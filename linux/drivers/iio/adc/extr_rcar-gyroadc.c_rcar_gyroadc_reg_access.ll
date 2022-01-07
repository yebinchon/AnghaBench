; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.rcar_gyroadc = type { i64, i64 }

@RCAR_GYROADC_FIFO_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCAR_GYROADC_MODEL_R8A7792 = common dso_local global i64 0, align 8
@RCAR_GYROADC_INTENR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @rcar_gyroadc_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gyroadc_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rcar_gyroadc*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev* %12)
  store %struct.rcar_gyroadc* %13, %struct.rcar_gyroadc** %10, align 8
  %14 = load i32, i32* @RCAR_GYROADC_FIFO_STATUS, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %10, align 8
  %29 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RCAR_GYROADC_MODEL_R8A7792, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @RCAR_GYROADC_INTENR, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %10, align 8
  %44 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @readl(i64 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %39, %24, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
