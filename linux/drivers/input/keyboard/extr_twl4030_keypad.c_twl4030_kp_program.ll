; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_keypad = type { i32 }

@KEYP_CTRL_SOFT_NRST = common dso_local global i32 0, align 4
@KEYP_CTRL_SOFTMODEN = common dso_local global i32 0, align 4
@KEYP_CTRL_TOE_EN = common dso_local global i32 0, align 4
@KEYP_CTRL_KBD_ON = common dso_local global i32 0, align 4
@KEYP_CTRL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KEYP_EDR_KP_BOTH = common dso_local global i32 0, align 4
@KEYP_EDR_TO_RISING = common dso_local global i32 0, align 4
@KEYP_EDR = common dso_local global i32 0, align 4
@PTV_PRESCALER = common dso_local global i32 0, align 4
@KEYP_LK_PTV_PTV_SHIFT = common dso_local global i32 0, align 4
@KEYP_LK_PTV = common dso_local global i32 0, align 4
@KEYP_DEB = common dso_local global i32 0, align 4
@KEYP_TIMEOUT_L = common dso_local global i32 0, align 4
@KEYP_TIMEOUT_H = common dso_local global i32 0, align 4
@TWL4030_SIH_CTRL_COR_MASK = common dso_local global i32 0, align 4
@TWL4030_SIH_CTRL_PENDDIS_MASK = common dso_local global i32 0, align 4
@KEYP_SIH_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_keypad*)* @twl4030_kp_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_kp_program(%struct.twl4030_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_keypad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl4030_keypad* %0, %struct.twl4030_keypad** %3, align 8
  %6 = load i32, i32* @KEYP_CTRL_SOFT_NRST, align 4
  %7 = load i32, i32* @KEYP_CTRL_SOFTMODEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @KEYP_CTRL_TOE_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @KEYP_CTRL_KBD_ON, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @KEYP_CTRL, align 4
  %16 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %13, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = load i32, i32* @KEYP_EDR_KP_BOTH, align 4
  %23 = load i32, i32* @KEYP_EDR_TO_RISING, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @KEYP_EDR, align 4
  %28 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %21
  %34 = load i32, i32* @PTV_PRESCALER, align 4
  %35 = load i32, i32* @KEYP_LK_PTV_PTV_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @KEYP_LK_PTV, align 4
  %40 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %37, i32 %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %101

45:                                               ; preds = %33
  %46 = load i32, i32* @PTV_PRESCALER, align 4
  %47 = call i32 @KEYP_PERIOD_US(i32 20000, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @KEYP_DEB, align 4
  %51 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %48, i32 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %101

56:                                               ; preds = %45
  %57 = load i32, i32* @PTV_PRESCALER, align 4
  %58 = call i32 @KEYP_PERIOD_US(i32 200000, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 255
  %62 = load i32, i32* @KEYP_TIMEOUT_L, align 4
  %63 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %59, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %56
  %69 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* @KEYP_TIMEOUT_H, align 4
  %73 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %69, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %101

78:                                               ; preds = %68
  %79 = load i32, i32* @TWL4030_SIH_CTRL_COR_MASK, align 4
  %80 = load i32, i32* @TWL4030_SIH_CTRL_PENDDIS_MASK, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @KEYP_SIH_CTRL, align 4
  %85 = call i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad* %82, i32 %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %101

90:                                               ; preds = %78
  %91 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %92 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %93 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @twl4030_read_kp_matrix_state(%struct.twl4030_keypad* %91, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %97, %87, %75, %65, %53, %42, %30, %18
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @twl4030_kpwrite_u8(%struct.twl4030_keypad*, i32, i32) #1

declare dso_local i32 @KEYP_PERIOD_US(i32, i32) #1

declare dso_local i64 @twl4030_read_kp_matrix_state(%struct.twl4030_keypad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
