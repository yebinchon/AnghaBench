; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i32 }

@HASH_FLAGS_CPU = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_hash_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_hash_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.stm32_hash_dev*
  store %struct.stm32_hash_dev* %8, %struct.stm32_hash_dev** %6, align 8
  %9 = load i32, i32* @HASH_FLAGS_CPU, align 4
  %10 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %11 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %17 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %26 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %55

29:                                               ; preds = %15
  br label %53

30:                                               ; preds = %2
  %31 = load i32, i32* @HASH_FLAGS_DMA_READY, align 4
  %32 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %33 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %39 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %40 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %55

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %44, %22
  %56 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @stm32_hash_finish_req(i32 %58, i32 0)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %53
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @stm32_hash_finish_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
