; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_restore_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_restore_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dma = type { i32, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_aes_dma*)* @atmel_aes_restore_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_aes_restore_sg(%struct.atmel_aes_dma* %0) #0 {
  %2 = alloca %struct.atmel_aes_dma*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_aes_dma* %0, %struct.atmel_aes_dma** %2, align 8
  %5 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %5, i32 0, i32 2
  %7 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %7, %struct.scatterlist** %3, align 8
  %8 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %2, align 8
  %9 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %28 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %27)
  store %struct.scatterlist* %28, %struct.scatterlist** %3, align 8
  br label %17

29:                                               ; preds = %24
  %30 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %31 = icmp ne %struct.scatterlist* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %43

33:                                               ; preds = %29
  %34 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %2, align 8
  %35 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %33, %32, %15
  ret void
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
