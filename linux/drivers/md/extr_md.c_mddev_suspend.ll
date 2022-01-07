; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.mddev*, i32)* }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global i64 0, align 8
@MD_ALLOW_SB_UPDATE = common dso_local global i32 0, align 4
@MD_UPDATING_SB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mddev_suspend(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 7
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* @current, align 8
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %8, %13
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i1 [ false, %1 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 6
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %72

28:                                               ; preds = %15
  %29 = call i32 (...) @synchronize_rcu()
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 2
  %32 = call i32 @wake_up(i32* %31)
  %33 = load i32, i32* @MD_ALLOW_SB_UPDATE, align 4
  %34 = load %struct.mddev*, %struct.mddev** %2, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 1
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = call i32 (...) @smp_mb__after_atomic()
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 4
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event(i32 %40, i32 %45)
  %47 = load %struct.mddev*, %struct.mddev** %2, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %50, align 8
  %52 = load %struct.mddev*, %struct.mddev** %2, align 8
  %53 = call i32 %51(%struct.mddev* %52, i32 1)
  %54 = load i32, i32* @MD_ALLOW_SB_UPDATE, align 4
  %55 = load %struct.mddev*, %struct.mddev** %2, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 1
  %57 = call i32 @clear_bit_unlock(i32 %54, i32* %56)
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MD_UPDATING_SB, align 4
  %62 = load %struct.mddev*, %struct.mddev** %2, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 1
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @wait_event(i32 %60, i32 %67)
  %69 = load %struct.mddev*, %struct.mddev** %2, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 0
  %71 = call i32 @del_timer_sync(i32* %70)
  br label %72

72:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
