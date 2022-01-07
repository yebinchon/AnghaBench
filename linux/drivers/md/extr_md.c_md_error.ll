; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.mddev*, %struct.md_rdev*)* }
%struct.md_rdev = type { i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %5 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %6 = icmp ne %struct.md_rdev* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @Faulty, align 4
  %9 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %2
  br label %75

14:                                               ; preds = %7
  %15 = load %struct.mddev*, %struct.mddev** %3, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %23, align 8
  %25 = icmp ne i32 (%struct.mddev*, %struct.md_rdev*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %14
  br label %75

27:                                               ; preds = %19
  %28 = load %struct.mddev*, %struct.mddev** %3, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %31, align 8
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %35 = call i32 %32(%struct.mddev* %33, %struct.md_rdev* %34)
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %42 = load %struct.mddev*, %struct.mddev** %3, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 2
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sysfs_notify_dirent_safe(i32 %48)
  %50 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 2
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load %struct.mddev*, %struct.mddev** %3, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @md_wakeup_thread(i32 %60)
  %62 = load %struct.mddev*, %struct.mddev** %3, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %45
  %68 = load i32, i32* @md_misc_wq, align 4
  %69 = load %struct.mddev*, %struct.mddev** %3, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 0
  %71 = call i32 @queue_work(i32 %68, %struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %67, %45
  %73 = load %struct.mddev*, %struct.mddev** %3, align 8
  %74 = call i32 @md_new_event(%struct.mddev* %73)
  br label %75

75:                                               ; preds = %72, %26, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @queue_work(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @md_new_event(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
