; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_lli_control_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_lli_control_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FTDMAC020_LLI_DST_WIDTH_MSK = common dso_local global i64 0, align 8
@FTDMAC020_LLI_SRC_WIDTH_MSK = common dso_local global i64 0, align 8
@FTDMAC020_LLI_TRANSFER_SIZE_MASK = common dso_local global i64 0, align 8
@PL080_WIDTH_8BIT = common dso_local global i64 0, align 8
@FTDMAC020_LLI_SRC_WIDTH_SHIFT = common dso_local global i64 0, align 8
@PL080_WIDTH_16BIT = common dso_local global i64 0, align 8
@PL080_WIDTH_32BIT = common dso_local global i64 0, align 8
@FTDMAC020_LLI_DST_WIDTH_SHIFT = common dso_local global i64 0, align 8
@FTDMAC020_LLI_TRANSFER_SIZE_SHIFT = common dso_local global i64 0, align 8
@PL080_CONTROL_DWIDTH_MASK = common dso_local global i64 0, align 8
@PL080_CONTROL_SWIDTH_MASK = common dso_local global i64 0, align 8
@PL080_CONTROL_TRANSFER_SIZE_MASK = common dso_local global i64 0, align 8
@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i64 0, align 8
@PL080_CONTROL_DWIDTH_SHIFT = common dso_local global i64 0, align 8
@PL080_CONTROL_TRANSFER_SIZE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pl08x_driver_data*, i64, i32, i32, i64)* @pl08x_lli_control_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pl08x_lli_control_bits(%struct.pl08x_driver_data* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.pl08x_driver_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %14 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %84

19:                                               ; preds = %5
  %20 = load i64, i64* @FTDMAC020_LLI_DST_WIDTH_MSK, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %11, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* @FTDMAC020_LLI_SRC_WIDTH_MSK, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %11, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* @FTDMAC020_LLI_TRANSFER_SIZE_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %11, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %11, align 8
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %51 [
    i32 1, label %33
    i32 2, label %39
    i32 4, label %45
  ]

33:                                               ; preds = %19
  %34 = load i64, i64* @PL080_WIDTH_8BIT, align 8
  %35 = load i64, i64* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = load i64, i64* %11, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %11, align 8
  br label %53

39:                                               ; preds = %19
  %40 = load i64, i64* @PL080_WIDTH_16BIT, align 8
  %41 = load i64, i64* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = load i64, i64* %11, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %11, align 8
  br label %53

45:                                               ; preds = %19
  %46 = load i64, i64* @PL080_WIDTH_32BIT, align 8
  %47 = load i64, i64* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %11, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %11, align 8
  br label %53

51:                                               ; preds = %19
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %45, %39, %33
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %73 [
    i32 1, label %55
    i32 2, label %61
    i32 4, label %67
  ]

55:                                               ; preds = %53
  %56 = load i64, i64* @PL080_WIDTH_8BIT, align 8
  %57 = load i64, i64* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  br label %75

61:                                               ; preds = %53
  %62 = load i64, i64* @PL080_WIDTH_16BIT, align 8
  %63 = load i64, i64* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %11, align 8
  br label %75

67:                                               ; preds = %53
  %68 = load i64, i64* @PL080_WIDTH_32BIT, align 8
  %69 = load i64, i64* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 8
  %70 = shl i64 %68, %69
  %71 = load i64, i64* %11, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %11, align 8
  br label %75

73:                                               ; preds = %53
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %73, %67, %61, %55
  %76 = load i64, i64* @FTDMAC020_LLI_TRANSFER_SIZE_MASK, align 8
  %77 = load i64, i64* %10, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @FTDMAC020_LLI_TRANSFER_SIZE_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* %11, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %149

84:                                               ; preds = %5
  %85 = load i64, i64* @PL080_CONTROL_DWIDTH_MASK, align 8
  %86 = xor i64 %85, -1
  %87 = load i64, i64* %11, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* @PL080_CONTROL_SWIDTH_MASK, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %11, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* @PL080_CONTROL_TRANSFER_SIZE_MASK, align 8
  %94 = xor i64 %93, -1
  %95 = load i64, i64* %11, align 8
  %96 = and i64 %95, %94
  store i64 %96, i64* %11, align 8
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %116 [
    i32 1, label %98
    i32 2, label %104
    i32 4, label %110
  ]

98:                                               ; preds = %84
  %99 = load i64, i64* @PL080_WIDTH_8BIT, align 8
  %100 = load i64, i64* @PL080_CONTROL_SWIDTH_SHIFT, align 8
  %101 = shl i64 %99, %100
  %102 = load i64, i64* %11, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %118

104:                                              ; preds = %84
  %105 = load i64, i64* @PL080_WIDTH_16BIT, align 8
  %106 = load i64, i64* @PL080_CONTROL_SWIDTH_SHIFT, align 8
  %107 = shl i64 %105, %106
  %108 = load i64, i64* %11, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %11, align 8
  br label %118

110:                                              ; preds = %84
  %111 = load i64, i64* @PL080_WIDTH_32BIT, align 8
  %112 = load i64, i64* @PL080_CONTROL_SWIDTH_SHIFT, align 8
  %113 = shl i64 %111, %112
  %114 = load i64, i64* %11, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %11, align 8
  br label %118

116:                                              ; preds = %84
  %117 = call i32 (...) @BUG()
  br label %118

118:                                              ; preds = %116, %110, %104, %98
  %119 = load i32, i32* %9, align 4
  switch i32 %119, label %138 [
    i32 1, label %120
    i32 2, label %126
    i32 4, label %132
  ]

120:                                              ; preds = %118
  %121 = load i64, i64* @PL080_WIDTH_8BIT, align 8
  %122 = load i64, i64* @PL080_CONTROL_DWIDTH_SHIFT, align 8
  %123 = shl i64 %121, %122
  %124 = load i64, i64* %11, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %11, align 8
  br label %140

126:                                              ; preds = %118
  %127 = load i64, i64* @PL080_WIDTH_16BIT, align 8
  %128 = load i64, i64* @PL080_CONTROL_DWIDTH_SHIFT, align 8
  %129 = shl i64 %127, %128
  %130 = load i64, i64* %11, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %11, align 8
  br label %140

132:                                              ; preds = %118
  %133 = load i64, i64* @PL080_WIDTH_32BIT, align 8
  %134 = load i64, i64* @PL080_CONTROL_DWIDTH_SHIFT, align 8
  %135 = shl i64 %133, %134
  %136 = load i64, i64* %11, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %11, align 8
  br label %140

138:                                              ; preds = %118
  %139 = call i32 (...) @BUG()
  br label %140

140:                                              ; preds = %138, %132, %126, %120
  %141 = load i64, i64* @PL080_CONTROL_TRANSFER_SIZE_MASK, align 8
  %142 = load i64, i64* %10, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* %10, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @PL080_CONTROL_TRANSFER_SIZE_SHIFT, align 8
  %146 = shl i64 %144, %145
  %147 = load i64, i64* %11, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %140, %75
  %150 = load i64, i64* %11, align 8
  ret i64 %150
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
