; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.st_uvis25_hw = type { i32, %struct.regmap* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@st_uvis25_channels = common dso_local global i32 0, align 4
@ST_UVIS25_DEV_NAME = common dso_local global i32 0, align 4
@st_uvis25_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_uvis25_probe(%struct.device* %0, i32 %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.st_uvis25_hw*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %87

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %21 = bitcast %struct.iio_dev* %20 to i8*
  %22 = call i32 @dev_set_drvdata(%struct.device* %19, i8* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %24 = call %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev* %23)
  store %struct.st_uvis25_hw* %24, %struct.st_uvis25_hw** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %8, align 8
  %27 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  %29 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %8, align 8
  %30 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %29, i32 0, i32 1
  store %struct.regmap* %28, %struct.regmap** %30, align 8
  %31 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %8, align 8
  %32 = call i32 @st_uvis25_check_whoami(%struct.st_uvis25_hw* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %87

37:                                               ; preds = %18
  %38 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load i32, i32* @st_uvis25_channels, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @st_uvis25_channels, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ST_UVIS25_DEV_NAME, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  store i32* @st_uvis25_info, i32** %56, align 8
  %57 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %8, align 8
  %58 = call i32 @st_uvis25_init_sensor(%struct.st_uvis25_hw* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %87

63:                                               ; preds = %37
  %64 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %8, align 8
  %65 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %70 = call i32 @st_uvis25_allocate_buffer(%struct.iio_dev* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %87

75:                                               ; preds = %68
  %76 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %77 = call i32 @st_uvis25_allocate_trigger(%struct.iio_dev* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %86 = call i32 @devm_iio_device_register(%struct.device* %84, %struct.iio_dev* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %80, %73, %61, %35, %15
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_uvis25_check_whoami(%struct.st_uvis25_hw*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @st_uvis25_init_sensor(%struct.st_uvis25_hw*) #1

declare dso_local i32 @st_uvis25_allocate_buffer(%struct.iio_dev*) #1

declare dso_local i32 @st_uvis25_allocate_trigger(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
