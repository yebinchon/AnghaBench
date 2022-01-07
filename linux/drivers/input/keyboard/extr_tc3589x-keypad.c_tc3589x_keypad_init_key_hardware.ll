; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_init_key_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_init_key_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_keypad = type { %struct.tc3589x_keypad_platform_data*, %struct.tc3589x* }
%struct.tc3589x_keypad_platform_data = type { i32, i32, i32, i32 }
%struct.tc3589x = type { i32 }

@TC3589x_MAX_KPCOL = common dso_local global i32 0, align 4
@TC3589x_MAX_KPROW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC3589x_KBDSIZE = common dso_local global i32 0, align 4
@KP_ROW_SHIFT = common dso_local global i32 0, align 4
@TC3589x_KBCFG_LSB = common dso_local global i32 0, align 4
@DEDICATED_KEY_VAL = common dso_local global i32 0, align 4
@TC3589x_KBCFG_MSB = common dso_local global i32 0, align 4
@TC3589x_KBDSETTLE_REG = common dso_local global i32 0, align 4
@TC3589x_KBDBOUNCE = common dso_local global i32 0, align 4
@TC3589x_IOCFG = common dso_local global i32 0, align 4
@IOCFG_IG = common dso_local global i32 0, align 4
@TC3589x_IOPULLCFG0_LSB = common dso_local global i32 0, align 4
@TC3589x_PULLUP_ALL_MASK = common dso_local global i32 0, align 4
@TC3589x_IOPULLCFG0_MSB = common dso_local global i32 0, align 4
@TC3589x_IOPULLCFG1_LSB = common dso_local global i32 0, align 4
@TC3589x_IOPULLCFG1_MSB = common dso_local global i32 0, align 4
@TC3589x_IOPULLCFG2_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_keypad*)* @tc3589x_keypad_init_key_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_keypad_init_key_hardware(%struct.tc_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_keypad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc3589x*, align 8
  %6 = alloca %struct.tc3589x_keypad_platform_data*, align 8
  store %struct.tc_keypad* %0, %struct.tc_keypad** %3, align 8
  %7 = load %struct.tc_keypad*, %struct.tc_keypad** %3, align 8
  %8 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %7, i32 0, i32 1
  %9 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  store %struct.tc3589x* %9, %struct.tc3589x** %5, align 8
  %10 = load %struct.tc_keypad*, %struct.tc_keypad** %3, align 8
  %11 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %10, i32 0, i32 0
  %12 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %11, align 8
  store %struct.tc3589x_keypad_platform_data* %12, %struct.tc3589x_keypad_platform_data** %6, align 8
  %13 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %14 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TC3589x_MAX_KPCOL, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %20 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TC3589x_MAX_KPROW, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %135

27:                                               ; preds = %18
  %28 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %29 = load i32, i32* @TC3589x_KBDSIZE, align 4
  %30 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KP_ROW_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %36 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = call i32 @tc3589x_reg_write(%struct.tc3589x* %28, i32 %29, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %27
  %45 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %46 = load i32, i32* @TC3589x_KBCFG_LSB, align 4
  %47 = load i32, i32* @DEDICATED_KEY_VAL, align 4
  %48 = call i32 @tc3589x_reg_write(%struct.tc3589x* %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %135

53:                                               ; preds = %44
  %54 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %55 = load i32, i32* @TC3589x_KBCFG_MSB, align 4
  %56 = load i32, i32* @DEDICATED_KEY_VAL, align 4
  %57 = call i32 @tc3589x_reg_write(%struct.tc3589x* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %135

62:                                               ; preds = %53
  %63 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %64 = load i32, i32* @TC3589x_KBDSETTLE_REG, align 4
  %65 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %66 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tc3589x_reg_write(%struct.tc3589x* %63, i32 %64, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %135

73:                                               ; preds = %62
  %74 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %75 = load i32, i32* @TC3589x_KBDBOUNCE, align 4
  %76 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %6, align 8
  %77 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tc3589x_reg_write(%struct.tc3589x* %74, i32 %75, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %135

84:                                               ; preds = %73
  %85 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %86 = load i32, i32* @TC3589x_IOCFG, align 4
  %87 = load i32, i32* @IOCFG_IG, align 4
  %88 = call i32 @tc3589x_set_bits(%struct.tc3589x* %85, i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %135

93:                                               ; preds = %84
  %94 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %95 = load i32, i32* @TC3589x_IOPULLCFG0_LSB, align 4
  %96 = load i32, i32* @TC3589x_PULLUP_ALL_MASK, align 4
  %97 = call i32 @tc3589x_reg_write(%struct.tc3589x* %94, i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %135

102:                                              ; preds = %93
  %103 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %104 = load i32, i32* @TC3589x_IOPULLCFG0_MSB, align 4
  %105 = load i32, i32* @TC3589x_PULLUP_ALL_MASK, align 4
  %106 = call i32 @tc3589x_reg_write(%struct.tc3589x* %103, i32 %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %135

111:                                              ; preds = %102
  %112 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %113 = load i32, i32* @TC3589x_IOPULLCFG1_LSB, align 4
  %114 = load i32, i32* @TC3589x_PULLUP_ALL_MASK, align 4
  %115 = call i32 @tc3589x_reg_write(%struct.tc3589x* %112, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %135

120:                                              ; preds = %111
  %121 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %122 = load i32, i32* @TC3589x_IOPULLCFG1_MSB, align 4
  %123 = load i32, i32* @TC3589x_PULLUP_ALL_MASK, align 4
  %124 = call i32 @tc3589x_reg_write(%struct.tc3589x* %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %135

129:                                              ; preds = %120
  %130 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %131 = load i32, i32* @TC3589x_IOPULLCFG2_LSB, align 4
  %132 = load i32, i32* @TC3589x_PULLUP_ALL_MASK, align 4
  %133 = call i32 @tc3589x_reg_write(%struct.tc3589x* %130, i32 %131, i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %129, %127, %118, %109, %100, %91, %82, %71, %60, %51, %42, %24
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @tc3589x_reg_write(%struct.tc3589x*, i32, i32) #1

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
