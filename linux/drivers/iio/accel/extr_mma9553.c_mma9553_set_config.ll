; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MMA9551_APPID_PEDOMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error writing config register 0x%x\0A\00", align 1
@MMA9553_MASK_CONF_CONFIG = common dso_local global i64 0, align 8
@MMA9553_REG_CONF_CONF_STEPLEN = common dso_local global i64 0, align 8
@MMA9553_CONFIG_RETRIES = common dso_local global i32 0, align 4
@MMA9553_DEFAULT_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*, i64, i64*, i64, i64)* @mma9553_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_set_config(%struct.mma9553_data* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mma9553_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mma9553_data* %0, %struct.mma9553_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @mma9553_get_bits(i64 %19, i64 %20)
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %101

24:                                               ; preds = %5
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @mma9553_set_bits(i64 %25, i32 %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %31 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @mma9551_write_config_word(%struct.TYPE_5__* %32, i32 %33, i64 %34, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %41 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %101

47:                                               ; preds = %24
  %48 = load i64, i64* %14, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %51 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMA9553_MASK_CONF_CONFIG, align 8
  %55 = call i64 @mma9553_set_bits(i64 %53, i32 1, i64 %54)
  store i64 %55, i64* %15, align 8
  %56 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %57 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %60 = load i64, i64* @MMA9553_REG_CONF_CONF_STEPLEN, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @mma9551_write_config_word(%struct.TYPE_5__* %58, i32 %59, i64 %60, i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %47
  %66 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %67 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* @MMA9553_REG_CONF_CONF_STEPLEN, align 8
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %101

73:                                               ; preds = %47
  %74 = load i32, i32* @MMA9553_CONFIG_RETRIES, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %98, %73
  %76 = load i32, i32* @MMA9553_DEFAULT_SAMPLE_RATE, align 4
  %77 = call i32 @mma9551_sleep(i32 %76)
  %78 = load %struct.mma9553_data*, %struct.mma9553_data** %7, align 8
  %79 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %82 = load i64, i64* @MMA9553_REG_CONF_CONF_STEPLEN, align 8
  %83 = call i32 @mma9551_read_config_word(%struct.TYPE_5__* %80, i32 %81, i64 %82, i64* %15)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %101

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @MMA9553_MASK_CONF_CONFIG, align 8
  %92 = call i64 @mma9553_get_bits(i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %13, align 4
  %97 = icmp sgt i32 %96, 0
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ false, %89 ], [ %97, %94 ]
  br i1 %99, label %75, label %100

100:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %86, %65, %39, %23
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @mma9553_get_bits(i64, i64) #1

declare dso_local i64 @mma9553_set_bits(i64, i32, i64) #1

declare dso_local i32 @mma9551_write_config_word(%struct.TYPE_5__*, i32, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mma9551_sleep(i32) #1

declare dso_local i32 @mma9551_read_config_word(%struct.TYPE_5__*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
