; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_setup_hwdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_setup_hwdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { %struct.stm32_mdma_chan_config }
%struct.stm32_mdma_chan_config = type { i32, i32 }
%struct.stm32_mdma_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.stm32_mdma_hwdesc* }
%struct.stm32_mdma_hwdesc = type { i32, i32, i32, i64, i32, i32, i64, i8*, i8* }

@STM32_MDMA_CBNDTR_BRC_MK = common dso_local global i32 0, align 4
@STM32_MDMA_CBNDTR_BRDUM = common dso_local global i32 0, align 4
@STM32_MDMA_CBNDTR_BRSUM = common dso_local global i32 0, align 4
@STM32_MDMA_CBNDTR_BNDT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_mdma_chan*, %struct.stm32_mdma_desc*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32)* @stm32_mdma_setup_hwdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_setup_hwdesc(%struct.stm32_mdma_chan* %0, %struct.stm32_mdma_desc* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.stm32_mdma_chan*, align 8
  %14 = alloca %struct.stm32_mdma_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.stm32_mdma_chan_config*, align 8
  %26 = alloca %struct.stm32_mdma_hwdesc*, align 8
  %27 = alloca i32, align 4
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %13, align 8
  store %struct.stm32_mdma_desc* %1, %struct.stm32_mdma_desc** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %28 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %13, align 8
  %29 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %28, i32 0, i32 0
  store %struct.stm32_mdma_chan_config* %29, %struct.stm32_mdma_chan_config** %25, align 8
  %30 = load i32, i32* %16, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %27, align 4
  %32 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %14, align 8
  %33 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %38, align 8
  store %struct.stm32_mdma_hwdesc* %39, %struct.stm32_mdma_hwdesc** %26, align 8
  %40 = load i32, i32* %20, align 4
  %41 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %42 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @STM32_MDMA_CBNDTR_BRC_MK, align 4
  %44 = load i32, i32* @STM32_MDMA_CBNDTR_BRDUM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @STM32_MDMA_CBNDTR_BRSUM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @STM32_MDMA_CBNDTR_BNDT_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %52 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @STM32_MDMA_CBNDTR_BNDT(i32 %55)
  %57 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %58 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %63 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %66 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %68 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %71 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.stm32_mdma_chan_config*, %struct.stm32_mdma_chan_config** %25, align 8
  %73 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %76 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.stm32_mdma_chan_config*, %struct.stm32_mdma_chan_config** %25, align 8
  %78 = getelementptr inbounds %struct.stm32_mdma_chan_config, %struct.stm32_mdma_chan_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %81 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %12
  %85 = load i32, i32* %24, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %14, align 8
  %89 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %95 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %99

96:                                               ; preds = %84
  %97 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %98 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %87
  br label %111

100:                                              ; preds = %12
  %101 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %14, align 8
  %102 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %27, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %26, align 8
  %110 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %100, %99
  %112 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %13, align 8
  %113 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %14, align 8
  %114 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = call i32 @stm32_mdma_dump_hwdesc(%struct.stm32_mdma_chan* %112, %struct.TYPE_2__* %118)
  ret void
}

declare dso_local i32 @STM32_MDMA_CBNDTR_BNDT(i32) #1

declare dso_local i32 @stm32_mdma_dump_hwdesc(%struct.stm32_mdma_chan*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
