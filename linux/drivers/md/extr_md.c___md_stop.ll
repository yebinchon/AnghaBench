; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c___md_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c___md_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32*, i32*, i32, %struct.md_personality* }
%struct.md_personality = type { i32, i64, i32 (%struct.mddev*, i32*)* }

@md_misc_wq = common dso_local global i32 0, align 4
@md_redundancy_group = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @__md_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__md_stop(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.md_personality*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 4
  %6 = load %struct.md_personality*, %struct.md_personality** %5, align 8
  store %struct.md_personality* %6, %struct.md_personality** %3, align 8
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = call i32 @md_bitmap_destroy(%struct.mddev* %7)
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = call i32 @mddev_detach(%struct.mddev* %9)
  %11 = load i32, i32* @md_misc_wq, align 4
  %12 = call i32 @flush_workqueue(i32 %11)
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 4
  store %struct.md_personality* null, %struct.md_personality** %17, align 8
  %18 = load %struct.mddev*, %struct.mddev** %2, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.md_personality*, %struct.md_personality** %3, align 8
  %22 = getelementptr inbounds %struct.md_personality, %struct.md_personality* %21, i32 0, i32 2
  %23 = load i32 (%struct.mddev*, i32*)*, i32 (%struct.mddev*, i32*)** %22, align 8
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = load %struct.mddev*, %struct.mddev** %2, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 %23(%struct.mddev* %24, i32* %27)
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.md_personality*, %struct.md_personality** %3, align 8
  %32 = getelementptr inbounds %struct.md_personality, %struct.md_personality* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.mddev*, %struct.mddev** %2, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 1
  store i32* @md_redundancy_group, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %35, %1
  %44 = load %struct.md_personality*, %struct.md_personality** %3, align 8
  %45 = getelementptr inbounds %struct.md_personality, %struct.md_personality* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @module_put(i32 %46)
  %48 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %49 = load %struct.mddev*, %struct.mddev** %2, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  ret void
}

declare dso_local i32 @md_bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @mddev_detach(%struct.mddev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
