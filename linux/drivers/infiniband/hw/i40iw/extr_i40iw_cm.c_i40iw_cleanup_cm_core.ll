; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cleanup_cm_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cleanup_cm_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_core = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_cleanup_cm_core(%struct.i40iw_cm_core* %0) #0 {
  %2 = alloca %struct.i40iw_cm_core*, align 8
  %3 = alloca i64, align 8
  store %struct.i40iw_cm_core* %0, %struct.i40iw_cm_core** %2, align 8
  %4 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %5 = icmp ne %struct.i40iw_cm_core* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %44

7:                                                ; preds = %1
  %8 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %8, i32 0, i32 2
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %12, i32 0, i32 3
  %14 = call i64 @timer_pending(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %18 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %17, i32 0, i32 3
  %19 = call i32 @del_timer_sync(i32* %18)
  br label %20

20:                                               ; preds = %16, %7
  %21 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %21, i32 0, i32 2
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @destroy_workqueue(i64 %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %36 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %2, align 8
  %41 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @destroy_workqueue(i64 %42)
  br label %44

44:                                               ; preds = %6, %39, %34
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
