; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dostart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dostart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.txx9dmac_slave* }
%struct.txx9dmac_slave = type { i32, i64 }
%struct.txx9dmac_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"dostart %u %p\0A\00", align 1
@CSR = common dso_local global i32 0, align 4
@TXX9_DMA_CSR_XFACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BUG: Attempted to start non-idle channel\0A\00", align 1
@CNTR = common dso_local global i32 0, align 4
@SAIR = common dso_local global i32 0, align 4
@DAIR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*, %struct.txx9dmac_desc*)* @txx9dmac_dostart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_dostart(%struct.txx9dmac_chan* %0, %struct.txx9dmac_desc* %1) #0 {
  %3 = alloca %struct.txx9dmac_chan*, align 8
  %4 = alloca %struct.txx9dmac_desc*, align 8
  %5 = alloca %struct.txx9dmac_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %3, align 8
  store %struct.txx9dmac_desc* %1, %struct.txx9dmac_desc** %4, align 8
  %8 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %9 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %10, align 8
  store %struct.txx9dmac_slave* %11, %struct.txx9dmac_slave** %5, align 8
  %12 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %13 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %12, i32 0, i32 1
  %14 = call i32 @chan2dev(%struct.TYPE_4__* %13)
  %15 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %16 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %20 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.txx9dmac_desc* %19)
  %21 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %22 = load i32, i32* @CSR, align 4
  %23 = call i32 @channel_readl(%struct.txx9dmac_chan* %21, i32 %22)
  %24 = load i32, i32* @TXX9_DMA_CSR_XFACT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %29 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %28, i32 0, i32 1
  %30 = call i32 @chan2dev(%struct.TYPE_4__* %29)
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %33 = call i32 @txx9dmac_dump_regs(%struct.txx9dmac_chan* %32)
  br label %147

34:                                               ; preds = %2
  %35 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %36 = call i64 @is_dmac64(%struct.txx9dmac_chan* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %40 = load i32, i32* @CNTR, align 4
  %41 = call i32 @channel64_writel(%struct.txx9dmac_chan* %39, i32 %40, i32 0)
  %42 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %43 = load i32, i32* @CSR, align 4
  %44 = call i32 @channel64_writel(%struct.txx9dmac_chan* %42, i32 %43, i32 -1)
  %45 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %46 = icmp ne %struct.txx9dmac_slave* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %49 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %54 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

56:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  %57 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %58 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %62

61:                                               ; preds = %38
  store i32 8, i32* %6, align 4
  store i32 8, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %64 = load i32, i32* @SAIR, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @channel64_writel(%struct.txx9dmac_chan* %63, i32 %64, i32 %65)
  %67 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %68 = load i32, i32* @DAIR, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @channel64_writel(%struct.txx9dmac_chan* %67, i32 %68, i32 %69)
  %71 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %72 = load i32, i32* @CCR, align 4
  %73 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %74 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @channel64_writel(%struct.txx9dmac_chan* %71, i32 %72, i32 %75)
  %77 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %78 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %79 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @channel64_write_CHAR(%struct.txx9dmac_chan* %77, i32 %81)
  br label %147

83:                                               ; preds = %34
  %84 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %85 = load i32, i32* @CNTR, align 4
  %86 = call i32 @channel32_writel(%struct.txx9dmac_chan* %84, i32 %85, i32 0)
  %87 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %88 = load i32, i32* @CSR, align 4
  %89 = call i32 @channel32_writel(%struct.txx9dmac_chan* %87, i32 %88, i32 -1)
  %90 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %91 = icmp ne %struct.txx9dmac_slave* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %83
  %93 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %94 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %99 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %105

101:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  %102 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %103 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %107

106:                                              ; preds = %83
  store i32 4, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %105
  %108 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %109 = load i32, i32* @SAIR, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @channel32_writel(%struct.txx9dmac_chan* %108, i32 %109, i32 %110)
  %112 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %113 = load i32, i32* @DAIR, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @channel32_writel(%struct.txx9dmac_chan* %112, i32 %113, i32 %114)
  %116 = call i64 (...) @txx9_dma_have_SMPCHN()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %120 = load i32, i32* @CCR, align 4
  %121 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %122 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @channel32_writel(%struct.txx9dmac_chan* %119, i32 %120, i32 %123)
  %125 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %126 = load i32, i32* @CHAR, align 4
  %127 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %128 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @channel32_writel(%struct.txx9dmac_chan* %125, i32 %126, i32 %130)
  br label %146

132:                                              ; preds = %107
  %133 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %134 = load i32, i32* @CHAR, align 4
  %135 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %136 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @channel32_writel(%struct.txx9dmac_chan* %133, i32 %134, i32 %138)
  %140 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %141 = load i32, i32* @CCR, align 4
  %142 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %143 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @channel32_writel(%struct.txx9dmac_chan* %140, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %132, %118
  br label %147

147:                                              ; preds = %27, %146, %62
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.txx9dmac_desc*) #1

declare dso_local i32 @chan2dev(%struct.TYPE_4__*) #1

declare dso_local i32 @channel_readl(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @txx9dmac_dump_regs(%struct.txx9dmac_chan*) #1

declare dso_local i64 @is_dmac64(%struct.txx9dmac_chan*) #1

declare dso_local i32 @channel64_writel(%struct.txx9dmac_chan*, i32, i32) #1

declare dso_local i32 @channel64_write_CHAR(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @channel32_writel(%struct.txx9dmac_chan*, i32, i32) #1

declare dso_local i64 @txx9_dma_have_SMPCHN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
