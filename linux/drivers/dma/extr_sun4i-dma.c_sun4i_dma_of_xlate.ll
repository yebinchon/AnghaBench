; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.of_dma = type { %struct.sun4i_dma_dev* }
%struct.sun4i_dma_dev = type { i32 }
%struct.sun4i_dma_vchan = type { i32, i32 }

@SUN4I_DDMA_DRQ_TYPE_LIMIT = common dso_local global i32 0, align 4
@SUN4I_NDMA_DRQ_TYPE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @sun4i_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @sun4i_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.sun4i_dma_dev*, align 8
  %7 = alloca %struct.sun4i_dma_vchan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %11 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %12 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %11, i32 0, i32 0
  %13 = load %struct.sun4i_dma_dev*, %struct.sun4i_dma_dev** %12, align 8
  store %struct.sun4i_dma_dev* %13, %struct.sun4i_dma_dev** %6, align 8
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %20 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %62

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SUN4I_DDMA_DRQ_TYPE_LIMIT, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SUN4I_NDMA_DRQ_TYPE_LIMIT, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %33
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %62

45:                                               ; preds = %40, %37
  %46 = load %struct.sun4i_dma_dev*, %struct.sun4i_dma_dev** %6, align 8
  %47 = getelementptr inbounds %struct.sun4i_dma_dev, %struct.sun4i_dma_dev* %46, i32 0, i32 0
  %48 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %47)
  store %struct.dma_chan* %48, %struct.dma_chan** %8, align 8
  %49 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %50 = icmp ne %struct.dma_chan* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %62

52:                                               ; preds = %45
  %53 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %54 = call %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan* %53)
  store %struct.sun4i_dma_vchan* %54, %struct.sun4i_dma_vchan** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %7, align 8
  %57 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %7, align 8
  %60 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %61, %struct.dma_chan** %3, align 8
  br label %62

62:                                               ; preds = %52, %51, %44, %29
  %63 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %63
}

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
