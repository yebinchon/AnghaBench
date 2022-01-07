; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_unbind_rdev_from_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_unbind_rdev_from_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, %struct.TYPE_3__, i32*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"md: unbind<%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@md_delayed_delete = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_rdev*)* @unbind_rdev_from_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unbind_rdev_from_array(%struct.md_rdev* %0) #0 {
  %2 = alloca %struct.md_rdev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %2, align 8
  %5 = load i32, i32* @BDEVNAME_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bd_unlink_disk_holder(i32 %11, i32 %16)
  %18 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 6
  %20 = call i32 @list_del_rcu(i32* %19)
  %21 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bdevname(i32 %23, i8* %8)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %30 = call i32 @mddev_destroy_wb_pool(%struct.TYPE_4__* %28, %struct.md_rdev* %29)
  %31 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 1
  %35 = call i32 @sysfs_remove_link(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @sysfs_put(i32* %38)
  %40 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @synchronize_rcu()
  %46 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 0
  %48 = load i32, i32* @md_delayed_delete, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 1
  %52 = call i32 @kobject_get(i32* %51)
  %53 = load i32, i32* @md_misc_wq, align 4
  %54 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 0
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  %57 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bd_unlink_disk_holder(i32, i32) #2

declare dso_local i32 @list_del_rcu(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local i32 @mddev_destroy_wb_pool(%struct.TYPE_4__*, %struct.md_rdev*) #2

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #2

declare dso_local i32 @sysfs_put(i32*) #2

declare dso_local i32 @synchronize_rcu(...) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @kobject_get(i32*) #2

declare dso_local i32 @queue_work(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
