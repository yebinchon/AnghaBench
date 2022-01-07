; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, i32, i32, i32 }

@all_mddevs_lock = common dso_local global i32 0, align 4
@mddev_delayed_delete = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @mddev_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mddev_put(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 6
  %5 = call i32 @atomic_dec_and_lock(i32* %4, i32* @all_mddevs_lock)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = load %struct.mddev*, %struct.mddev** %2, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 4
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 2
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.mddev*, %struct.mddev** %2, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  %34 = load i32, i32* @mddev_delayed_delete, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load i32, i32* @md_misc_wq, align 4
  %37 = load %struct.mddev*, %struct.mddev** %2, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 1
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %28, %23, %18, %13, %8
  %41 = call i32 @spin_unlock(i32* @all_mddevs_lock)
  br label %42

42:                                               ; preds = %40, %7
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
