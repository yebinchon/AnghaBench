; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_device_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.mpc_dma_chan = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_dma = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @mpc_dma_device_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_device_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.mpc_dma_chan*, align 8
  %7 = alloca %struct.mpc_dma*, align 8
  %8 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan* %9)
  store %struct.mpc_dma_chan* %10, %struct.mpc_dma_chan** %6, align 8
  %11 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %12 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %11, i32 0, i32 7
  %13 = call %struct.mpc_dma* @dma_chan_to_mpc_dma(i32* %12)
  store %struct.mpc_dma* %13, %struct.mpc_dma** %7, align 8
  %14 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %18 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IS_ALIGNED(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %24 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ALIGNED(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %110

34:                                               ; preds = %22
  %35 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %39 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @is_buswidth_valid(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %45 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %48 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @is_buswidth_valid(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %110

55:                                               ; preds = %43
  %56 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %57 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %56, i32 0, i32 2
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %64 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %69 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %71 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %74 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %76 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %79 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %81 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %84 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %86 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %89 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %91 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %55
  %95 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %96 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %55
  %98 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %99 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %104 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %6, align 8
  %107 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %106, i32 0, i32 2
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %52, %31
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.mpc_dma* @dma_chan_to_mpc_dma(i32*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @is_buswidth_valid(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
