; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_want_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_want_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.md_rdev = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, i32)* @want_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_replace(%struct.stripe_head* %0, i32 %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %9 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.md_rdev* @rcu_dereference(i32 %17)
  store %struct.md_rdev* %18, %struct.md_rdev** %5, align 8
  %19 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %20 = icmp ne %struct.md_rdev* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load i32, i32* @Faulty, align 4
  %23 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 2
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @In_sync, align 4
  %29 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %27
  %34 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %38 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41, %33
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %41, %27, %21, %2
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
