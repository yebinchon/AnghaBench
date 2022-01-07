; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @mddev_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mddev_detach(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = call i32 @md_bitmap_wait_behind_writes(%struct.mddev* %3)
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.mddev*, i32)* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load %struct.mddev*, %struct.mddev** %2, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %20, align 8
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = call i32 %21(%struct.mddev* %22, i32 1)
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %27, align 8
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = call i32 %28(%struct.mddev* %29, i32 0)
  br label %31

31:                                               ; preds = %16, %9, %1
  %32 = load %struct.mddev*, %struct.mddev** %2, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  %34 = call i32 @md_unregister_thread(i32* %33)
  %35 = load %struct.mddev*, %struct.mddev** %2, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.mddev*, %struct.mddev** %2, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @blk_sync_queue(i64 %42)
  br label %44

44:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @md_bitmap_wait_behind_writes(%struct.mddev*) #1

declare dso_local i32 @md_unregister_thread(i32*) #1

declare dso_local i32 @blk_sync_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
