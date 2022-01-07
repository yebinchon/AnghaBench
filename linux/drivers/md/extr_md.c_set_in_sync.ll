; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_in_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_in_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, i32, i32, i32, i32 }

@MD_SB_CHANGE_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @set_in_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_in_sync(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 6
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %1
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 6
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.mddev*, %struct.mddev** %2, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = call i32 @percpu_ref_switch_to_atomic_sync(i32* %19)
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 6
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %10
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 3
  %31 = call i64 @percpu_ref_is_zero(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.mddev*, %struct.mddev** %2, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = call i32 (...) @smp_mb()
  %37 = load i32, i32* @MD_SB_CHANGE_CLEAN, align 4
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 5
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sysfs_notify_dirent_safe(i32 %43)
  br label %45

45:                                               ; preds = %33, %28, %10
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.mddev*, %struct.mddev** %2, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 3
  %54 = call i32 @percpu_ref_switch_to_percpu(i32* %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.mddev*, %struct.mddev** %2, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.mddev*, %struct.mddev** %2, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.mddev*, %struct.mddev** %2, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  ret i32 %67
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @percpu_ref_switch_to_atomic_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @percpu_ref_is_zero(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @percpu_ref_switch_to_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
