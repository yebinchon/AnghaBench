; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_xdmac.c_at_xdmac_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_xdmac.c_at_xdmac_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { %struct.at_xdmac* }
%struct.at_xdmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.at_xdmac_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"dma phandler args: bad number of args\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't get a dma channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"chan dt cfg: memif=%u perif=%u perid=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @at_xdmac_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @at_xdmac_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.at_xdmac*, align 8
  %7 = alloca %struct.at_xdmac_chan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %11 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %10, i32 0, i32 0
  %12 = load %struct.at_xdmac*, %struct.at_xdmac** %11, align 8
  store %struct.at_xdmac* %12, %struct.at_xdmac** %6, align 8
  %13 = load %struct.at_xdmac*, %struct.at_xdmac** %6, align 8
  %14 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.at_xdmac*, %struct.at_xdmac** %6, align 8
  %26 = getelementptr inbounds %struct.at_xdmac, %struct.at_xdmac* %25, i32 0, i32 0
  %27 = call %struct.dma_chan* @dma_get_any_slave_channel(%struct.TYPE_2__* %26)
  store %struct.dma_chan* %27, %struct.dma_chan** %8, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %29 = icmp ne %struct.dma_chan* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %72

33:                                               ; preds = %24
  %34 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %35 = call %struct.at_xdmac_chan* @to_at_xdmac_chan(%struct.dma_chan* %34)
  store %struct.at_xdmac_chan* %35, %struct.at_xdmac_chan** %7, align 8
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @AT91_XDMAC_DT_GET_MEM_IF(i32 %40)
  %42 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %43 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AT91_XDMAC_DT_GET_PER_IF(i32 %48)
  %50 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %51 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %53 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AT91_XDMAC_DT_GET_PERID(i32 %56)
  %58 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %59 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %62 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %65 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.at_xdmac_chan*, %struct.at_xdmac_chan** %7, align 8
  %68 = getelementptr inbounds %struct.at_xdmac_chan, %struct.at_xdmac_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66, i32 %69)
  %71 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %71, %struct.dma_chan** %3, align 8
  br label %72

72:                                               ; preds = %33, %30, %21
  %73 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %73
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(%struct.TYPE_2__*) #1

declare dso_local %struct.at_xdmac_chan* @to_at_xdmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @AT91_XDMAC_DT_GET_MEM_IF(i32) #1

declare dso_local i32 @AT91_XDMAC_DT_GET_PER_IF(i32) #1

declare dso_local i32 @AT91_XDMAC_DT_GET_PERID(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
