; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_char_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_char_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.userio_device* }
%struct.userio_device = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.userio_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@userio_device_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @userio_char_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userio_char_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.userio_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.userio_device*
  store %struct.userio_device* %9, %struct.userio_device** %6, align 8
  %10 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %11 = icmp ne %struct.userio_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %17 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %16, i32 0, i32 3
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %20 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %23 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %22, i32 0, i32 1
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  %28 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %29 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %28, i32 0, i32 0
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %31 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %15
  %35 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %36 = call i32 @kfree(%struct.userio_device* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %15
  %40 = load i32, i32* @userio_device_write, align 4
  %41 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %42 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %46 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %47 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.userio_device* %45, %struct.userio_device** %49, align 8
  %50 = load %struct.userio_device*, %struct.userio_device** %6, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.userio_device* %50, %struct.userio_device** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %39, %34, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfree(%struct.userio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
