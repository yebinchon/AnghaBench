; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3642_chip_data = type { i32, i64, i32, i32, i32, i64 }

@REG_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read REG_FLAG Register\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Last FLAG is 0x%x\0A\00", align 1
@REG_I_CTRL = common dso_local global i32 0, align 4
@TORCH_I_MASK = common dso_local global i32 0, align 4
@TORCH_I_SHIFT = common dso_local global i32 0, align 4
@TORCH_PIN_EN_MASK = common dso_local global i32 0, align 4
@TORCH_PIN_EN_SHIFT = common dso_local global i32 0, align 4
@FLASH_I_MASK = common dso_local global i32 0, align 4
@FLASH_I_SHIFT = common dso_local global i32 0, align 4
@STROBE_PIN_EN_MASK = common dso_local global i32 0, align 4
@STROBE_PIN_EN_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to write REG_I_CTRL Register\0A\00", align 1
@TX_PIN_EN_MASK = common dso_local global i32 0, align 4
@TX_PIN_EN_SHIFT = common dso_local global i32 0, align 4
@REG_ENABLE = common dso_local global i32 0, align 4
@MODE_BITS_MASK = common dso_local global i32 0, align 4
@MODE_BITS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3642_chip_data*, i32, i32)* @lm3642_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3642_control(%struct.lm3642_chip_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3642_chip_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lm3642_chip_data* %0, %struct.lm3642_chip_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %10 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REG_FLAG, align 4
  %13 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %14 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %13, i32 0, i32 5
  %15 = call i32 @regmap_read(i32 %11, i32 %12, i64* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %20 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %137

23:                                               ; preds = %3
  %24 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %25 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %30 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %33 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 129, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %104 [
    i32 128, label %42
    i32 131, label %66
    i32 130, label %90
    i32 129, label %103
  ]

42:                                               ; preds = %40
  %43 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %44 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REG_I_CTRL, align 4
  %47 = load i32, i32* @TORCH_I_MASK, align 4
  %48 = load i32, i32* @TORCH_I_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @TORCH_I_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %49, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %56 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load i32, i32* @TORCH_PIN_EN_MASK, align 4
  %61 = load i32, i32* @TORCH_PIN_EN_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %42
  br label %106

66:                                               ; preds = %40
  %67 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %68 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @REG_I_CTRL, align 4
  %71 = load i32, i32* @FLASH_I_MASK, align 4
  %72 = load i32, i32* @FLASH_I_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @FLASH_I_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %73, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %80 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %66
  %84 = load i32, i32* @STROBE_PIN_EN_MASK, align 4
  %85 = load i32, i32* @STROBE_PIN_EN_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %83, %66
  br label %106

90:                                               ; preds = %40
  %91 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %92 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @REG_I_CTRL, align 4
  %95 = load i32, i32* @TORCH_I_MASK, align 4
  %96 = load i32, i32* @TORCH_I_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @TORCH_I_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %97, i32 %101)
  store i32 %102, i32* %8, align 4
  br label %106

103:                                              ; preds = %40
  br label %106

104:                                              ; preds = %40
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %139

106:                                              ; preds = %103, %90, %89, %65
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %111 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %137

114:                                              ; preds = %106
  %115 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %116 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @TX_PIN_EN_MASK, align 4
  %121 = load i32, i32* @TX_PIN_EN_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %5, align 8
  %127 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @REG_ENABLE, align 4
  %130 = load i32, i32* @MODE_BITS_MASK, align 4
  %131 = load i32, i32* @MODE_BITS_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @MODE_BITS_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = call i32 @regmap_update_bits(i32 %128, i32 %129, i32 %132, i32 %135)
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %125, %109, %18
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %104
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
