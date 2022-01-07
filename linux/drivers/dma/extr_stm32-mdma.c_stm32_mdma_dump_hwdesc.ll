; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_dump_hwdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_dump_hwdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { i32 }
%struct.stm32_mdma_desc_node = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"hwdesc:  %pad\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CTCR:    0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CBNDTR:  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CSAR:    0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CDAR:    0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CBRUR:   0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"CLAR:    0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CTBR:    0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CMAR:    0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"CMDR:    0x%08x\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_mdma_chan*, %struct.stm32_mdma_desc_node*)* @stm32_mdma_dump_hwdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_dump_hwdesc(%struct.stm32_mdma_chan* %0, %struct.stm32_mdma_desc_node* %1) #0 {
  %3 = alloca %struct.stm32_mdma_chan*, align 8
  %4 = alloca %struct.stm32_mdma_desc_node*, align 8
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %3, align 8
  store %struct.stm32_mdma_desc_node* %1, %struct.stm32_mdma_desc_node** %4, align 8
  %5 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %6 = call i32 @chan2dev(%struct.stm32_mdma_chan* %5)
  %7 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %8 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %7, i32 0, i32 1
  %9 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %11 = call i32 @chan2dev(%struct.stm32_mdma_chan* %10)
  %12 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %18 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %19 = call i32 @chan2dev(%struct.stm32_mdma_chan* %18)
  %20 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %27 = call i32 @chan2dev(%struct.stm32_mdma_chan* %26)
  %28 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %32)
  %34 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %35 = call i32 @chan2dev(%struct.stm32_mdma_chan* %34)
  %36 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  %42 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %43 = call i32 @chan2dev(%struct.stm32_mdma_chan* %42)
  %44 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %48)
  %50 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %51 = call i32 @chan2dev(%struct.stm32_mdma_chan* %50)
  %52 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %56)
  %58 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %59 = call i32 @chan2dev(%struct.stm32_mdma_chan* %58)
  %60 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* %64)
  %66 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %67 = call i32 @chan2dev(%struct.stm32_mdma_chan* %66)
  %68 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %69 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %72)
  %74 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %75 = call i32 @chan2dev(%struct.stm32_mdma_chan* %74)
  %76 = load %struct.stm32_mdma_desc_node*, %struct.stm32_mdma_desc_node** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_mdma_desc_node, %struct.stm32_mdma_desc_node* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %80)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
