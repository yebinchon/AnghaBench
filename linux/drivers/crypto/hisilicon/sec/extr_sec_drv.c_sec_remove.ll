; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sec_dev_info = type { i32* }

@SEC_Q_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sec_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sec_dev_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sec_dev_info* %6, %struct.sec_dev_info** %3, align 8
  %7 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %8 = call i32 @sec_id_free(%struct.sec_dev_info* %7)
  %9 = call i32 (...) @sec_algs_unregister()
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SEC_Q_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %16 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @sec_queue_irq_uninit(i32* %20)
  %22 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %23 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @sec_queue_unconfig(%struct.sec_dev_info* %22, i32* %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %35 = call i32 @sec_base_exit(%struct.sec_dev_info* %34)
  ret i32 0
}

declare dso_local %struct.sec_dev_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sec_id_free(%struct.sec_dev_info*) #1

declare dso_local i32 @sec_algs_unregister(...) #1

declare dso_local i32 @sec_queue_irq_uninit(i32*) #1

declare dso_local i32 @sec_queue_unconfig(%struct.sec_dev_info*, i32*) #1

declare dso_local i32 @sec_base_exit(%struct.sec_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
