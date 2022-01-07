; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hi8435_priv = type { i32 }

@HI8435_PSEN_REG = common dso_local global i32 0, align 4
@HI8435_SOCENHYS_REG = common dso_local global i32 0, align 4
@HI8435_GOCENHYS_REG = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @hi8435_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi8435_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hi8435_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %22 = call %struct.hi8435_priv* @iio_priv(%struct.iio_dev* %21)
  store %struct.hi8435_priv* %22, %struct.hi8435_priv** %16, align 8
  %23 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %24 = load i32, i32* @HI8435_PSEN_REG, align 4
  %25 = call i32 @hi8435_readb(%struct.hi8435_priv* %23, i32 %24, i32* %19)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %83

30:                                               ; preds = %7
  %31 = load i32, i32* %19, align 4
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %18, align 4
  %42 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @HI8435_SOCENHYS_REG, align 4
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @HI8435_GOCENHYS_REG, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @hi8435_readw(%struct.hi8435_priv* %42, i32 %50, i32* %20)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %8, align 4
  br label %83

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* %20, align 4
  %62 = and i32 %61, 255
  %63 = load i32, i32* %20, align 4
  %64 = ashr i32 %63, 8
  %65 = sub nsw i32 %62, %64
  %66 = sdiv i32 %65, 2
  %67 = load i32*, i32** %14, align 8
  store i32 %66, i32* %67, align 4
  br label %81

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, 255
  %75 = load i32, i32* %20, align 4
  %76 = ashr i32 %75, 8
  %77 = add nsw i32 %74, %76
  %78 = sdiv i32 %77, 2
  %79 = load i32*, i32** %14, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %68
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %54, %28
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.hi8435_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hi8435_readb(%struct.hi8435_priv*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hi8435_readw(%struct.hi8435_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
