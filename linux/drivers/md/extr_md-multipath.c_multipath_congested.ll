; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.mpconf* }
%struct.mpconf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.request_queue = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @multipath_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_congested(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpconf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 1
  %12 = load %struct.mpconf*, %struct.mpconf** %11, align 8
  store %struct.mpconf* %12, %struct.mpconf** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %22 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.md_rdev* @rcu_dereference(i32 %28)
  store %struct.md_rdev* %29, %struct.md_rdev** %8, align 8
  %30 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %31 = icmp ne %struct.md_rdev* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %20
  %33 = load i32, i32* @Faulty, align 4
  %34 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 1
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %40 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.request_queue* @bdev_get_queue(i32 %41)
  store %struct.request_queue* %42, %struct.request_queue** %9, align 8
  %43 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bdi_congested(i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %54

50:                                               ; preds = %32, %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %14

54:                                               ; preds = %38, %14
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
