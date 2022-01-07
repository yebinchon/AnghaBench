; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32, i32, i32 }

@RK_CRYPTO_INTSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DMA Error\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk_crypto_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_crypto_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rk_crypto_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.rk_crypto_info* @platform_get_drvdata(i8* %7)
  store %struct.rk_crypto_info* %8, %struct.rk_crypto_info** %5, align 8
  %9 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %10 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %13 = load i32, i32* @RK_CRYPTO_INTSTS, align 4
  %14 = call i32 @CRYPTO_READ(%struct.rk_crypto_info* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %16 = load i32, i32* @RK_CRYPTO_INTSTS, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 10
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %24 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %30 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %33 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %32, i32 0, i32 1
  %34 = call i32 @tasklet_schedule(i32* %33)
  %35 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %36 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local %struct.rk_crypto_info* @platform_get_drvdata(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @CRYPTO_READ(%struct.rk_crypto_info*, i32) #1

declare dso_local i32 @CRYPTO_WRITE(%struct.rk_crypto_info*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
