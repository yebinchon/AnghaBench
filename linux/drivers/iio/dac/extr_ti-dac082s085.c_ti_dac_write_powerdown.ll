; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_write_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_write_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ti_dac_chip = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ti_dac_write_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_write_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ti_dac_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %15)
  store %struct.ti_dac_chip* %16, %struct.ti_dac_chip** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %75

23:                                               ; preds = %5
  %24 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %25 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %75

32:                                               ; preds = %23
  %33 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %34 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %40 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %41 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @POWERDOWN(i32 %42)
  %44 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %39, i32 %43, i32 0)
  store i32 %44, i32* %14, align 4
  br label %54

45:                                               ; preds = %32
  %46 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %47 = call i32 @WRITE_AND_UPDATE(i32 0)
  %48 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %49 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %46, i32 %47, i32 %52)
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %45, %38
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %60 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %12, align 8
  %63 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  br label %72

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %29, %21
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ti_dac_cmd(%struct.ti_dac_chip*, i32, i32) #1

declare dso_local i32 @POWERDOWN(i32) #1

declare dso_local i32 @WRITE_AND_UPDATE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
