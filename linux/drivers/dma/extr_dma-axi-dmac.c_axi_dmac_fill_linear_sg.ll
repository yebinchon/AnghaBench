; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_fill_linear_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_fill_linear_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_chan = type { i32, i32 }
%struct.axi_dmac_sg = type { i32, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axi_dmac_sg* (%struct.axi_dmac_chan*, i32, i32, i32, i32, %struct.axi_dmac_sg*)* @axi_dmac_fill_linear_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axi_dmac_sg* @axi_dmac_fill_linear_sg(%struct.axi_dmac_chan* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.axi_dmac_sg* %5) #0 {
  %7 = alloca %struct.axi_dmac_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.axi_dmac_sg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.axi_dmac_chan* %0, %struct.axi_dmac_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.axi_dmac_sg* %5, %struct.axi_dmac_sg** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %7, align 8
  %19 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DIV_ROUND_UP(i32 %17, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = sub i32 %25, 1
  %27 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %7, align 8
  %28 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = add i32 %30, 1
  store i32 %31, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %91, %6
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %54, %36
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %49 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %53 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %57 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %59 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %61 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %60, i32 1
  store %struct.axi_dmac_sg* %61, %struct.axi_dmac_sg** %12, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %16, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %75 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %79 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %83 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %85 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  %87 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %86, i32 1
  store %struct.axi_dmac_sg* %87, %struct.axi_dmac_sg** %12, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %32

94:                                               ; preds = %32
  %95 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %12, align 8
  ret %struct.axi_dmac_sg* %95
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
