; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_bytes_for_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_bytes_for_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FTDMAC020_LLI_SRC_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_DWIDTH_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_DWIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_driver_data*, i32, i32)* @pl08x_get_bytes_for_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_get_bytes_for_lli(%struct.pl08x_driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl08x_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %10 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_MSK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_MSK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %24, %18
  br label %47

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PL080_CONTROL_SWIDTH_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PL080_CONTROL_DWIDTH_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PL080_CONTROL_DWIDTH_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %52 [
    i32 128, label %49
    i32 130, label %50
    i32 129, label %51
  ]

49:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %55

50:                                               ; preds = %47
  store i32 2, i32* %4, align 4
  br label %55

51:                                               ; preds = %47
  store i32 4, i32* %4, align 4
  br label %55

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = call i32 (...) @BUG()
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51, %50, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
