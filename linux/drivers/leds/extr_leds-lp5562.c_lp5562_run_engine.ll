; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_run_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_run_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5562_REG_ENABLE = common dso_local global i32 0, align 4
@LP5562_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@LP5562_REG_ENG_SEL = common dso_local global i32 0, align 4
@LP5562_ENG_SEL_PWM = common dso_local global i32 0, align 4
@LP5562_REG_OP_MODE = common dso_local global i32 0, align 4
@LP5562_CMD_DIRECT = common dso_local global i32 0, align 4
@LP5562_MODE_ENG1_M = common dso_local global i32 0, align 4
@LP5562_RUN_ENG1 = common dso_local global i32 0, align 4
@LP5562_EXEC_ENG1_M = common dso_local global i32 0, align 4
@LP5562_MODE_ENG2_M = common dso_local global i32 0, align 4
@LP5562_RUN_ENG2 = common dso_local global i32 0, align 4
@LP5562_EXEC_ENG2_M = common dso_local global i32 0, align 4
@LP5562_MODE_ENG3_M = common dso_local global i32 0, align 4
@LP5562_RUN_ENG3 = common dso_local global i32 0, align 4
@LP5562_EXEC_ENG3_M = common dso_local global i32 0, align 4
@LP5562_EXEC_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*, i32)* @lp5562_run_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5562_run_engine(%struct.lp55xx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %12 = load i32, i32* @LP5562_REG_ENABLE, align 4
  %13 = load i32, i32* @LP5562_ENABLE_DEFAULT, align 4
  %14 = call i32 @lp55xx_write(%struct.lp55xx_chip* %11, i32 %12, i32 %13)
  %15 = call i32 (...) @lp5562_wait_enable_done()
  %16 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %17 = call i32 @lp5562_stop_engine(%struct.lp55xx_chip* %16)
  %18 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %19 = load i32, i32* @LP5562_REG_ENG_SEL, align 4
  %20 = load i32, i32* @LP5562_ENG_SEL_PWM, align 4
  %21 = call i32 @lp55xx_write(%struct.lp55xx_chip* %18, i32 %19, i32 %20)
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %23 = load i32, i32* @LP5562_REG_OP_MODE, align 4
  %24 = load i32, i32* @LP5562_CMD_DIRECT, align 4
  %25 = call i32 @lp55xx_write(%struct.lp55xx_chip* %22, i32 %23, i32 %24)
  %26 = call i32 (...) @lp5562_wait_opmode_done()
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %29 = load i32, i32* @LP5562_REG_OP_MODE, align 4
  %30 = call i32 @lp55xx_read(%struct.lp55xx_chip* %28, i32 %29, i32* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %104

34:                                               ; preds = %27
  %35 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %36 = load i32, i32* @LP5562_REG_ENABLE, align 4
  %37 = call i32 @lp55xx_read(%struct.lp55xx_chip* %35, i32 %36, i32* %7)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %104

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @LP5562_ENG1_IS_LOADING(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LP5562_MODE_ENG1_M, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* @LP5562_RUN_ENG1, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @LP5562_EXEC_ENG1_M, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* @LP5562_RUN_ENG1, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %45, %41
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @LP5562_ENG2_IS_LOADING(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @LP5562_MODE_ENG2_M, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @LP5562_RUN_ENG2, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @LP5562_EXEC_ENG2_M, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* @LP5562_RUN_ENG2, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %62, %58
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @LP5562_ENG3_IS_LOADING(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @LP5562_MODE_ENG3_M, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* @LP5562_RUN_ENG3, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @LP5562_EXEC_ENG3_M, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load i32, i32* @LP5562_RUN_ENG3, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %79, %75
  %93 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %94 = load i32, i32* @LP5562_REG_OP_MODE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @lp55xx_write(%struct.lp55xx_chip* %93, i32 %94, i32 %95)
  %97 = call i32 (...) @lp5562_wait_opmode_done()
  %98 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %99 = load i32, i32* @LP5562_REG_ENABLE, align 4
  %100 = load i32, i32* @LP5562_EXEC_M, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @lp55xx_update_bits(%struct.lp55xx_chip* %98, i32 %99, i32 %100, i32 %101)
  %103 = call i32 (...) @lp5562_wait_enable_done()
  br label %104

104:                                              ; preds = %92, %40, %33, %10
  ret void
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @lp5562_wait_enable_done(...) #1

declare dso_local i32 @lp5562_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5562_wait_opmode_done(...) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i32, i32*) #1

declare dso_local i64 @LP5562_ENG1_IS_LOADING(i32) #1

declare dso_local i64 @LP5562_ENG2_IS_LOADING(i32) #1

declare dso_local i64 @LP5562_ENG3_IS_LOADING(i32) #1

declare dso_local i32 @lp55xx_update_bits(%struct.lp55xx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
