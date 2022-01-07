; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.serio_raw_client* }
%struct.serio_raw_client = type { i32, %struct.serio_raw* }
%struct.serio_raw = type { i32, i32, i32, i64 }

@serio_raw_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @serio_raw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_raw_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.serio_raw*, align 8
  %7 = alloca %struct.serio_raw_client*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = call i32 @mutex_lock_interruptible(i32* @serio_raw_mutex)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @iminor(%struct.inode* %15)
  %17 = call %struct.serio_raw* @serio_raw_locate(i32 %16)
  store %struct.serio_raw* %17, %struct.serio_raw** %6, align 8
  %18 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %19 = icmp ne %struct.serio_raw* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %25 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %62

31:                                               ; preds = %23
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.serio_raw_client* @kzalloc(i32 16, i32 %32)
  store %struct.serio_raw_client* %33, %struct.serio_raw_client** %7, align 8
  %34 = load %struct.serio_raw_client*, %struct.serio_raw_client** %7, align 8
  %35 = icmp ne %struct.serio_raw_client* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %62

39:                                               ; preds = %31
  %40 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %41 = load %struct.serio_raw_client*, %struct.serio_raw_client** %7, align 8
  %42 = getelementptr inbounds %struct.serio_raw_client, %struct.serio_raw_client* %41, i32 0, i32 1
  store %struct.serio_raw* %40, %struct.serio_raw** %42, align 8
  %43 = load %struct.serio_raw_client*, %struct.serio_raw_client** %7, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store %struct.serio_raw_client* %43, %struct.serio_raw_client** %45, align 8
  %46 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %47 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %46, i32 0, i32 2
  %48 = call i32 @kref_get(i32* %47)
  %49 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %50 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @serio_pause_rx(i32 %51)
  %53 = load %struct.serio_raw_client*, %struct.serio_raw_client** %7, align 8
  %54 = getelementptr inbounds %struct.serio_raw_client, %struct.serio_raw_client* %53, i32 0, i32 0
  %55 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %56 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %59 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @serio_continue_rx(i32 %60)
  br label %62

62:                                               ; preds = %39, %36, %28, %20
  %63 = call i32 @mutex_unlock(i32* @serio_raw_mutex)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.serio_raw* @serio_raw_locate(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.serio_raw_client* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
