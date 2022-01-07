; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.atmel_aes_dev = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@atmel_aes = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_aes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_aes_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.atmel_aes_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.atmel_aes_dev* %6, %struct.atmel_aes_dev** %4, align 8
  %7 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %8 = icmp ne %struct.atmel_aes_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @atmel_aes, i32 0, i32 0))
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %14, i32 0, i32 3
  %16 = call i32 @list_del(i32* %15)
  %17 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @atmel_aes, i32 0, i32 0))
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %19 = call i32 @atmel_aes_unregister_algs(%struct.atmel_aes_dev* %18)
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 2
  %22 = call i32 @tasklet_kill(i32* %21)
  %23 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %23, i32 0, i32 1
  %25 = call i32 @tasklet_kill(i32* %24)
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %27 = call i32 @atmel_aes_dma_cleanup(%struct.atmel_aes_dev* %26)
  %28 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %29 = call i32 @atmel_aes_buff_cleanup(%struct.atmel_aes_dev* %28)
  %30 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_unprepare(i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %12, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.atmel_aes_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atmel_aes_unregister_algs(%struct.atmel_aes_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @atmel_aes_dma_cleanup(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_buff_cleanup(%struct.atmel_aes_dev*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
