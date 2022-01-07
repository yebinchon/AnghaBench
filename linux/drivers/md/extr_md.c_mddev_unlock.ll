; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.mddev = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.attribute_group* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@md_redundancy_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@pers_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mddev_unlock(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.attribute_group*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 7
  %6 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %7 = icmp ne %struct.attribute_group* %6, null
  br i1 %7, label %8, label %64

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 7
  %11 = load %struct.attribute_group*, %struct.attribute_group** %10, align 8
  store %struct.attribute_group* %11, %struct.attribute_group** %3, align 8
  %12 = load %struct.mddev*, %struct.mddev** %2, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 7
  store %struct.attribute_group* null, %struct.attribute_group** %13, align 8
  %14 = load %struct.mddev*, %struct.mddev** %2, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 3
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %8
  %25 = load %struct.attribute_group*, %struct.attribute_group** %3, align 8
  %26 = icmp ne %struct.attribute_group* %25, @md_redundancy_group
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.mddev*, %struct.mddev** %2, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 5
  %30 = load %struct.attribute_group*, %struct.attribute_group** %3, align 8
  %31 = call i32 @sysfs_remove_group(%struct.TYPE_4__* %29, %struct.attribute_group* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.mddev*, %struct.mddev** %2, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp eq %struct.TYPE_3__* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 6
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %37, %32
  %45 = load %struct.mddev*, %struct.mddev** %2, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 5
  %47 = call i32 @sysfs_remove_group(%struct.TYPE_4__* %46, %struct.attribute_group* @md_redundancy_group)
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.mddev*, %struct.mddev** %2, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @sysfs_put(i32* %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %57, %37
  br label %61

61:                                               ; preds = %60, %8
  %62 = load %struct.mddev*, %struct.mddev** %2, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %68

64:                                               ; preds = %1
  %65 = load %struct.mddev*, %struct.mddev** %2, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 3
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = call i32 @spin_lock(i32* @pers_lock)
  %70 = load %struct.mddev*, %struct.mddev** %2, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @md_wakeup_thread(i32 %72)
  %74 = load %struct.mddev*, %struct.mddev** %2, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 1
  %76 = call i32 @wake_up(i32* %75)
  %77 = call i32 @spin_unlock(i32* @pers_lock)
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_remove_group(%struct.TYPE_4__*, %struct.attribute_group*) #1

declare dso_local i32 @sysfs_put(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
