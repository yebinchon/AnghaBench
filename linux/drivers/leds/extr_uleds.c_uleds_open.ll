; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_uleds.c_uleds_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_uleds.c_uleds_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.uleds_device* }
%struct.uleds_device = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uleds_brightness_set = common dso_local global i32 0, align 4
@ULEDS_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uleds_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uleds_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.uleds_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uleds_device* @kzalloc(i32 24, i32 %7)
  store %struct.uleds_device* %8, %struct.uleds_device** %6, align 8
  %9 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %10 = icmp ne %struct.uleds_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %16 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %20 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @uleds_brightness_set, align 4
  %23 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %24 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %27 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %30 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %29, i32 0, i32 1
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load i32, i32* @ULEDS_STATE_UNKNOWN, align 4
  %33 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %34 = getelementptr inbounds %struct.uleds_device, %struct.uleds_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.uleds_device*, %struct.uleds_device** %6, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.uleds_device* %35, %struct.uleds_device** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = call i32 @stream_open(%struct.inode* %38, %struct.file* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %14, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.uleds_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
