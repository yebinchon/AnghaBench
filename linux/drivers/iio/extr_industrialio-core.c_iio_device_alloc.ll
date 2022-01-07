; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

@IIO_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_device_type = common dso_local global i32 0, align 4
@iio_bus_type = common dso_local global i32 0, align 4
@iio_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get device id\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"iio:device%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_dev* @iio_device_alloc(i32 %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 56, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @IIO_ALIGN, align 4
  %11 = call i64 @ALIGN(i64 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @IIO_ALIGN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.iio_dev* @kzalloc(i64 %22, i32 %23)
  store %struct.iio_dev* %24, %struct.iio_dev** %4, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %27, label %79

27:                                               ; preds = %16
  %28 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32* @iio_device_type, i32** %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* @iio_bus_type, i32** %39, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  %42 = call i32 @device_initialize(%struct.TYPE_4__* %41)
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  %45 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %46 = bitcast %struct.iio_dev* %45 to i8*
  %47 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %44, i8* %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 5
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i64 @ida_simple_get(i32* @iio_ida, i32 0, i32 0, i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %27
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %68 = call i32 @kfree(%struct.iio_dev* %67)
  store %struct.iio_dev* null, %struct.iio_dev** %2, align 8
  br label %81

69:                                               ; preds = %27
  %70 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 2
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dev_set_name(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  br label %79

79:                                               ; preds = %69, %16
  %80 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  store %struct.iio_dev* %80, %struct.iio_dev** %2, align 8
  br label %81

81:                                               ; preds = %79, %65
  %82 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  ret %struct.iio_dev* %82
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.iio_dev* @kzalloc(i64, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
