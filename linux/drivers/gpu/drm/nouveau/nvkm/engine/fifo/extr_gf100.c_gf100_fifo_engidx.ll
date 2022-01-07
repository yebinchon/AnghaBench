; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_engidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_engidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_fifo*, i32)* @gf100_fifo_engidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fifo_engidx(%struct.gf100_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca i32, align 4
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 131, label %7
    i32 128, label %8
    i32 129, label %9
    i32 130, label %10
    i32 133, label %11
    i32 132, label %12
  ]

7:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %14

9:                                                ; preds = %2
  store i32 2, i32* %5, align 4
  br label %14

10:                                               ; preds = %2
  store i32 3, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %16

14:                                               ; preds = %12, %11, %10, %9, %8, %7
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
