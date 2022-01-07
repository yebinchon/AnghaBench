; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl372_state = type { i32 }

@ADXL372_INT1_MAP = common dso_local global i32 0, align 4
@ADXL372_INT2_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxl372_state*, i8, i8)* @adxl372_set_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_set_interrupts(%struct.adxl372_state* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adxl372_state*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.adxl372_state* %0, %struct.adxl372_state** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load %struct.adxl372_state*, %struct.adxl372_state** %5, align 8
  %10 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ADXL372_INT1_MAP, align 4
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i8 zeroext %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.adxl372_state*, %struct.adxl372_state** %5, align 8
  %21 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADXL372_INT2_MAP, align 4
  %24 = load i8, i8* %7, align 1
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i8 zeroext %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @regmap_write(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
