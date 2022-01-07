; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.itg3200 = type { %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [26 x i8] c"probe I2C dev with IRQ %i\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@itg3200_channels = common dso_local global i32 0, align 4
@itg3200_available_scan_masks = common dso_local global i32 0, align 4
@itg3200_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @itg3200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itg3200_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itg3200*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dev_dbg(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %16, i32 16)
  store %struct.iio_dev* %17, %struct.iio_dev** %8, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call %struct.itg3200* @iio_priv(%struct.iio_dev* %24)
  store %struct.itg3200* %25, %struct.itg3200** %7, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load %struct.itg3200*, %struct.itg3200** %7, align 8
  %29 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %28, i32 0, i32 1
  %30 = call i32 @iio_read_mount_matrix(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %23
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.iio_dev* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.itg3200*, %struct.itg3200** %7, align 8
  %41 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %40, i32 0, i32 0
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @itg3200_channels, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @itg3200_channels, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @itg3200_available_scan_masks, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 1
  store i32* @itg3200_info, i32** %66, align 8
  %67 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %71 = call i32 @itg3200_buffer_configure(%struct.iio_dev* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %35
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %114

76:                                               ; preds = %35
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %83 = call i32 @itg3200_probe_trigger(%struct.iio_dev* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %110

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %76
  %89 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %90 = call i32 @itg3200_initial_setup(%struct.iio_dev* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %101

94:                                               ; preds = %88
  %95 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %96 = call i32 @iio_device_register(%struct.iio_dev* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %101

100:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %114

101:                                              ; preds = %99, %93
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %108 = call i32 @itg3200_remove_trigger(%struct.iio_dev* %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %112 = call i32 @itg3200_buffer_unconfigure(%struct.iio_dev* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %100, %74, %33, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.itg3200* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @itg3200_buffer_configure(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_probe_trigger(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_initial_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_remove_trigger(%struct.iio_dev*) #1

declare dso_local i32 @itg3200_buffer_unconfigure(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
