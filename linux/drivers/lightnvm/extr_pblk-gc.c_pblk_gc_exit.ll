; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i64, i32, i32, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_gc_exit(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk_gc*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 0
  store %struct.pblk_gc* %7, %struct.pblk_gc** %5, align 8
  %8 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %9 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %8, i32 0, i32 7
  store i64 0, i64* %9, align 8
  %10 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %11 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %10, i32 0, i32 6
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %14 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %16 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %21 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @kthread_stop(i64 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %26 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %31 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @kthread_stop(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %39 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @flush_workqueue(i32 %40)
  %42 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %43 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @flush_workqueue(i32 %44)
  br label %46

46:                                               ; preds = %37, %34
  %47 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @destroy_workqueue(i32 %49)
  %51 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %52 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @destroy_workqueue(i32 %53)
  %55 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %56 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.pblk_gc*, %struct.pblk_gc** %5, align 8
  %61 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @kthread_stop(i64 %62)
  br label %64

64:                                               ; preds = %59, %46
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
