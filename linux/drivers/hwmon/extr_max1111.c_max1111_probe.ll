; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1111.c_max1111_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1111.c_max1111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1111_data = type { i32, i32, %struct.spi_device*, i32, i8* }
%struct.spi_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX1110_CTRL_SEL_SH = common dso_local global i8* null, align 8
@MAX1111_CTRL_SEL_SH = common dso_local global i8* null, align 8
@max1111_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create attribute group\0A\00", align 1
@max1110_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to create extended attribute group\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to create hwmon device\0A\00", align 1
@the_max1111 = common dso_local global %struct.max1111_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max1111_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1111_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max1111_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load i32, i32* @SPI_MODE_0, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = call i32 @spi_setup(%struct.spi_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.max1111_data* @devm_kzalloc(%struct.TYPE_6__* %24, i32 32, i32 %25)
  store %struct.max1111_data* %26, %struct.max1111_data** %5, align 8
  %27 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %28 = icmp eq %struct.max1111_data* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %134

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %58 [
    i32 131, label %34
    i32 130, label %40
    i32 129, label %46
    i32 128, label %52
  ]

34:                                               ; preds = %32
  %35 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %36 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %35, i32 0, i32 0
  store i32 8, i32* %36, align 8
  %37 = load i8*, i8** @MAX1110_CTRL_SEL_SH, align 8
  %38 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %39 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %58

40:                                               ; preds = %32
  %41 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %42 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %41, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = load i8*, i8** @MAX1111_CTRL_SEL_SH, align 8
  %44 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %45 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %58

46:                                               ; preds = %32
  %47 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %48 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %47, i32 0, i32 0
  store i32 16, i32* %48, align 8
  %49 = load i8*, i8** @MAX1110_CTRL_SEL_SH, align 8
  %50 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %51 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %58

52:                                               ; preds = %32
  %53 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %54 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %53, i32 0, i32 0
  store i32 16, i32* %54, align 8
  %55 = load i8*, i8** @MAX1111_CTRL_SEL_SH, align 8
  %56 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %57 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %32, %52, %46, %40, %34
  %59 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %60 = call i32 @setup_transfer(%struct.max1111_data* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %134

65:                                               ; preds = %58
  %66 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %67 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %66, i32 0, i32 3
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %71 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %70, i32 0, i32 2
  store %struct.spi_device* %69, %struct.spi_device** %71, align 8
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %74 = call i32 @spi_set_drvdata(%struct.spi_device* %72, %struct.max1111_data* %73)
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @sysfs_create_group(i32* %77, i32* @max1111_attr_group)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 1
  %84 = call i32 @dev_err(%struct.TYPE_6__* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %134

86:                                               ; preds = %65
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 131
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %104

92:                                               ; preds = %89, %86
  %93 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %94 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @sysfs_create_group(i32* %95, i32* @max1110_attr_group)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 1
  %102 = call i32 @dev_err(%struct.TYPE_6__* %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %124

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 1
  %107 = call i32 @hwmon_device_register(%struct.TYPE_6__* %106)
  %108 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %109 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %111 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %104
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 1
  %118 = call i32 @dev_err(%struct.TYPE_6__* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.max1111_data*, %struct.max1111_data** %5, align 8
  %120 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %6, align 4
  br label %124

123:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %134

124:                                              ; preds = %115, %99
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @sysfs_remove_group(i32* %127, i32* @max1110_attr_group)
  %129 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %130 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @sysfs_remove_group(i32* %131, i32* @max1111_attr_group)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %124, %123, %81, %63, %29, %20
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.max1111_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @setup_transfer(%struct.max1111_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.max1111_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
