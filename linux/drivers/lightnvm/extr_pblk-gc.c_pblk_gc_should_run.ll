; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_should_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_should_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_gc = type { i64 }
%struct.pblk_rl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk_gc*, %struct.pblk_rl*)* @pblk_gc_should_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_gc_should_run(%struct.pblk_gc* %0, %struct.pblk_rl* %1) #0 {
  %3 = alloca %struct.pblk_gc*, align 8
  %4 = alloca %struct.pblk_rl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pblk_gc* %0, %struct.pblk_gc** %3, align 8
  store %struct.pblk_rl* %1, %struct.pblk_rl** %4, align 8
  %8 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %9 = getelementptr inbounds %struct.pblk_rl, %struct.pblk_rl* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %12 = call i32 @pblk_rl_high_thrs(%struct.pblk_rl* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pblk_rl*, %struct.pblk_rl** %4, align 8
  %14 = call i32 @pblk_rl_nr_free_blks(%struct.pblk_rl* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %19 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i1 [ true, %2 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pblk_rl_high_thrs(%struct.pblk_rl*) #1

declare dso_local i32 @pblk_rl_nr_free_blks(%struct.pblk_rl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
