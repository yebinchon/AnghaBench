; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32 }

@LTD_HV_LL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_W_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_W_REG = common dso_local global i32 0, align 4
@LTD_LV_LL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_WH_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_WH_REG = common dso_local global i32 0, align 4
@LTD_HV_HL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_C_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_C_REG = common dso_local global i32 0, align 4
@LTD_LV_HL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_CH_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_CH_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BANK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @nct7904_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_write_temp(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.nct7904_data* %16, %struct.nct7904_data** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sdiv i64 %17, 1000
  %19 = call i64 @clamp_val(i64 %18, i32 -128, i32 127)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %37 [
    i32 129, label %21
    i32 128, label %25
    i32 131, label %29
    i32 130, label %33
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @LTD_HV_LL_REG, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @TEMP_CH1_W_REG, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @DTS_T_CPU1_W_REG, align 4
  store i32 %24, i32* %14, align 4
  br label %40

25:                                               ; preds = %4
  %26 = load i32, i32* @LTD_LV_LL_REG, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @TEMP_CH1_WH_REG, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @DTS_T_CPU1_WH_REG, align 4
  store i32 %28, i32* %14, align 4
  br label %40

29:                                               ; preds = %4
  %30 = load i32, i32* @LTD_HV_HL_REG, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @TEMP_CH1_C_REG, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @DTS_T_CPU1_C_REG, align 4
  store i32 %32, i32* %14, align 4
  br label %40

33:                                               ; preds = %4
  %34 = load i32, i32* @LTD_LV_HL_REG, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @TEMP_CH1_CH_REG, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @DTS_T_CPU1_CH_REG, align 4
  store i32 %36, i32* %14, align 4
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %33, %29, %25, %21
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %45 = load i32, i32* @BANK_1, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @nct7904_write_reg(%struct.nct7904_data* %44, i32 %45, i32 %46, i64 %47)
  store i32 %48, i32* %11, align 4
  br label %72

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %54 = load i32, i32* @BANK_1, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %56, 8
  %58 = add i32 %55, %57
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @nct7904_write_reg(%struct.nct7904_data* %53, i32 %54, i32 %58, i64 %59)
  store i32 %60, i32* %11, align 4
  br label %71

61:                                               ; preds = %49
  %62 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %63 = load i32, i32* @BANK_1, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 5
  %67 = mul nsw i32 %66, 4
  %68 = add i32 %64, %67
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @nct7904_write_reg(%struct.nct7904_data* %62, i32 %63, i32 %68, i64 %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %61, %52
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %37
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @nct7904_write_reg(%struct.nct7904_data*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
