; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cppi41_dd = type { i32, i64, i32 }

@ALLOC_DECS_NUM = common dso_local global i32 0, align 4
@DESCS_AREAS = common dso_local global i32 0, align 4
@QMGR_MEMCTRL_IDX_SH = common dso_local global i32 0, align 4
@QMGR_MEMCTRL_DESC_SH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cppi41_dd*)* @init_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_descs(%struct.device* %0, %struct.cppi41_dd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cppi41_dd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cppi41_dd* %1, %struct.cppi41_dd** %5, align 8
  %11 = call i32 @BUILD_BUG_ON(i32 0)
  %12 = call i32 @BUILD_BUG_ON(i32 1)
  %13 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %14 = icmp slt i32 %13, 32
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  store i32 4, i32* %6, align 4
  %17 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %81, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DESCS_AREAS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @QMGR_MEMCTRL_IDX_SH, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ilog2(i32 %28)
  %30 = sub nsw i32 %29, 5
  %31 = load i32, i32* @QMGR_MEMCTRL_DESC_SH, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %36 = call i32 @ilog2(i32 %35)
  %37 = sub nsw i32 %36, 5
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @DESCS_AREAS, align 4
  %41 = icmp ne i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUILD_BUG_ON(i32 %42)
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %47 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %46, i32 0, i32 0
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(%struct.device* %44, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %51 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %53 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %24
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %24
  %60 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %61 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %64 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @QMGR_MEMBASE(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @cppi_writel(i32 %62, i64 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %72 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @QMGR_MEMCTRL(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @cppi_writel(i32 %70, i64 %76)
  %78 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %20

84:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @cppi_writel(i32, i64) #1

declare dso_local i64 @QMGR_MEMBASE(i32) #1

declare dso_local i64 @QMGR_MEMCTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
