; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_store_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_store_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }

@AD9523_EEPROM_CTRL1 = common dso_local global i32 0, align 4
@AD9523_EEPROM_CTRL1_EEPROM_WRITE_PROT_DIS = common dso_local global i32 0, align 4
@AD9523_EEPROM_CTRL2 = common dso_local global i32 0, align 4
@AD9523_EEPROM_CTRL2_REG2EEPROM = common dso_local global i32 0, align 4
@AD9523_EEPROM_DATA_XFER_STATUS = common dso_local global i32 0, align 4
@AD9523_EEPROM_DATA_XFER_IN_PROGRESS = common dso_local global i32 0, align 4
@AD9523_EEPROM_ERROR_READBACK = common dso_local global i32 0, align 4
@AD9523_EEPROM_ERROR_READBACK_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Verify EEPROM failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad9523_store_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_store_eeprom(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = load i32, i32* @AD9523_EEPROM_CTRL1, align 4
  %8 = load i32, i32* @AD9523_EEPROM_CTRL1_EEPROM_WRITE_PROT_DIS, align 4
  %9 = call i32 @ad9523_write(%struct.iio_dev* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = load i32, i32* @AD9523_EEPROM_CTRL2, align 4
  %17 = load i32, i32* @AD9523_EEPROM_CTRL2_REG2EEPROM, align 4
  %18 = call i32 @ad9523_write(%struct.iio_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %74

23:                                               ; preds = %14
  store i32 4, i32* %5, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = call i32 @msleep(i32 20)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %27 = load i32, i32* @AD9523_EEPROM_DATA_XFER_STATUS, align 4
  %28 = call i32 @ad9523_read(%struct.iio_dev* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @AD9523_EEPROM_DATA_XFER_IN_PROGRESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %40, 0
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %24, label %45

45:                                               ; preds = %43
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = load i32, i32* @AD9523_EEPROM_CTRL1, align 4
  %48 = call i32 @ad9523_write(%struct.iio_dev* %46, i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %74

53:                                               ; preds = %45
  %54 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %55 = load i32, i32* @AD9523_EEPROM_ERROR_READBACK, align 4
  %56 = call i32 @ad9523_read(%struct.iio_dev* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @AD9523_EEPROM_ERROR_READBACK_FAIL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %59, %51, %31, %21, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ad9523_write(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ad9523_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
