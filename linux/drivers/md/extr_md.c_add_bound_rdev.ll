; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_add_bound_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_add_bound_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mddev*, %struct.md_rdev*)* }
%struct.mddev = type { i64, i32, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mddev*, %struct.md_rdev*)*, i32 }
%struct.md_rdev = type { i32, i32, %struct.mddev* }

@Journal = common dso_local global i32 0, align 4
@super_types = common dso_local global %struct.TYPE_4__* null, align 8
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*)* @add_bound_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bound_rdev(%struct.md_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  %7 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 2
  %9 = load %struct.mddev*, %struct.mddev** %8, align 8
  store %struct.mddev* %9, %struct.mddev** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @Journal, align 4
  %11 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %12 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %11, i32 0, i32 1
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mddev*, %struct.mddev** %4, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 5
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %20, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @super_types, align 8
  %25 = load %struct.mddev*, %struct.mddev** %4, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %29, align 8
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %33 = call i32 %30(%struct.mddev* %31, %struct.md_rdev* %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.mddev*, %struct.mddev** %4, align 8
  %38 = call i32 @mddev_suspend(%struct.mddev* %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 5
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %43, align 8
  %45 = load %struct.mddev*, %struct.mddev** %4, align 8
  %46 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %47 = call i32 %44(%struct.mddev* %45, %struct.md_rdev* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = call i32 @mddev_resume(%struct.mddev* %51)
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %58 = call i32 @md_kick_rdev_from_array(%struct.md_rdev* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %90

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %20
  %62 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sysfs_notify_dirent_safe(i32 %64)
  %66 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %67 = load %struct.mddev*, %struct.mddev** %4, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 4
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.mddev*, %struct.mddev** %4, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 2
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %61
  %80 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 2
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.mddev*, %struct.mddev** %4, align 8
  %85 = call i32 @md_new_event(%struct.mddev* %84)
  %86 = load %struct.mddev*, %struct.mddev** %4, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @md_wakeup_thread(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %79, %56
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @md_kick_rdev_from_array(%struct.md_rdev*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_new_event(%struct.mddev*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
