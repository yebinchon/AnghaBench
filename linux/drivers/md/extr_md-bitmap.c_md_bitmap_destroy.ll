; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, %struct.bitmap*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bitmap = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_destroy(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.bitmap*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 3
  %6 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  store %struct.bitmap* %6, %struct.bitmap** %3, align 8
  %7 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %8 = icmp ne %struct.bitmap* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = call i32 @md_bitmap_wait_behind_writes(%struct.mddev* %11)
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @mempool_destroy(i32* %15)
  %17 = load %struct.mddev*, %struct.mddev** %2, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mddev*, %struct.mddev** %2, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 3
  store %struct.bitmap* null, %struct.bitmap** %27, align 8
  %28 = load %struct.mddev*, %struct.mddev** %2, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.mddev*, %struct.mddev** %2, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %10
  %40 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %10
  %46 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %47 = call i32 @md_bitmap_free(%struct.bitmap* %46)
  br label %48

48:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32 @md_bitmap_wait_behind_writes(%struct.mddev*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @md_bitmap_free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
