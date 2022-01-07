; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.shdma_slave* }
%struct.shdma_slave = type { i32 }
%struct.shdma_chan = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.shdma_dev = type { i32, %struct.shdma_ops* }
%struct.shdma_ops = type { %struct.shdma_desc* (i32, i32)* }
%struct.shdma_desc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NR_DESCS_PER_CHANNEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@shdma_tx_submit = common dso_local global i32 0, align 4
@DESC_IDLE = common dso_local global i32 0, align 4
@shdma_slave_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @shdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.shdma_chan*, align 8
  %5 = alloca %struct.shdma_dev*, align 8
  %6 = alloca %struct.shdma_ops*, align 8
  %7 = alloca %struct.shdma_desc*, align 8
  %8 = alloca %struct.shdma_slave*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan* %11)
  store %struct.shdma_chan* %12, %struct.shdma_chan** %4, align 8
  %13 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.shdma_dev* @to_shdma_dev(i32 %16)
  store %struct.shdma_dev* %17, %struct.shdma_dev** %5, align 8
  %18 = load %struct.shdma_dev*, %struct.shdma_dev** %5, align 8
  %19 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %18, i32 0, i32 1
  %20 = load %struct.shdma_ops*, %struct.shdma_ops** %19, align 8
  store %struct.shdma_ops* %20, %struct.shdma_ops** %6, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 0
  %23 = load %struct.shdma_slave*, %struct.shdma_slave** %22, align 8
  store %struct.shdma_slave* %23, %struct.shdma_slave** %8, align 8
  %24 = load %struct.shdma_slave*, %struct.shdma_slave** %8, align 8
  %25 = icmp ne %struct.shdma_slave* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.shdma_slave*, %struct.shdma_slave** %8, align 8
  %28 = getelementptr inbounds %struct.shdma_slave, %struct.shdma_slave* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %33 = call i32 @shdma_setup_slave(%struct.shdma_chan* %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %102

37:                                               ; preds = %26
  br label %43

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, i32* @NR_DESCS_PER_CHANNEL, align 4
  %45 = load %struct.shdma_dev*, %struct.shdma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @kcalloc(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %53 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %98

59:                                               ; preds = %43
  %60 = load i32, i32* @NR_DESCS_PER_CHANNEL, align 4
  %61 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %62 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %93, %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @NR_DESCS_PER_CHANNEL, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load %struct.shdma_ops*, %struct.shdma_ops** %6, align 8
  %69 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %68, i32 0, i32 0
  %70 = load %struct.shdma_desc* (i32, i32)*, %struct.shdma_desc* (i32, i32)** %69, align 8
  %71 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %72 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.shdma_desc* %70(i32 %73, i32 %74)
  store %struct.shdma_desc* %75, %struct.shdma_desc** %7, align 8
  %76 = load %struct.shdma_desc*, %struct.shdma_desc** %7, align 8
  %77 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %76, i32 0, i32 2
  %78 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %79 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %78, i32 0, i32 2
  %80 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__* %77, %struct.TYPE_4__* %79)
  %81 = load i32, i32* @shdma_tx_submit, align 4
  %82 = load %struct.shdma_desc*, %struct.shdma_desc** %7, align 8
  %83 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @DESC_IDLE, align 4
  %86 = load %struct.shdma_desc*, %struct.shdma_desc** %7, align 8
  %87 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.shdma_desc*, %struct.shdma_desc** %7, align 8
  %89 = getelementptr inbounds %struct.shdma_desc, %struct.shdma_desc* %88, i32 0, i32 0
  %90 = load %struct.shdma_chan*, %struct.shdma_chan** %4, align 8
  %91 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %90, i32 0, i32 1
  %92 = call i32 @list_add(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %63

96:                                               ; preds = %63
  %97 = load i32, i32* @NR_DESCS_PER_CHANNEL, align 4
  store i32 %97, i32* %2, align 4
  br label %112

98:                                               ; preds = %56
  %99 = load %struct.shdma_slave*, %struct.shdma_slave** %8, align 8
  %100 = icmp ne %struct.shdma_slave* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %36
  %103 = load %struct.shdma_slave*, %struct.shdma_slave** %8, align 8
  %104 = getelementptr inbounds %struct.shdma_slave, %struct.shdma_slave* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @shdma_slave_used, align 4
  %107 = call i32 @clear_bit(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %98
  %109 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %110 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %109, i32 0, i32 0
  store %struct.shdma_slave* null, %struct.shdma_slave** %110, align 8
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %96
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.shdma_dev* @to_shdma_dev(i32) #1

declare dso_local i32 @shdma_setup_slave(%struct.shdma_chan*, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
