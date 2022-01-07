; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*, %struct.bio*)* }
%struct.bio = type { i32 }

@__wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_handle_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  br label %5

5:                                                ; preds = %46, %2
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = call i64 @is_suspended(%struct.mddev* %7, %struct.bio* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load i32, i32* @__wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  br label %14

14:                                               ; preds = %24, %11
  %15 = load %struct.mddev*, %struct.mddev** %3, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* %16, i32* @__wait, i32 %17)
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i64 @is_suspended(%struct.mddev* %19, %struct.bio* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = call i32 (...) @schedule()
  %27 = call i32 (...) @rcu_read_lock()
  br label %14

28:                                               ; preds = %23
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 0
  %31 = call i32 @finish_wait(i32* %30, i32* @__wait)
  br label %32

32:                                               ; preds = %28, %5
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 2
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.mddev*, %struct.mddev** %3, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mddev*, %struct.bio*)*, i32 (%struct.mddev*, %struct.bio*)** %40, align 8
  %42 = load %struct.mddev*, %struct.mddev** %3, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = call i32 %41(%struct.mddev* %42, %struct.bio* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %32
  %47 = load %struct.mddev*, %struct.mddev** %3, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 2
  %49 = call i32 @atomic_dec(i32* %48)
  %50 = load %struct.mddev*, %struct.mddev** %3, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 0
  %52 = call i32 @wake_up(i32* %51)
  br label %5

53:                                               ; preds = %32
  %54 = load %struct.mddev*, %struct.mddev** %3, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 2
  %56 = call i64 @atomic_dec_and_test(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.mddev*, %struct.mddev** %3, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.mddev*, %struct.mddev** %3, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 0
  %66 = call i32 @wake_up(i32* %65)
  br label %67

67:                                               ; preds = %63, %58, %53
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @is_suspended(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
