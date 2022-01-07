; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32 }

@HASH_SR = common dso_local global i32 0, align 4
@HASH_SR_OUTPUT_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@HASH_IMR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_hash_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_hash_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.stm32_hash_dev*
  store %struct.stm32_hash_dev* %9, %struct.stm32_hash_dev** %6, align 8
  %10 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %11 = load i32, i32* @HASH_SR, align 4
  %12 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HASH_SR_OUTPUT_READY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @HASH_SR_OUTPUT_READY, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %23 = load i32, i32* @HASH_SR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %27 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %32 = load i32, i32* @HASH_IMR, align 4
  %33 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %31, i32 %32, i32 0)
  %34 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @stm32_hash_read(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @stm32_hash_write(%struct.stm32_hash_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
