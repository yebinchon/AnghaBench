; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_set_channel_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_set_channel_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7124_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@AD7124_FILTER_FS_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7124_state*, i32, i32)* @ad7124_set_channel_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_set_channel_odr(%struct.ad7124_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7124_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ad7124_state* %0, %struct.ad7124_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %12 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_get_rate(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul i32 %16, 32
  %18 = call i8* @DIV_ROUND_CLOSEST(i32 %15, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %24, 2047
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2047, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %22
  %29 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @AD7124_FILTER(i32 %30)
  %32 = load i32, i32* @AD7124_FILTER_FS_MSK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @AD7124_FILTER_FS(i32 %33)
  %35 = call i32 @ad7124_spi_write_mask(%struct.ad7124_state* %29, i32 %31, i32 %32, i32 %34, i32 3)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul i32 %42, 32
  %44 = call i8* @DIV_ROUND_CLOSEST(i32 %41, i32 %43)
  %45 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %46 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %44, i8** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %38
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ad7124_spi_write_mask(%struct.ad7124_state*, i32, i32, i32, i32) #1

declare dso_local i32 @AD7124_FILTER(i32) #1

declare dso_local i32 @AD7124_FILTER_FS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
