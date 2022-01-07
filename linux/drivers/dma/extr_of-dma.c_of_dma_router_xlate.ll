; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_of-dma.c_of_dma_router_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_of-dma.c_of_dma_router_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i8*)* }
%struct.of_phandle_args = type { i32 }
%struct.of_dma = type { %struct.TYPE_2__*, {}*, i8* (%struct.of_phandle_args*, %struct.of_dma*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @of_dma_router_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @of_dma_router_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.of_dma*, align 8
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = alloca i8*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %11 = call i32 @memcpy(%struct.of_phandle_args* %8, %struct.of_phandle_args* %10, i32 4)
  %12 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %13 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %12, i32 0, i32 2
  %14 = load i8* (%struct.of_phandle_args*, %struct.of_dma*)*, i8* (%struct.of_phandle_args*, %struct.of_dma*)** %13, align 8
  %15 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %16 = call i8* %14(%struct.of_phandle_args* %8, %struct.of_dma* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %62

21:                                               ; preds = %2
  %22 = call %struct.of_dma* @of_dma_find_controller(%struct.of_phandle_args* %8)
  store %struct.of_dma* %22, %struct.of_dma** %7, align 8
  %23 = load %struct.of_dma*, %struct.of_dma** %7, align 8
  %24 = icmp ne %struct.of_dma* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %62

26:                                               ; preds = %21
  %27 = load %struct.of_dma*, %struct.of_dma** %7, align 8
  %28 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %27, i32 0, i32 1
  %29 = bitcast {}** %28 to %struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)**
  %30 = load %struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)*, %struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)** %29, align 8
  %31 = load %struct.of_dma*, %struct.of_dma** %7, align 8
  %32 = call %struct.dma_chan* %30(%struct.of_phandle_args* %8, %struct.of_dma* %31)
  store %struct.dma_chan* %32, %struct.dma_chan** %6, align 8
  %33 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %34 = icmp ne %struct.dma_chan* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %37 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %40 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %39, i32 0, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %43 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %57

44:                                               ; preds = %26
  %45 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %46 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (i32, i8*)*, i32 (i32, i8*)** %48, align 8
  %50 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %51 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 %49(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %44, %35
  %58 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @of_node_put(i32 %59)
  %61 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  store %struct.dma_chan* %61, %struct.dma_chan** %3, align 8
  br label %62

62:                                               ; preds = %57, %25, %20
  %63 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %63
}

declare dso_local i32 @memcpy(%struct.of_phandle_args*, %struct.of_phandle_args*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local %struct.of_dma* @of_dma_find_controller(%struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
