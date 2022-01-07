; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.adbdev_state* }
%struct.adbdev_state = type { i32, i64, i32*, i32 }

@adb_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @adb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.adbdev_state*, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.adbdev_state*, %struct.adbdev_state** %8, align 8
  store %struct.adbdev_state* %9, %struct.adbdev_state** %5, align 8
  %10 = call i32 @mutex_lock(i32* @adb_mutex)
  %11 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %12 = icmp ne %struct.adbdev_state* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  store %struct.adbdev_state* null, %struct.adbdev_state** %15, align 8
  %16 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %17 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %21 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %20, i32 0, i32 3
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %13
  %25 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %26 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %31 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %35 = call i32 @kfree(%struct.adbdev_state* %34)
  br label %43

36:                                               ; preds = %24, %13
  %37 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %38 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.adbdev_state*, %struct.adbdev_state** %5, align 8
  %40 = getelementptr inbounds %struct.adbdev_state, %struct.adbdev_state* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 @mutex_unlock(i32* @adb_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.adbdev_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
