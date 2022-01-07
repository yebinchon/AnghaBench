; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i64, i64, i32, i32 }
%struct.shdma_chan = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @shdma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shdma_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.shdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = call %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan* %7)
  store %struct.shdma_chan* %8, %struct.shdma_chan** %6, align 8
  %9 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %10 = icmp ne %struct.dma_slave_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br label %27

27:                                               ; preds = %19, %14
  %28 = phi i1 [ false, %14 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %37 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %47 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  %55 = call i32 @shdma_setup_slave(%struct.shdma_chan* %39, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @shdma_setup_slave(%struct.shdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
