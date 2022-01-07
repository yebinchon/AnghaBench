; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_eoc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_eoc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.nau7802_state = type { i64, i32, i32 }

@NAU7802_REG_PUCTRL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_CR_BIT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@NAU7802_MIN_CONVERSIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nau7802_eoc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_eoc_trigger(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.nau7802_state*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.nau7802_state* %12, %struct.nau7802_state** %7, align 8
  %13 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %14 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @NAU7802_PUCTRL_CR_BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %22
  %30 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %31 = call i64 @nau7802_read_conversion(%struct.nau7802_state* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %29
  %36 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %37 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NAU7802_MIN_CONVERSIONS, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %43 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %48 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NAU7802_MIN_CONVERSIONS, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %54 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %53, i32 0, i32 1
  %55 = call i32 @complete(i32* %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %33, %27, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i64 @nau7802_read_conversion(%struct.nau7802_state*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
