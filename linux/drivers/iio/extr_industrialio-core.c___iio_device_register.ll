; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___iio_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___iio_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32*, i32, i32, %struct.module* }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.module* }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@iio_devt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to create buffer sysfs interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register sysfs interfaces\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register event set\0A\00", align 1
@INDIO_ALL_TRIGGERED_MODES = common dso_local global i32 0, align 4
@INDIO_ALL_BUFFER_MODES = common dso_local global i32 0, align 4
@noop_ring_setup_ops = common dso_local global i32 0, align 4
@iio_buffer_fileops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iio_device_register(%struct.iio_dev* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.module*, %struct.module** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 6
  store %struct.module* %7, %struct.module** %9, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %21, %15, %2
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = call i32 @iio_check_unique_scan_index(%struct.iio_dev* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %145

38:                                               ; preds = %31
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %145

46:                                               ; preds = %38
  %47 = load i32, i32* @iio_devt, align 4
  %48 = call i32 @MAJOR(i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MKDEV(i32 %48, i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %57 = call i32 @iio_device_register_debugfs(%struct.iio_dev* %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %59 = call i32 @iio_buffer_alloc_sysfs_and_mask(%struct.iio_dev* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @dev_err(%struct.TYPE_5__* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %141

68:                                               ; preds = %46
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = call i32 @iio_device_register_sysfs(%struct.iio_dev* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call i32 @dev_err(%struct.TYPE_5__* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %138

79:                                               ; preds = %68
  %80 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %81 = call i32 @iio_device_register_eventset(%struct.iio_dev* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @dev_err(%struct.TYPE_5__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %135

90:                                               ; preds = %79
  %91 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @INDIO_ALL_TRIGGERED_MODES, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %99 = call i32 @iio_device_register_trigger_consumer(%struct.iio_dev* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @INDIO_ALL_BUFFER_MODES, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 3
  store i32* @noop_ring_setup_ops, i32** %114, align 8
  br label %115

115:                                              ; preds = %112, %107, %100
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 2
  %118 = call i32 @cdev_init(%struct.TYPE_6__* %117, i32* @iio_buffer_fileops)
  %119 = load %struct.module*, %struct.module** %5, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store %struct.module* %119, %struct.module** %122, align 8
  %123 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %124 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %123, i32 0, i32 2
  %125 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 1
  %127 = call i32 @cdev_device_add(%struct.TYPE_6__* %124, %struct.TYPE_7__* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %132

131:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %145

132:                                              ; preds = %130
  %133 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %134 = call i32 @iio_device_unregister_eventset(%struct.iio_dev* %133)
  br label %135

135:                                              ; preds = %132, %84
  %136 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %137 = call i32 @iio_device_unregister_sysfs(%struct.iio_dev* %136)
  br label %138

138:                                              ; preds = %135, %73
  %139 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %140 = call i32 @iio_buffer_free_sysfs_and_mask(%struct.iio_dev* %139)
  br label %141

141:                                              ; preds = %138, %62
  %142 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %143 = call i32 @iio_device_unregister_debugfs(%struct.iio_dev* %142)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %131, %43, %36
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @iio_check_unique_scan_index(%struct.iio_dev*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @iio_device_register_debugfs(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_alloc_sysfs_and_mask(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @iio_device_register_sysfs(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register_eventset(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register_trigger_consumer(%struct.iio_dev*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cdev_device_add(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @iio_device_unregister_eventset(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister_sysfs(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_free_sysfs_and_mask(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister_debugfs(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
