; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.of_dma = type { %struct.owl_dma* }
%struct.owl_dma = type { i64, i32 }
%struct.owl_dma_vchan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @owl_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @owl_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.owl_dma*, align 8
  %7 = alloca %struct.owl_dma_vchan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %11 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %10, i32 0, i32 0
  %12 = load %struct.owl_dma*, %struct.owl_dma** %11, align 8
  store %struct.owl_dma* %12, %struct.owl_dma** %6, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.owl_dma*, %struct.owl_dma** %6, align 8
  %20 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.owl_dma*, %struct.owl_dma** %6, align 8
  %26 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %25, i32 0, i32 1
  %27 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %26)
  store %struct.dma_chan* %27, %struct.dma_chan** %8, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %29 = icmp ne %struct.dma_chan* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %38

31:                                               ; preds = %24
  %32 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %33 = call %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan* %32)
  store %struct.owl_dma_vchan* %33, %struct.owl_dma_vchan** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %7, align 8
  %36 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %37, %struct.dma_chan** %3, align 8
  br label %38

38:                                               ; preds = %31, %30, %23
  %39 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %39
}

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.owl_dma_vchan* @to_owl_vchan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
