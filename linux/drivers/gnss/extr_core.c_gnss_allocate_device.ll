; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_device = type { i32, %struct.TYPE_2__, i8*, i32, i32, i32, i32, i32, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32, %struct.device*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gnss_minors = common dso_local global i32 0, align 4
@GNSS_MINORS = common dso_local global i32 0, align 4
@gnss_first = common dso_local global i64 0, align 8
@gnss_class = common dso_local global i32 0, align 4
@gnss_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gnss%d\00", align 1
@GNSS_READ_FIFO_SIZE = common dso_local global i32 0, align 4
@GNSS_WRITE_BUF_SIZE = common dso_local global i32 0, align 4
@gnss_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gnss_device* @gnss_allocate_device(%struct.device* %0) #0 {
  %2 = alloca %struct.gnss_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gnss_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 72, i32 %8)
  %10 = bitcast i8* %9 to %struct.gnss_device*
  store %struct.gnss_device* %10, %struct.gnss_device** %4, align 8
  %11 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %12 = icmp ne %struct.gnss_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.gnss_device* null, %struct.gnss_device** %2, align 8
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* @GNSS_MINORS, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @ida_simple_get(i32* @gnss_minors, i32 0, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %22 = call i32 @kfree(%struct.gnss_device* %21)
  store %struct.gnss_device* null, %struct.gnss_device** %2, align 8
  br label %95

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %26 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %28 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %27, i32 0, i32 8
  store %struct.device* %28, %struct.device** %5, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @device_initialize(%struct.device* %29)
  %31 = load i64, i64* @gnss_first, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @gnss_class, align 4
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 1
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load i32, i32* @gnss_device_release, align 4
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %48 = call i32 @dev_set_drvdata(%struct.device* %46, %struct.gnss_device* %47)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_set_name(%struct.device* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %53 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %52, i32 0, i32 7
  %54 = call i32 @init_rwsem(i32* %53)
  %55 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %56 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %55, i32 0, i32 6
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %59 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %58, i32 0, i32 5
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %62 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %61, i32 0, i32 4
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %65 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %64, i32 0, i32 3
  %66 = load i32, i32* @GNSS_READ_FIFO_SIZE, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @kfifo_alloc(i32* %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %23
  br label %92

72:                                               ; preds = %23
  %73 = load i32, i32* @GNSS_WRITE_BUF_SIZE, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 %73, i32 %74)
  %76 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %77 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %79 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %92

83:                                               ; preds = %72
  %84 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %85 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %84, i32 0, i32 1
  %86 = call i32 @cdev_init(%struct.TYPE_2__* %85, i32* @gnss_fops)
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  %89 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.gnss_device*, %struct.gnss_device** %4, align 8
  store %struct.gnss_device* %91, %struct.gnss_device** %2, align 8
  br label %95

92:                                               ; preds = %82, %71
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @put_device(%struct.device* %93)
  store %struct.gnss_device* null, %struct.gnss_device** %2, align 8
  br label %95

95:                                               ; preds = %92, %83, %20, %13
  %96 = load %struct.gnss_device*, %struct.gnss_device** %2, align 8
  ret %struct.gnss_device* %96
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gnss_device*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.gnss_device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
