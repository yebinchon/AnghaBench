; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_dpot-dac.c_dpot_dac_channel_max_ohms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_dpot-dac.c_dpot_dac_channel_max_ohms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.dpot_dac = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"dpot does not indicate its raw maximum value\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"dpot has a scale that is too weird\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @dpot_dac_channel_max_ohms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpot_dac_channel_max_ohms(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpot_dac*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call %struct.dpot_dac* @iio_priv(%struct.iio_dev* %13)
  store %struct.dpot_dac* %14, %struct.dpot_dac** %5, align 8
  %15 = load %struct.dpot_dac*, %struct.dpot_dac** %5, align 8
  %16 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iio_read_max_channel_raw(i32 %17, i32* %10)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load %struct.dpot_dac*, %struct.dpot_dac** %5, align 8
  %27 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iio_read_channel_scale(i32 %28, i32* %8, i32* %9)
  switch i32 %29, label %60 [
    i32 128, label %30
    i32 130, label %34
    i32 129, label %46
  ]

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %66

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @do_div(i64 %40, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %66

46:                                               ; preds = %25
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 1000000000
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %49, %51
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = ashr i64 %52, %54
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @do_div(i64 %56, i64 1000000000)
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %25
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %46, %34, %30, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.dpot_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_read_max_channel_raw(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_read_channel_scale(i32, i32*, i32*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
