; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i64, i32 }
%struct.stm32_hash_request_ctx = type { i32 }

@HASH_FLAGS_INIT = common dso_local global i32 0, align 4
@HASH_CR = common dso_local global i32 0, align 4
@HASH_CR_INIT = common dso_local global i32 0, align 4
@HASH_STR = common dso_local global i32 0, align 4
@HASH_DIN = common dso_local global i32 0, align 4
@HASH_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*, %struct.stm32_hash_request_ctx*)* @stm32_hash_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_hw_init(%struct.stm32_hash_dev* %0, %struct.stm32_hash_request_ctx* %1) #0 {
  %3 = alloca %struct.stm32_hash_dev*, align 8
  %4 = alloca %struct.stm32_hash_request_ctx*, align 8
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %3, align 8
  store %struct.stm32_hash_request_ctx* %1, %struct.stm32_hash_request_ctx** %4, align 8
  %5 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %6 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pm_runtime_get_sync(i32 %7)
  %9 = load i32, i32* @HASH_FLAGS_INIT, align 4
  %10 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %17 = load i32, i32* @HASH_CR, align 4
  %18 = load i32, i32* @HASH_CR_INIT, align 4
  %19 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %21 = load i32, i32* @HASH_STR, align 4
  %22 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %20, i32 %21, i32 0)
  %23 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %24 = load i32, i32* @HASH_DIN, align 4
  %25 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %23, i32 %24, i32 0)
  %26 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %27 = load i32, i32* @HASH_IMR, align 4
  %28 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %26, i32 %27, i32 0)
  %29 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %15, %2
  ret i32 0
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32_hash_write(%struct.stm32_hash_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
