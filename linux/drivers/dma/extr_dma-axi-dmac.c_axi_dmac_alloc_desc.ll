; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sg = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@AXI_DMAC_SG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axi_dmac_desc* (i32)* @axi_dmac_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axi_dmac_desc* @axi_dmac_alloc_desc(i32 %0) #0 {
  %2 = alloca %struct.axi_dmac_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.axi_dmac_desc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %7 = load i32, i32* @sg, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @struct_size(%struct.axi_dmac_desc* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @GFP_NOWAIT, align 4
  %11 = call %struct.axi_dmac_desc* @kzalloc(i32 %9, i32 %10)
  store %struct.axi_dmac_desc* %11, %struct.axi_dmac_desc** %4, align 8
  %12 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %13 = icmp ne %struct.axi_dmac_desc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.axi_dmac_desc* null, %struct.axi_dmac_desc** %2, align 8
  br label %37

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* @AXI_DMAC_SG_UNUSED, align 4
  %22 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %23 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %21, i32* %28, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %35 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  store %struct.axi_dmac_desc* %36, %struct.axi_dmac_desc** %2, align 8
  br label %37

37:                                               ; preds = %32, %14
  %38 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %2, align 8
  ret %struct.axi_dmac_desc* %38
}

declare dso_local %struct.axi_dmac_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.axi_dmac_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
