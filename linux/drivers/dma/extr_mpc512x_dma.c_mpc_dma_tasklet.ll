; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_dma = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Hardware reported following error(s) on channel %u:\0A\00", align 1
@MPC_DMA_DMAES_GPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"- Group Priority Error\0A\00", align 1
@MPC_DMA_DMAES_CPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"- Channel Priority Error\0A\00", align 1
@MPC_DMA_DMAES_SAE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"- Source Address Error\0A\00", align 1
@MPC_DMA_DMAES_SOE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"- Source Offset Configuration Error\0A\00", align 1
@MPC_DMA_DMAES_DAE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"- Destination Address Error\0A\00", align 1
@MPC_DMA_DMAES_DOE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"- Destination Offset Configuration Error\0A\00", align 1
@MPC_DMA_DMAES_NCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"- NBytes/Citter Configuration Error\0A\00", align 1
@MPC_DMA_DMAES_SGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"- Scatter/Gather Configuration Error\0A\00", align 1
@MPC_DMA_DMAES_SBE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"- Source Bus Error\0A\00", align 1
@MPC_DMA_DMAES_DBE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"- Destination Bus Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mpc_dma_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_dma_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mpc_dma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.mpc_dma*
  store %struct.mpc_dma* %8, %struct.mpc_dma** %3, align 8
  %9 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %10 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %9, i32 0, i32 2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %14 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %17 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %19 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %18, i32 0, i32 2
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %142

24:                                               ; preds = %1
  %25 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %26 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MPC_DMA_DMAES_ERRCHN(i32 %29)
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MPC_DMA_DMAES_GPE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %38 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %24
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MPC_DMA_DMAES_CPE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %49 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MPC_DMA_DMAES_SAE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %60 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MPC_DMA_DMAES_SOE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %71 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MPC_DMA_DMAES_DAE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %82 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MPC_DMA_DMAES_DOE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %93 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MPC_DMA_DMAES_NCE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %104 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @MPC_DMA_DMAES_SGE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %115 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MPC_DMA_DMAES_SBE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %126 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MPC_DMA_DMAES_DBE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %137 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %141

141:                                              ; preds = %135, %130
  br label %142

142:                                              ; preds = %141, %1
  %143 = load %struct.mpc_dma*, %struct.mpc_dma** %3, align 8
  %144 = call i32 @mpc_dma_process_completed(%struct.mpc_dma* %143)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @MPC_DMA_DMAES_ERRCHN(i32) #1

declare dso_local i32 @mpc_dma_process_completed(%struct.mpc_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
