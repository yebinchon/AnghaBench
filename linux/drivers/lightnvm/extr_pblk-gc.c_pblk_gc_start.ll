; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"gc start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_gc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_gc_start(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %3 = load %struct.pblk*, %struct.pblk** %2, align 8
  %4 = getelementptr inbounds %struct.pblk, %struct.pblk* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.pblk*, %struct.pblk** %2, align 8
  %7 = call i32 @pblk_debug(%struct.pblk* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
