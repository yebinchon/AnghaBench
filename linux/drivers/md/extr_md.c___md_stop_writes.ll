; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c___md_stop_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c___md_stop_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32*, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.mddev*, i32)* }

@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @__md_stop_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md_stop_writes(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 6
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load i32, i32* @md_misc_wq, align 4
  %8 = call i32 @flush_workqueue(i32 %7)
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 6
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.mddev*, %struct.mddev** %2, align 8
  %19 = call i32 @md_reap_sync_thread(%struct.mddev* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 5
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %20
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.mddev*, i32)* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.mddev*, %struct.mddev** %2, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %39, align 8
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = call i32 %40(%struct.mddev* %41, i32 1)
  %43 = load %struct.mddev*, %struct.mddev** %2, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %46, align 8
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = call i32 %47(%struct.mddev* %48, i32 0)
  br label %50

50:                                               ; preds = %35, %28, %20
  %51 = load %struct.mddev*, %struct.mddev** %2, align 8
  %52 = call i32 @md_bitmap_flush(%struct.mddev* %51)
  %53 = load %struct.mddev*, %struct.mddev** %2, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %50
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.mddev*, %struct.mddev** %2, align 8
  %64 = call i32 @mddev_is_clustered(%struct.mddev* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62, %57
  %67 = load %struct.mddev*, %struct.mddev** %2, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66, %62
  %72 = load %struct.mddev*, %struct.mddev** %2, align 8
  %73 = call i32 @mddev_is_clustered(%struct.mddev* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load %struct.mddev*, %struct.mddev** %2, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load %struct.mddev*, %struct.mddev** %2, align 8
  %80 = call i32 @md_update_sb(%struct.mddev* %79, i32 1)
  br label %81

81:                                               ; preds = %78, %66, %50
  %82 = load %struct.mddev*, %struct.mddev** %2, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @mempool_destroy(i32* %84)
  %86 = load %struct.mddev*, %struct.mddev** %2, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @md_bitmap_flush(%struct.mddev*) #1

declare dso_local i32 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

declare dso_local i32 @mempool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
