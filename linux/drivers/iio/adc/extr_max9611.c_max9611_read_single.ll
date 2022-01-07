; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max9611.c_max9611_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max9611.c_max9611_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max9611_dev = type { i32, i32, i32 }

@max9611_mux_conf = common dso_local global i32** null, align 8
@MAX9611_MUX_MASK = common dso_local global i32 0, align 4
@MAX9611_REG_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"i2c write byte failed: 0x%2x - 0x%2x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"i2c read word from 0x%2x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max9611_dev*, i32, i32*)* @max9611_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9611_read_single(%struct.max9611_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max9611_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max9611_dev* %0, %struct.max9611_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32**, i32*** @max9611_mux_conf, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX9611_MUX_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32**, i32*** @max9611_mux_conf, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %28 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %31 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX9611_REG_CTRL1, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %40 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX9611_REG_CTRL1, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %46 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %74

49:                                               ; preds = %3
  %50 = call i32 @usleep_range(i32 1000, i32 2000)
  %51 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %52 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @i2c_smbus_read_word_swapped(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %60 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %65 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %49
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %72 = getelementptr inbounds %struct.max9611_dev, %struct.max9611_dev* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %58, %38
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
