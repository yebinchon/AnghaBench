; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_allow_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_allow_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MD_SB_CHANGE_CLEAN = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_allow_write(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 7
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %78

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %78

14:                                               ; preds = %8
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 7
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %78

22:                                               ; preds = %14
  %23 = load %struct.mddev*, %struct.mddev** %2, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %22
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @MD_SB_CHANGE_CLEAN, align 4
  %34 = load %struct.mddev*, %struct.mddev** %2, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 2
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 2
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %30
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.mddev*, %struct.mddev** %2, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45, %30
  %54 = load %struct.mddev*, %struct.mddev** %2, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.mddev*, %struct.mddev** %2, align 8
  %58 = call i32 @md_update_sb(%struct.mddev* %57, i32 0)
  %59 = load %struct.mddev*, %struct.mddev** %2, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sysfs_notify_dirent_safe(i32 %61)
  %63 = load %struct.mddev*, %struct.mddev** %2, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %67 = load %struct.mddev*, %struct.mddev** %2, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 2
  %69 = call i32 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @wait_event(i32 %65, i32 %72)
  br label %78

74:                                               ; preds = %22
  %75 = load %struct.mddev*, %struct.mddev** %2, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %7, %13, %21, %74, %53
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
