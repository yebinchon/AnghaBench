; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nbpf_device = type { i32, i32, i32, i32, %struct.nbpf_device*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nbpf_channel = type { i32, i32, i32, i32, %struct.nbpf_channel*, %struct.TYPE_3__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nbpf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbpf_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nbpf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbpf_channel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.nbpf_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.nbpf_device* %7, %struct.nbpf_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %11 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %14 = call i32 @devm_free_irq(%struct.TYPE_4__* %9, i32 %12, %struct.nbpf_device* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %18 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %25 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %24, i32 0, i32 4
  %26 = load %struct.nbpf_device*, %struct.nbpf_device** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %26, i64 %28
  %30 = bitcast %struct.nbpf_device* %29 to %struct.nbpf_channel*
  store %struct.nbpf_channel* %30, %struct.nbpf_channel** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.nbpf_channel*, %struct.nbpf_channel** %5, align 8
  %34 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nbpf_channel*, %struct.nbpf_channel** %5, align 8
  %37 = bitcast %struct.nbpf_channel* %36 to %struct.nbpf_device*
  %38 = call i32 @devm_free_irq(%struct.TYPE_4__* %32, i32 %35, %struct.nbpf_device* %37)
  %39 = load %struct.nbpf_channel*, %struct.nbpf_channel** %5, align 8
  %40 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %39, i32 0, i32 2
  %41 = call i32 @tasklet_kill(i32* %40)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @of_dma_controller_free(i32 %49)
  %51 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %52 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %51, i32 0, i32 1
  %53 = call i32 @dma_async_device_unregister(i32* %52)
  %54 = load %struct.nbpf_device*, %struct.nbpf_device** %3, align 8
  %55 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clk_disable_unprepare(i32 %56)
  ret i32 0
}

declare dso_local %struct.nbpf_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_free_irq(%struct.TYPE_4__*, i32, %struct.nbpf_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
