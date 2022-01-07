; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_xdmac.c_at_xdmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_xdmac.c_at_xdmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.at_xdmac = type { %struct.at_xdmac_chan*, %struct.TYPE_4__, i32, i32 }
%struct.at_xdmac_chan = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at_xdmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at_xdmac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.at_xdmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at_xdmac_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call i64 @platform_get_drvdata(%struct.platform_device* %6)
  %8 = inttoptr i64 %7 to %struct.at_xdmac*
  store %struct.at_xdmac* %8, %struct.at_xdmac** %3, align 8
  %9 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %10 = call i32 @at_xdmac_off(%struct.at_xdmac* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_dma_controller_free(i32 %14)
  %16 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %17 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %16, i32 0, i32 1
  %18 = call i32 @dma_async_device_unregister(%struct.TYPE_4__* %17)
  %19 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %20 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %24 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.at_xdmac* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %48, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %31 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.at_xdmac*, %struct.at_xdmac** %3, align 8
  %37 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %36, i32 0, i32 0
  %38 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %38, i64 %40
  store %struct.at_xdmac_chan* %41, %struct.at_xdmac_chan** %5, align 8
  %42 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %5, align 8
  %43 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %42, i32 0, i32 1
  %44 = call i32 @tasklet_kill(i32* %43)
  %45 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %5, align 8
  %46 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %45, i32 0, i32 0
  %47 = call i32 @at_xdmac_free_chan_resources(i32* %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %28

51:                                               ; preds = %28
  ret i32 0
}

declare dso_local i64 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @at_xdmac_off(%struct.at_xdmac*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_irq(i32, %struct.at_xdmac*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @at_xdmac_free_chan_resources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
