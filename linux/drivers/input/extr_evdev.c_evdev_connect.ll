; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32 }
%struct.input_device_id = type { i32 }
%struct.evdev = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { %struct.evdev*, %struct.input_handler*, i32, i32 }

@EVDEV_MINOR_BASE = common dso_local global i32 0, align 4
@EVDEV_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to reserve new minor: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"event%d\00", align 1
@INPUT_MAJOR = common dso_local global i32 0, align 4
@input_class = common dso_local global i32 0, align 4
@evdev_free = common dso_local global i32 0, align 4
@evdev_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @evdev_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_connect(%struct.input_handler* %0, %struct.input_dev* %1, %struct.input_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_device_id*, align 8
  %8 = alloca %struct.evdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store %struct.input_device_id* %2, %struct.input_device_id** %7, align 8
  %12 = load i32, i32* @EVDEV_MINOR_BASE, align 4
  %13 = load i32, i32* @EVDEV_MINORS, align 4
  %14 = call i32 @input_get_new_minor(i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %133

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.evdev* @kzalloc(i32 88, i32 %23)
  store %struct.evdev* %24, %struct.evdev** %8, align 8
  %25 = load %struct.evdev*, %struct.evdev** %8, align 8
  %26 = icmp ne %struct.evdev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %129

30:                                               ; preds = %22
  %31 = load %struct.evdev*, %struct.evdev** %8, align 8
  %32 = getelementptr inbounds %struct.evdev, %struct.evdev* %31, i32 0, i32 7
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.evdev*, %struct.evdev** %8, align 8
  %35 = getelementptr inbounds %struct.evdev, %struct.evdev* %34, i32 0, i32 6
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.evdev*, %struct.evdev** %8, align 8
  %38 = getelementptr inbounds %struct.evdev, %struct.evdev* %37, i32 0, i32 5
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.evdev*, %struct.evdev** %8, align 8
  %41 = getelementptr inbounds %struct.evdev, %struct.evdev* %40, i32 0, i32 4
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.evdev*, %struct.evdev** %8, align 8
  %44 = getelementptr inbounds %struct.evdev, %struct.evdev* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EVDEV_MINOR_BASE, align 4
  %48 = load i32, i32* @EVDEV_MINORS, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = load i32, i32* @EVDEV_MINOR_BASE, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %30
  %56 = load %struct.evdev*, %struct.evdev** %8, align 8
  %57 = getelementptr inbounds %struct.evdev, %struct.evdev* %56, i32 0, i32 1
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_set_name(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = call i32 @input_get_device(%struct.input_dev* %60)
  %62 = load %struct.evdev*, %struct.evdev** %8, align 8
  %63 = getelementptr inbounds %struct.evdev, %struct.evdev* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.evdev*, %struct.evdev** %8, align 8
  %66 = getelementptr inbounds %struct.evdev, %struct.evdev* %65, i32 0, i32 1
  %67 = call i32 @dev_name(%struct.TYPE_8__* %66)
  %68 = load %struct.evdev*, %struct.evdev** %8, align 8
  %69 = getelementptr inbounds %struct.evdev, %struct.evdev* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %72 = load %struct.evdev*, %struct.evdev** %8, align 8
  %73 = getelementptr inbounds %struct.evdev, %struct.evdev* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store %struct.input_handler* %71, %struct.input_handler** %74, align 8
  %75 = load %struct.evdev*, %struct.evdev** %8, align 8
  %76 = load %struct.evdev*, %struct.evdev** %8, align 8
  %77 = getelementptr inbounds %struct.evdev, %struct.evdev* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.evdev* %75, %struct.evdev** %78, align 8
  %79 = load i32, i32* @INPUT_MAJOR, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @MKDEV(i32 %79, i32 %80)
  %82 = load %struct.evdev*, %struct.evdev** %8, align 8
  %83 = getelementptr inbounds %struct.evdev, %struct.evdev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load %struct.evdev*, %struct.evdev** %8, align 8
  %86 = getelementptr inbounds %struct.evdev, %struct.evdev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32* @input_class, i32** %87, align 8
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 0
  %90 = load %struct.evdev*, %struct.evdev** %8, align 8
  %91 = getelementptr inbounds %struct.evdev, %struct.evdev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32* %89, i32** %92, align 8
  %93 = load i32, i32* @evdev_free, align 4
  %94 = load %struct.evdev*, %struct.evdev** %8, align 8
  %95 = getelementptr inbounds %struct.evdev, %struct.evdev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.evdev*, %struct.evdev** %8, align 8
  %98 = getelementptr inbounds %struct.evdev, %struct.evdev* %97, i32 0, i32 1
  %99 = call i32 @device_initialize(%struct.TYPE_8__* %98)
  %100 = load %struct.evdev*, %struct.evdev** %8, align 8
  %101 = getelementptr inbounds %struct.evdev, %struct.evdev* %100, i32 0, i32 2
  %102 = call i32 @input_register_handle(%struct.TYPE_9__* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %55
  br label %125

106:                                              ; preds = %55
  %107 = load %struct.evdev*, %struct.evdev** %8, align 8
  %108 = getelementptr inbounds %struct.evdev, %struct.evdev* %107, i32 0, i32 3
  %109 = call i32 @cdev_init(i32* %108, i32* @evdev_fops)
  %110 = load %struct.evdev*, %struct.evdev** %8, align 8
  %111 = getelementptr inbounds %struct.evdev, %struct.evdev* %110, i32 0, i32 3
  %112 = load %struct.evdev*, %struct.evdev** %8, align 8
  %113 = getelementptr inbounds %struct.evdev, %struct.evdev* %112, i32 0, i32 1
  %114 = call i32 @cdev_device_add(i32* %111, %struct.TYPE_8__* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %119

118:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %133

119:                                              ; preds = %117
  %120 = load %struct.evdev*, %struct.evdev** %8, align 8
  %121 = call i32 @evdev_cleanup(%struct.evdev* %120)
  %122 = load %struct.evdev*, %struct.evdev** %8, align 8
  %123 = getelementptr inbounds %struct.evdev, %struct.evdev* %122, i32 0, i32 2
  %124 = call i32 @input_unregister_handle(%struct.TYPE_9__* %123)
  br label %125

125:                                              ; preds = %119, %105
  %126 = load %struct.evdev*, %struct.evdev** %8, align 8
  %127 = getelementptr inbounds %struct.evdev, %struct.evdev* %126, i32 0, i32 1
  %128 = call i32 @put_device(%struct.TYPE_8__* %127)
  br label %129

129:                                              ; preds = %125, %27
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @input_free_minor(i32 %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %118, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @input_get_new_minor(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.evdev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @input_get_device(%struct.input_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @input_register_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @evdev_cleanup(%struct.evdev*) #1

declare dso_local i32 @input_unregister_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @input_free_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
