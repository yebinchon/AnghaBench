; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_char_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_char_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.uhid_device* }
%struct.uhid_device = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uhid_device_add_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uhid_char_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_char_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.uhid_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uhid_device* @kzalloc(i32 28, i32 %7)
  store %struct.uhid_device* %8, %struct.uhid_device** %6, align 8
  %9 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %10 = icmp ne %struct.uhid_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %16 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %15, i32 0, i32 6
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %19 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %18, i32 0, i32 5
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %22 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %25 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %24, i32 0, i32 3
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %28 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %27, i32 0, i32 2
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %31 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %33 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %32, i32 0, i32 1
  %34 = load i32, i32* @uhid_device_add_worker, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.uhid_device*, %struct.uhid_device** %6, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.uhid_device* %36, %struct.uhid_device** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = call i32 @stream_open(%struct.inode* %39, %struct.file* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %14, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.uhid_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
