; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zopt2201_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ZOPT2201_UVB_DATA = common dso_local global i32 0, align 4
@zopt2201_resolution = common dso_local global %struct.TYPE_2__* null, align 8
@ZOPT2201_MAIN_STATUS = common dso_local global i32 0, align 4
@ZOPT2201_MAIN_STATUS_DRDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ZOPT2201_MAIN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zopt2201_data*, i32)* @zopt2201_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zopt2201_read(%struct.zopt2201_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zopt2201_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.zopt2201_data* %0, %struct.zopt2201_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %12 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  store i32 10, i32* %7, align 4
  %14 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %15 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ZOPT2201_UVB_DATA, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @zopt2201_enable_mode(%struct.zopt2201_data* %17, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %99

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zopt2201_resolution, align 8
  %33 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %34 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ule i64 %39, 20000
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1000
  %45 = call i32 @usleep_range(i64 %42, i64 %44)
  br label %50

46:                                               ; preds = %31
  %47 = load i64, i64* %10, align 8
  %48 = udiv i64 %47, 1000
  %49 = call i32 @msleep(i64 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = load i32, i32* @ZOPT2201_MAIN_STATUS, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %99

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ZOPT2201_MAIN_STATUS_DRDY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %64

63:                                               ; preds = %57
  br label %27

64:                                               ; preds = %62, %27
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %99

70:                                               ; preds = %64
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %74 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %71, i32 %72, i32 12, i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %99

78:                                               ; preds = %70
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = load i32, i32* @ZOPT2201_MAIN_CTRL, align 4
  %81 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %79, i32 %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %99

85:                                               ; preds = %78
  %86 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %87 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %95, %97
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %84, %77, %67, %56, %25
  %100 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %101 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %85
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zopt2201_enable_mode(%struct.zopt2201_data*, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
