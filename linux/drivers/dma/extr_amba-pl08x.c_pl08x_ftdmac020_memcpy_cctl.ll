; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_ftdmac020_memcpy_cctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_ftdmac020_memcpy_cctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"illegal bus width for memcpy, set to 8 bits\0A\00", align 1
@PL080_WIDTH_8BIT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_WIDTH_16BIT = common dso_local global i32 0, align 4
@PL080_WIDTH_32BIT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_TC_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_driver_data*)* @pl08x_ftdmac020_memcpy_cctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_ftdmac020_memcpy_cctl(%struct.pl08x_driver_data* %0) #0 {
  %2 = alloca %struct.pl08x_driver_data*, align 8
  %3 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %4, i32 0, i32 3
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 128, label %15
    i32 130, label %25
    i32 129, label %35
  ]

9:                                                ; preds = %1
  %10 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %1, %9
  %16 = load i32, i32* @PL080_WIDTH_8BIT, align 4
  %17 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @PL080_WIDTH_8BIT, align 4
  %20 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %1
  %26 = load i32, i32* @PL080_WIDTH_16BIT, align 4
  %27 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @PL080_WIDTH_16BIT, align 4
  %30 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %1
  %36 = load i32, i32* @PL080_WIDTH_32BIT, align 4
  %37 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @PL080_WIDTH_32BIT, align 4
  %40 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %25, %15
  %46 = load i32, i32* @FTDMAC020_LLI_TC_MSK, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %50 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %57 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %60 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pl08x_select_bus(i32 1, i32 %58, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %45
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pl08x_select_bus(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
