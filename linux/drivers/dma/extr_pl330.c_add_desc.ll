; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_add_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_add_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dma_pl330_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, i32, i32)* @add_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_desc(%struct.list_head* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_pl330_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.dma_pl330_desc* @kcalloc(i32 %13, i32 4, i32 %14)
  store %struct.dma_pl330_desc* %15, %struct.dma_pl330_desc** %10, align 8
  %16 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %10, align 8
  %17 = icmp ne %struct.dma_pl330_desc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %40, %19
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %28, i64 %30
  %32 = call i32 @_init_desc(%struct.dma_pl330_desc* %31)
  %33 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %33, i64 %35
  %37 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %6, align 8
  %39 = call i32 @list_add_tail(i32* %37, %struct.list_head* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.dma_pl330_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_init_desc(%struct.dma_pl330_desc*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
