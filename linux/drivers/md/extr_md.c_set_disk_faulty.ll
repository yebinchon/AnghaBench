; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_disk_faulty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_disk_faulty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32* }
%struct.md_rdev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @set_disk_faulty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_disk_faulty(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.mddev*, %struct.mddev** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.md_rdev* @md_find_rdev_rcu(%struct.mddev* %17, i32 %18)
  store %struct.md_rdev* %19, %struct.md_rdev** %6, align 8
  %20 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %21 = icmp ne %struct.md_rdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %38

25:                                               ; preds = %15
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %28 = call i32 @md_error(%struct.mddev* %26, %struct.md_rdev* %27)
  %29 = load i32, i32* @Faulty, align 4
  %30 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @md_find_rdev_rcu(%struct.mddev*, i32) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
