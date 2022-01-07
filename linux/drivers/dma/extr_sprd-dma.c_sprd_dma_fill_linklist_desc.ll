; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_fill_linklist_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_fill_linklist_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32 }
%struct.sprd_dma_chn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sprd_dma_chn_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32, i32, i32, i32, i32, i64, %struct.dma_slave_config*)* @sprd_dma_fill_linklist_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_dma_fill_linklist_desc(%struct.dma_chan* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, %struct.dma_slave_config* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.dma_slave_config*, align 8
  %20 = alloca %struct.sprd_dma_chn*, align 8
  %21 = alloca %struct.sprd_dma_chn_hw*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store %struct.dma_slave_config* %8, %struct.dma_slave_config** %19, align 8
  %22 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %23 = call %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan* %22)
  store %struct.sprd_dma_chn* %23, %struct.sprd_dma_chn** %20, align 8
  %24 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %20, align 8
  %25 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %53

32:                                               ; preds = %9
  %33 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %20, align 8
  %34 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 %36, %39
  %41 = inttoptr i64 %40 to %struct.sprd_dma_chn_hw*
  store %struct.sprd_dma_chn_hw* %41, %struct.sprd_dma_chn_hw** %21, align 8
  %42 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %43 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %21, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i64, i64* %18, align 8
  %51 = load %struct.dma_slave_config*, %struct.dma_slave_config** %19, align 8
  %52 = call i32 @sprd_dma_fill_desc(%struct.dma_chan* %42, %struct.sprd_dma_chn_hw* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i64 %50, %struct.dma_slave_config* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %32, %29
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @sprd_dma_fill_desc(%struct.dma_chan*, %struct.sprd_dma_chn_hw*, i32, i32, i32, i32, i32, i32, i64, %struct.dma_slave_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
