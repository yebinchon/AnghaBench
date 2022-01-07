; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.stm32_cryp = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@aead_algs = common dso_local global i32 0, align 4
@crypto_algs = common dso_local global i32 0, align 4
@cryp_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_cryp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_cryp*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.stm32_cryp* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.stm32_cryp* %7, %struct.stm32_cryp** %4, align 8
  %8 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %9 = icmp ne %struct.stm32_cryp* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13
  %23 = load i32, i32* @aead_algs, align 4
  %24 = load i32, i32* @aead_algs, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @crypto_unregister_aeads(i32 %23, i32 %25)
  %27 = load i32, i32* @crypto_algs, align 4
  %28 = load i32, i32* @crypto_algs, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @crypto_unregister_algs(i32 %27, i32 %29)
  %31 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @crypto_engine_exit(i32 %33)
  %35 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %36 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %36, i32 0, i32 2
  %38 = call i32 @list_del(i32* %37)
  %39 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %40 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %41 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_disable(i32 %42)
  %44 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_put_noidle(i32 %46)
  %48 = load %struct.stm32_cryp*, %struct.stm32_cryp** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %22, %20, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.stm32_cryp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @crypto_unregister_aeads(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @crypto_unregister_algs(i32, i32) #1

declare dso_local i32 @crypto_engine_exit(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
