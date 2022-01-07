; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.of_dma = type { %struct.stm32_mdma_device* }
%struct.stm32_mdma_device = type { i64, i32 }
%struct.stm32_mdma_chan = type { %struct.stm32_mdma_chan_config }
%struct.stm32_mdma_chan_config = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Bad number of args\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad request line\0A\00", align 1
@STM32_MDMA_VERY_HIGH_PRIORITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Priority level not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"No more channels available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @stm32_mdma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @stm32_mdma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.stm32_mdma_device*, align 8
  %7 = alloca %struct.stm32_mdma_chan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.stm32_mdma_chan_config, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %11 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %10, i32 0, i32 0
  %12 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %11, align 8
  store %struct.stm32_mdma_device* %12, %struct.stm32_mdma_device** %6, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %19 = call i32 @mdma2dev(%struct.stm32_mdma_device* %18)
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 2
  store i64 %38, i64* %39, align 8
  %40 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %41 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %47 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 4
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %55 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %21
  %59 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %60 = call i32 @mdma2dev(%struct.stm32_mdma_device* %59)
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %89

62:                                               ; preds = %21
  %63 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STM32_MDMA_VERY_HIGH_PRIORITY, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %69 = call i32 @mdma2dev(%struct.stm32_mdma_device* %68)
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %89

71:                                               ; preds = %62
  %72 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %73 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %72, i32 0, i32 1
  %74 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %73)
  store %struct.dma_chan* %74, %struct.dma_chan** %8, align 8
  %75 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %76 = icmp ne %struct.dma_chan* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %79 = call i32 @mdma2dev(%struct.stm32_mdma_device* %78)
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %89

81:                                               ; preds = %71
  %82 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %83 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %82)
  store %struct.stm32_mdma_chan* %83, %struct.stm32_mdma_chan** %7, align 8
  %84 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %85 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %84, i32 0, i32 0
  %86 = bitcast %struct.stm32_mdma_chan_config* %85 to i8*
  %87 = bitcast %struct.stm32_mdma_chan_config* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 40, i1 false)
  %88 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %88, %struct.dma_chan** %3, align 8
  br label %89

89:                                               ; preds = %81, %77, %67, %58, %17
  %90 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %90
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mdma2dev(%struct.stm32_mdma_device*) #1

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
