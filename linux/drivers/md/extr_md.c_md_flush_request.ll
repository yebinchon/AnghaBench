; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_flush_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_flush_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__*, i32, i32, %struct.bio*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.mddev*, %struct.bio*)* }
%struct.bio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@submit_flushes = common dso_local global i32 0, align 4
@md_wq = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_flush_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = call i32 (...) @ktime_get_boottime()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 3
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @ktime_after(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i1 [ true, %2 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wait_event_lock_irq(i32 %12, i32 %26, i32 %29)
  %31 = load %struct.mddev*, %struct.mddev** %3, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ktime_after(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %24
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 3
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  %41 = call i32 @WARN_ON(%struct.bio* %40)
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = load %struct.mddev*, %struct.mddev** %3, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 3
  store %struct.bio* %42, %struct.bio** %44, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %45

45:                                               ; preds = %37, %24
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = icmp ne %struct.bio* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load %struct.mddev*, %struct.mddev** %3, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 1
  %54 = load i32, i32* @submit_flushes, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load i32, i32* @md_wq, align 4
  %57 = load %struct.mddev*, %struct.mddev** %3, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 1
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %85

60:                                               ; preds = %45
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = call i32 @bio_endio(%struct.bio* %67)
  br label %84

69:                                               ; preds = %60
  %70 = load i32, i32* @REQ_PREFLUSH, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.mddev*, %struct.mddev** %3, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.mddev*, %struct.bio*)*, i32 (%struct.mddev*, %struct.bio*)** %79, align 8
  %81 = load %struct.mddev*, %struct.mddev** %3, align 8
  %82 = load %struct.bio*, %struct.bio** %4, align 8
  %83 = call i32 %80(%struct.mddev* %81, %struct.bio* %82)
  br label %84

84:                                               ; preds = %69, %66
  br label %85

85:                                               ; preds = %84, %51
  ret void
}

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @WARN_ON(%struct.bio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
