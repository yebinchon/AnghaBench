; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.stm32_hash_dev = type { i32, i32, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@stm32_hash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_hash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_hash_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.stm32_hash_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.stm32_hash_dev* %7, %struct.stm32_hash_dev** %4, align 8
  %8 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %9 = icmp ne %struct.stm32_hash_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %13
  %23 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %24 = call i32 @stm32_hash_unregister_algs(%struct.stm32_hash_dev* %23)
  %25 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @crypto_engine_exit(i32 %27)
  %29 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %30 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %30, i32 0, i32 3
  %32 = call i32 @list_del(i32* %31)
  %33 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %34 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dma_release_channel(i64 %41)
  br label %43

43:                                               ; preds = %38, %22
  %44 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_disable(i32 %46)
  %48 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pm_runtime_put_noidle(i32 %50)
  %52 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %20, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.stm32_hash_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32_hash_unregister_algs(%struct.stm32_hash_dev*) #1

declare dso_local i32 @crypto_engine_exit(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
