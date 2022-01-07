; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_should_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_should_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_gc_should_start(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_gc*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %4 = load %struct.pblk*, %struct.pblk** %2, align 8
  %5 = getelementptr inbounds %struct.pblk, %struct.pblk* %4, i32 0, i32 0
  store %struct.pblk_gc* %5, %struct.pblk_gc** %3, align 8
  %6 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %7 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.pblk_gc*, %struct.pblk_gc** %3, align 8
  %12 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.pblk*, %struct.pblk** %2, align 8
  %17 = call i32 @pblk_gc_start(%struct.pblk* %16)
  %18 = load %struct.pblk*, %struct.pblk** %2, align 8
  %19 = call i32 @pblk_gc_kick(%struct.pblk* %18)
  br label %20

20:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local i32 @pblk_gc_start(%struct.pblk*) #1

declare dso_local i32 @pblk_gc_kick(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
