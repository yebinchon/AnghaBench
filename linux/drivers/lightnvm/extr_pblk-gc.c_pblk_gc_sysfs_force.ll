; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_sysfs_force.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_sysfs_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_gc_sysfs_force(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pblk_gc*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pblk*, %struct.pblk** %4, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  store %struct.pblk_gc* %8, %struct.pblk_gc** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %19 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %18, i32 0, i32 2
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %23 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %28 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %31 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %34 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.pblk*, %struct.pblk** %4, align 8
  %37 = call i32 @pblk_gc_should_start(%struct.pblk* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_gc_should_start(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
