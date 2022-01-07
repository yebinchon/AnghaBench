; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { %struct.mousedev*, %struct.input_handler*, i32, i32 }
%struct.input_dev = type { i32 }
%struct.input_handler = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mice\00", align 1
@mixdev_open_devices = common dso_local global i32 0, align 4
@mixdev_close_devices = common dso_local global i32 0, align 4
@MOUSEDEV_MINOR_BASE = common dso_local global i32 0, align 4
@MOUSEDEV_MINORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mouse%d\00", align 1
@mousedev_open_device = common dso_local global i32 0, align 4
@mousedev_close_device = common dso_local global i32 0, align 4
@input_class = common dso_local global i32 0, align 4
@INPUT_MAJOR = common dso_local global i32 0, align 4
@mousedev_free = common dso_local global i32 0, align 4
@mousedev_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mousedev* (%struct.input_dev*, %struct.input_handler*, i32)* @mousedev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mousedev* @mousedev_create(%struct.input_dev* %0, %struct.input_handler* %1, i32 %2) #0 {
  %4 = alloca %struct.mousedev*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_handler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mousedev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_handler* %1, %struct.input_handler** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mousedev_reserve_minor(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %10, align 4
  br label %174

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mousedev* @kzalloc(i32 88, i32 %19)
  store %struct.mousedev* %20, %struct.mousedev** %8, align 8
  %21 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %22 = icmp ne %struct.mousedev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %171

26:                                               ; preds = %18
  %27 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %28 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %27, i32 0, i32 10
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %31 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %34 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %33, i32 0, i32 8
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %37 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %36, i32 0, i32 7
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %40 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %39, i32 0, i32 7
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  br label %46

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = call i32 @lockdep_set_subclass(i32* %40, i32 %47)
  %49 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %50 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %49, i32 0, i32 6
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %56 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %55, i32 0, i32 1
  %57 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_set_name(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @mixdev_open_devices, align 4
  %59 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %60 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @mixdev_close_devices, align 4
  %62 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %63 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %86

64:                                               ; preds = %46
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MOUSEDEV_MINOR_BASE, align 4
  %68 = load i32, i32* @MOUSEDEV_MINORS, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @MOUSEDEV_MINOR_BASE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %77 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %76, i32 0, i32 1
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_set_name(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @mousedev_open_device, align 4
  %81 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %82 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @mousedev_close_device, align 4
  %84 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %85 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %54
  %87 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %88 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = call i32 @input_get_device(%struct.input_dev* %89)
  %91 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %92 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %95 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %94, i32 0, i32 1
  %96 = call i32 @dev_name(%struct.TYPE_8__* %95)
  %97 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %98 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.input_handler*, %struct.input_handler** %6, align 8
  %101 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %102 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store %struct.input_handler* %100, %struct.input_handler** %103, align 8
  %104 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %105 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %106 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store %struct.mousedev* %104, %struct.mousedev** %107, align 8
  %108 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %109 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i32* @input_class, i32** %110, align 8
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = icmp ne %struct.input_dev* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %86
  %114 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 0
  %116 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %117 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32* %115, i32** %118, align 8
  br label %119

119:                                              ; preds = %113, %86
  %120 = load i32, i32* @INPUT_MAJOR, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @MKDEV(i32 %120, i32 %121)
  %123 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %124 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @mousedev_free, align 4
  %127 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %128 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %131 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %130, i32 0, i32 1
  %132 = call i32 @device_initialize(%struct.TYPE_8__* %131)
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %119
  %136 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %137 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %136, i32 0, i32 2
  %138 = call i32 @input_register_handle(%struct.TYPE_9__* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %167

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %119
  %144 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %145 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %144, i32 0, i32 3
  %146 = call i32 @cdev_init(i32* %145, i32* @mousedev_fops)
  %147 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %148 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %147, i32 0, i32 3
  %149 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %150 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %149, i32 0, i32 1
  %151 = call i32 @cdev_device_add(i32* %148, %struct.TYPE_8__* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %157

155:                                              ; preds = %143
  %156 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  store %struct.mousedev* %156, %struct.mousedev** %4, align 8
  br label %177

157:                                              ; preds = %154
  %158 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %159 = call i32 @mousedev_cleanup(%struct.mousedev* %158)
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %164 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %163, i32 0, i32 2
  %165 = call i32 @input_unregister_handle(%struct.TYPE_9__* %164)
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %141
  %168 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %169 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %168, i32 0, i32 1
  %170 = call i32 @put_device(%struct.TYPE_8__* %169)
  br label %171

171:                                              ; preds = %167, %23
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @input_free_minor(i32 %172)
  br label %174

174:                                              ; preds = %171, %16
  %175 = load i32, i32* %10, align 4
  %176 = call %struct.mousedev* @ERR_PTR(i32 %175)
  store %struct.mousedev* %176, %struct.mousedev** %4, align 8
  br label %177

177:                                              ; preds = %174, %155
  %178 = load %struct.mousedev*, %struct.mousedev** %4, align 8
  ret %struct.mousedev* %178
}

declare dso_local i32 @mousedev_reserve_minor(i32) #1

declare dso_local %struct.mousedev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @input_get_device(%struct.input_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @input_register_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mousedev_cleanup(%struct.mousedev*) #1

declare dso_local i32 @input_unregister_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @input_free_minor(i32) #1

declare dso_local %struct.mousedev* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
