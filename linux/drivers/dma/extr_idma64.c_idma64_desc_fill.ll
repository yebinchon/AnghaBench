; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_desc_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_desc_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { %struct.dma_slave_config }
%struct.dma_slave_config = type { i32 }
%struct.idma64_desc = type { i32, i32, i32, %struct.idma64_hw_desc* }
%struct.idma64_hw_desc = type { i64, i32, %struct.idma64_lli* }
%struct.idma64_lli = type { i32 }

@IDMA64C_CTLL_INT_EN = common dso_local global i32 0, align 4
@IDMA64C_CTLL_LLP_S_EN = common dso_local global i32 0, align 4
@IDMA64C_CTLL_LLP_D_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*, %struct.idma64_desc*)* @idma64_desc_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_desc_fill(%struct.idma64_chan* %0, %struct.idma64_desc* %1) #0 {
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca %struct.idma64_desc*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idma64_hw_desc*, align 8
  %8 = alloca %struct.idma64_lli*, align 8
  %9 = alloca i32, align 4
  store %struct.idma64_chan* %0, %struct.idma64_chan** %3, align 8
  store %struct.idma64_desc* %1, %struct.idma64_desc** %4, align 8
  %10 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %11 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %10, i32 0, i32 0
  store %struct.dma_slave_config* %11, %struct.dma_slave_config** %5, align 8
  %12 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %13 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %16 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %15, i32 0, i32 3
  %17 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %17, i64 %20
  store %struct.idma64_hw_desc* %21, %struct.idma64_hw_desc** %7, align 8
  %22 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %7, align 8
  %23 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %22, i32 0, i32 2
  %24 = load %struct.idma64_lli*, %struct.idma64_lli** %23, align 8
  store %struct.idma64_lli* %24, %struct.idma64_lli** %8, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %52, %2
  %26 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %27 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %26, i32 0, i32 3
  %28 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %28, i64 %31
  store %struct.idma64_hw_desc* %32, %struct.idma64_hw_desc** %7, align 8
  %33 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %7, align 8
  %34 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %35 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %36 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @idma64_hw_desc_fill(%struct.idma64_hw_desc* %33, %struct.dma_slave_config* %34, i32 %37, i32 %38)
  %40 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %7, align 8
  %41 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %7, align 8
  %44 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %47 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %25, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @IDMA64C_CTLL_INT_EN, align 4
  %57 = load %struct.idma64_lli*, %struct.idma64_lli** %8, align 8
  %58 = getelementptr inbounds %struct.idma64_lli, %struct.idma64_lli* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @IDMA64C_CTLL_LLP_S_EN, align 4
  %62 = load i32, i32* @IDMA64C_CTLL_LLP_D_EN, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.idma64_lli*, %struct.idma64_lli** %8, align 8
  %66 = getelementptr inbounds %struct.idma64_lli, %struct.idma64_lli* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  ret void
}

declare dso_local i32 @idma64_hw_desc_fill(%struct.idma64_hw_desc*, %struct.dma_slave_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
