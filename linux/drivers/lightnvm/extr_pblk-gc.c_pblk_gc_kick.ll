; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@GC_TIME_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_gc_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_gc_kick(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_gc*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %4 = load %struct.pblk*, %struct.pblk** %2, align 8
  %5 = getelementptr inbounds %struct.pblk, %struct.pblk* %4, i32 0, i32 0
  store %struct.pblk_gc* %5, %struct.pblk_gc** %3, align 8
  %6 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %7 = call i32 @pblk_gc_writer_kick(%struct.pblk_gc* %6)
  %8 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %9 = call i32 @pblk_gc_reader_kick(%struct.pblk_gc* %8)
  %10 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %11 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %16 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wake_up_process(i32 %17)
  %19 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %20 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %19, i32 0, i32 0
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* @GC_TIME_MSECS, align 4
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @mod_timer(i32* %20, i64 %24)
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @pblk_gc_writer_kick(%struct.pblk_gc*) #1

declare dso_local i32 @pblk_gc_reader_kick(%struct.pblk_gc*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
