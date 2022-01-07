; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_iio.c_tsc2007_iio_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_iio.c_tsc2007_iio_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc2007 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tsc2007_iio = type { %struct.tsc2007* }

@.str = private unnamed_addr constant [25 x i8] c"iio_device_alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tsc2007\00", align 1
@tsc2007_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tsc2007_iio_channel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"iio_device_register() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsc2007_iio_configure(%struct.tsc2007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsc2007*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.tsc2007_iio*, align 8
  %6 = alloca i32, align 4
  store %struct.tsc2007* %0, %struct.tsc2007** %3, align 8
  %7 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %8 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 8)
  store %struct.iio_dev* %11, %struct.iio_dev** %4, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %16 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = call %struct.tsc2007_iio* @iio_priv(%struct.iio_dev* %23)
  store %struct.tsc2007_iio* %24, %struct.tsc2007_iio** %5, align 8
  %25 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %26 = load %struct.tsc2007_iio*, %struct.tsc2007_iio** %5, align 8
  %27 = getelementptr inbounds %struct.tsc2007_iio, %struct.tsc2007_iio* %26, i32 0, i32 0
  store %struct.tsc2007* %25, %struct.tsc2007** %27, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %31 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 4
  store i32* @tsc2007_iio_info, i32** %38, align 8
  %39 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @tsc2007_iio_channel, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @tsc2007_iio_channel, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %50 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = call i32 @devm_iio_device_register(i32* %52, %struct.iio_dev* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %22
  %58 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %59 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %57, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.tsc2007_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
