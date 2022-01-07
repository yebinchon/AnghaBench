; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.owl_dma = type { i32 }
%struct.owl_dma_vchan = type { i32, %struct.dma_slave_config }
%struct.dma_slave_config = type { i64, i64 }
%struct.owl_dma_txd = type { i32, i32, i32 }
%struct.owl_dma_lli = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to allocate lli\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to config lli\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @owl_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @owl_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.owl_dma*, align 8
  %15 = alloca %struct.owl_dma_vchan*, align 8
  %16 = alloca %struct.dma_slave_config*, align 8
  %17 = alloca %struct.owl_dma_txd*, align 8
  %18 = alloca %struct.owl_dma_lli*, align 8
  %19 = alloca %struct.owl_dma_lli*, align 8
  %20 = alloca %struct.owl_dma_lli*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.owl_dma* @to_owl_dma(i32 %28)
  store %struct.owl_dma* %29, %struct.owl_dma** %14, align 8
  %30 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %31 = call %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan* %30)
  store %struct.owl_dma_vchan* %31, %struct.owl_dma_vchan** %15, align 8
  %32 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %15, align 8
  %33 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %32, i32 0, i32 1
  store %struct.dma_slave_config* %33, %struct.dma_slave_config** %16, align 8
  store %struct.owl_dma_lli* null, %struct.owl_dma_lli** %19, align 8
  store %struct.owl_dma_lli* null, %struct.owl_dma_lli** %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = udiv i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* @GFP_NOWAIT, align 4
  %39 = call %struct.owl_dma_txd* @kzalloc(i32 12, i32 %38)
  store %struct.owl_dma_txd* %39, %struct.owl_dma_txd** %17, align 8
  %40 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %41 = icmp ne %struct.owl_dma_txd* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %137

43:                                               ; preds = %6
  %44 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %45 = getelementptr inbounds %struct.owl_dma_txd, %struct.owl_dma_txd* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %48 = getelementptr inbounds %struct.owl_dma_txd, %struct.owl_dma_txd* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  store i32 0, i32* %25, align 4
  br label %49

49:                                               ; preds = %119, %43
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %23, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = load %struct.owl_dma*, %struct.owl_dma** %14, align 8
  %55 = call %struct.owl_dma_lli* @owl_dma_alloc_lli(%struct.owl_dma* %54)
  store %struct.owl_dma_lli* %55, %struct.owl_dma_lli** %18, align 8
  %56 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %18, align 8
  %57 = icmp ne %struct.owl_dma_lli* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %60 = call i32 @chan2dev(%struct.dma_chan* %59)
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %133

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %25, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = add i64 %67, %71
  store i64 %72, i64* %21, align 8
  %73 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %22, align 8
  br label %91

76:                                               ; preds = %62
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %82 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %21, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %25, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %85, %87
  %89 = add i64 %84, %88
  store i64 %89, i64* %22, align 8
  br label %90

90:                                               ; preds = %80, %76
  br label %91

91:                                               ; preds = %90, %66
  %92 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %15, align 8
  %93 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %18, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %99 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %100 = getelementptr inbounds %struct.owl_dma_txd, %struct.owl_dma_txd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @owl_dma_cfg_lli(%struct.owl_dma_vchan* %92, %struct.owl_dma_lli* %93, i64 %94, i64 %95, i64 %96, i32 %97, %struct.dma_slave_config* %98, i32 %101)
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %24, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %107 = call i32 @chan2dev(%struct.dma_chan* %106)
  %108 = call i32 @dev_warn(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %133

109:                                              ; preds = %91
  %110 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %20, align 8
  %111 = icmp ne %struct.owl_dma_lli* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %18, align 8
  store %struct.owl_dma_lli* %113, %struct.owl_dma_lli** %20, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %116 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %19, align 8
  %117 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %18, align 8
  %118 = call %struct.owl_dma_lli* @owl_dma_add_lli(%struct.owl_dma_txd* %115, %struct.owl_dma_lli* %116, %struct.owl_dma_lli* %117, i32 0)
  store %struct.owl_dma_lli* %118, %struct.owl_dma_lli** %19, align 8
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %25, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %25, align 4
  br label %49

122:                                              ; preds = %49
  %123 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %124 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %19, align 8
  %125 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %20, align 8
  %126 = call %struct.owl_dma_lli* @owl_dma_add_lli(%struct.owl_dma_txd* %123, %struct.owl_dma_lli* %124, %struct.owl_dma_lli* %125, i32 1)
  %127 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %15, align 8
  %128 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %127, i32 0, i32 0
  %129 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %130 = getelementptr inbounds %struct.owl_dma_txd, %struct.owl_dma_txd* %129, i32 0, i32 1
  %131 = load i64, i64* %13, align 8
  %132 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %128, i32* %130, i64 %131)
  store %struct.dma_async_tx_descriptor* %132, %struct.dma_async_tx_descriptor** %7, align 8
  br label %137

133:                                              ; preds = %105, %58
  %134 = load %struct.owl_dma*, %struct.owl_dma** %14, align 8
  %135 = load %struct.owl_dma_txd*, %struct.owl_dma_txd** %17, align 8
  %136 = call i32 @owl_dma_free_txd(%struct.owl_dma* %134, %struct.owl_dma_txd* %135)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %137

137:                                              ; preds = %133, %122, %42
  %138 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %138
}

declare dso_local %struct.owl_dma* @to_owl_dma(i32) #1

declare dso_local %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan*) #1

declare dso_local %struct.owl_dma_txd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.owl_dma_lli* @owl_dma_alloc_lli(%struct.owl_dma*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @owl_dma_cfg_lli(%struct.owl_dma_vchan*, %struct.owl_dma_lli*, i64, i64, i64, i32, %struct.dma_slave_config*, i32) #1

declare dso_local %struct.owl_dma_lli* @owl_dma_add_lli(%struct.owl_dma_txd*, %struct.owl_dma_lli*, %struct.owl_dma_lli*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

declare dso_local i32 @owl_dma_free_txd(%struct.owl_dma*, %struct.owl_dma_txd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
