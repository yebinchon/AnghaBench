; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa11x0_dma_phy = type { i32, %struct.TYPE_7__*, i64, %struct.sa11x0_dma_desc* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sa11x0_dma_desc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"pchan %u: txd %p[%x]: starting: DDAR:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa11x0_dma_phy*, %struct.sa11x0_dma_desc*)* @sa11x0_dma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa11x0_dma_start_desc(%struct.sa11x0_dma_phy* %0, %struct.sa11x0_dma_desc* %1) #0 {
  %3 = alloca %struct.sa11x0_dma_phy*, align 8
  %4 = alloca %struct.sa11x0_dma_desc*, align 8
  store %struct.sa11x0_dma_phy* %0, %struct.sa11x0_dma_phy** %3, align 8
  store %struct.sa11x0_dma_desc* %1, %struct.sa11x0_dma_desc** %4, align 8
  %5 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %4, align 8
  %6 = getelementptr inbounds %struct.sa11x0_dma_desc, %struct.sa11x0_dma_desc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %4, align 8
  %10 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %3, align 8
  %11 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %10, i32 0, i32 3
  store %struct.sa11x0_dma_desc* %9, %struct.sa11x0_dma_desc** %11, align 8
  %12 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %3, align 8
  %13 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %3, align 8
  %15 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %3, align 8
  %21 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %4, align 8
  %24 = getelementptr inbounds %struct.sa11x0_dma_desc, %struct.sa11x0_dma_desc* %23, i32 0, i32 1
  %25 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %4, align 8
  %26 = getelementptr inbounds %struct.sa11x0_dma_desc, %struct.sa11x0_dma_desc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sa11x0_dma_desc*, %struct.sa11x0_dma_desc** %4, align 8
  %31 = getelementptr inbounds %struct.sa11x0_dma_desc, %struct.sa11x0_dma_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_vdbg(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.TYPE_8__* %24, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
