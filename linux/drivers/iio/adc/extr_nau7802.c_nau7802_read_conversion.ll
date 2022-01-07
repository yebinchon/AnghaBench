; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau7802_state = type { i32, i32, i32 }

@NAU7802_REG_ADC_B2 = common dso_local global i32 0, align 4
@NAU7802_REG_ADC_B1 = common dso_local global i32 0, align 4
@NAU7802_REG_ADC_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau7802_state*)* @nau7802_read_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_read_conversion(%struct.nau7802_state* %0) #0 {
  %2 = alloca %struct.nau7802_state*, align 8
  %3 = alloca i32, align 4
  store %struct.nau7802_state* %0, %struct.nau7802_state** %2, align 8
  %4 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %5 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %8 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NAU7802_REG_ADC_B2, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %19 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %21 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAU7802_REG_ADC_B1, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %55

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %32 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %36 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NAU7802_REG_ADC_B0, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %55

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %46 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %50 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sign_extend32(i32 %51, i32 23)
  %53 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %54 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %43, %42, %27, %14
  %56 = load %struct.nau7802_state*, %struct.nau7802_state** %2, align 8
  %57 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
