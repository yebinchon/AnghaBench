; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpconf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"multipath_map(): no more operational IO paths?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpconf*)* @multipath_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_map(%struct.mpconf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpconf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.mpconf* %0, %struct.mpconf** %3, align 8
  %7 = load %struct.mpconf*, %struct.mpconf** %3, align 8
  %8 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load %struct.mpconf*, %struct.mpconf** %3, align 8
  %17 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.md_rdev* @rcu_dereference(i32 %23)
  store %struct.md_rdev* %24, %struct.md_rdev** %6, align 8
  %25 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %26 = icmp ne %struct.md_rdev* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %15
  %28 = load i32, i32* @In_sync, align 4
  %29 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i32, i32* @Faulty, align 4
  %35 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 0
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %33, %27, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %11

49:                                               ; preds = %11
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = call i32 @pr_crit_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @pr_crit_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
