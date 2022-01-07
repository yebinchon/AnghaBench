; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.iio_dev = type { i32 }
%struct.ak8975_data = type { i64, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (i32)*, i32* }

@FUSE_ROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error in setting fuse access mode\0A\00", align 1
@ASA_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Not able to read asa data\0A\00", align 1
@POWER_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error in setting power-down mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Error setting data ready interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ak8975_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_setup(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ak8975_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ak8975_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.ak8975_data* %10, %struct.ak8975_data** %5, align 8
  %11 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %12 = load i32, i32* @FUSE_ROM, align 4
  %13 = call i32 @ak8975_set_mode(%struct.ak8975_data* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %24 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ASA_BASE, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %32 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client* %22, i32 %30, i32 3, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %120

42:                                               ; preds = %21
  %43 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %44 = load i32, i32* @POWER_DOWN, align 4
  %45 = call i32 @ak8975_set_mode(%struct.ak8975_data* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %120

53:                                               ; preds = %42
  %54 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %55 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58, %53
  %64 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %65 = call i32 @ak8975_setup_irq(%struct.ak8975_data* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 1
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %120

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %76 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %81 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %79(i32 %84)
  %86 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %87 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %91 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (i32)*, i32 (i32)** %93, align 8
  %95 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %96 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %94(i32 %99)
  %101 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %102 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %106 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (i32)*, i32 (i32)** %108, align 8
  %110 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %111 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %109(i32 %114)
  %116 = load %struct.ak8975_data*, %struct.ak8975_data** %5, align 8
  %117 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %115, i32* %119, align 4
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %74, %68, %48, %37, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ak8975_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ak8975_set_mode(%struct.ak8975_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @ak8975_setup_irq(%struct.ak8975_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
