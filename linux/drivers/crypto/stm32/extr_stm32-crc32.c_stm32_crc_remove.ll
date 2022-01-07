; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-crc32.c_stm32_crc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-crc32.c_stm32_crc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.stm32_crc = type { i32, i32, i32 }

@crc_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@algs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_crc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_crc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_crc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.stm32_crc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.stm32_crc* %7, %struct.stm32_crc** %4, align 8
  %8 = load %struct.stm32_crc*, %struct.stm32_crc** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_crc, %struct.stm32_crc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crc_list, i32 0, i32 0))
  %18 = load %struct.stm32_crc*, %struct.stm32_crc** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_crc, %struct.stm32_crc* %18, i32 0, i32 2
  %20 = call i32 @list_del(i32* %19)
  %21 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crc_list, i32 0, i32 0))
  %22 = load i32, i32* @algs, align 4
  %23 = load i32, i32* @algs, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @crypto_unregister_shashes(i32 %22, i32 %24)
  %26 = load %struct.stm32_crc*, %struct.stm32_crc** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_crc, %struct.stm32_crc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_disable(i32 %28)
  %30 = load %struct.stm32_crc*, %struct.stm32_crc** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_crc, %struct.stm32_crc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put_noidle(i32 %32)
  %34 = load %struct.stm32_crc*, %struct.stm32_crc** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_crc, %struct.stm32_crc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %16, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.stm32_crc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_unregister_shashes(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
