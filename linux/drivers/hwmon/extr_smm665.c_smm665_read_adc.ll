; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_read_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_read_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm665_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unexpected return code %d when setting ADC index\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read ADC value: error %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unexpected RADC: Expected %d got %d\00", align 1
@SMM665_ADC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smm665_data*, i32)* @smm665_read_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smm665_read_adc(%struct.smm665_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smm665_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smm665_data* %0, %struct.smm665_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smm665_data*, %struct.smm665_data** %4, align 8
  %10 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 3
  %15 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  store i32 %33, i32* %3, align 4
  br label %68

34:                                               ; preds = %2
  %35 = load %struct.smm665_data*, %struct.smm665_data** %4, align 8
  %36 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @udelay(i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 11
  %52 = and i32 %51, 15
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SMM665_ADC_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %56, %43, %32
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
