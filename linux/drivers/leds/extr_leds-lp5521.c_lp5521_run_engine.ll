; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5521.c_lp5521_run_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5521.c_lp5521_run_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5521_REG_OP_MODE = common dso_local global i32 0, align 4
@LP5521_CMD_DIRECT = common dso_local global i32 0, align 4
@LP5521_REG_ENABLE = common dso_local global i32 0, align 4
@LP5521_MODE_R_M = common dso_local global i32 0, align 4
@LP5521_RUN_R = common dso_local global i32 0, align 4
@LP5521_EXEC_R_M = common dso_local global i32 0, align 4
@LP5521_MODE_G_M = common dso_local global i32 0, align 4
@LP5521_RUN_G = common dso_local global i32 0, align 4
@LP5521_EXEC_G_M = common dso_local global i32 0, align 4
@LP5521_MODE_B_M = common dso_local global i32 0, align 4
@LP5521_RUN_B = common dso_local global i32 0, align 4
@LP5521_EXEC_B_M = common dso_local global i32 0, align 4
@LP5521_EXEC_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*, i32)* @lp5521_run_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5521_run_engine(%struct.lp55xx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %12 = call i32 @lp5521_stop_engine(%struct.lp55xx_chip* %11)
  %13 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %14 = load i32, i32* @LP5521_REG_OP_MODE, align 4
  %15 = load i32, i32* @LP5521_CMD_DIRECT, align 4
  %16 = call i32 @lp55xx_write(%struct.lp55xx_chip* %13, i32 %14, i32 %15)
  %17 = call i32 (...) @lp5521_wait_opmode_done()
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %20 = load i32, i32* @LP5521_REG_OP_MODE, align 4
  %21 = call i32 @lp55xx_read(%struct.lp55xx_chip* %19, i32 %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %95

25:                                               ; preds = %18
  %26 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %27 = load i32, i32* @LP5521_REG_ENABLE, align 4
  %28 = call i32 @lp55xx_read(%struct.lp55xx_chip* %26, i32 %27, i32* %7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %95

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @LP5521_R_IS_LOADING(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @LP5521_MODE_R_M, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @LP5521_RUN_R, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @LP5521_EXEC_R_M, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @LP5521_RUN_R, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %36, %32
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @LP5521_G_IS_LOADING(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @LP5521_MODE_G_M, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* @LP5521_RUN_G, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @LP5521_EXEC_G_M, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @LP5521_RUN_G, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %53, %49
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @LP5521_B_IS_LOADING(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @LP5521_MODE_B_M, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* @LP5521_RUN_B, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @LP5521_EXEC_B_M, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* @LP5521_RUN_B, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %70, %66
  %84 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %85 = load i32, i32* @LP5521_REG_OP_MODE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @lp55xx_write(%struct.lp55xx_chip* %84, i32 %85, i32 %86)
  %88 = call i32 (...) @lp5521_wait_opmode_done()
  %89 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %90 = load i32, i32* @LP5521_REG_ENABLE, align 4
  %91 = load i32, i32* @LP5521_EXEC_M, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @lp55xx_update_bits(%struct.lp55xx_chip* %89, i32 %90, i32 %91, i32 %92)
  %94 = call i32 (...) @lp5521_wait_enable_done()
  br label %95

95:                                               ; preds = %83, %31, %24, %10
  ret void
}

declare dso_local i32 @lp5521_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @lp5521_wait_opmode_done(...) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i32, i32*) #1

declare dso_local i64 @LP5521_R_IS_LOADING(i32) #1

declare dso_local i64 @LP5521_G_IS_LOADING(i32) #1

declare dso_local i64 @LP5521_B_IS_LOADING(i32) #1

declare dso_local i32 @lp55xx_update_bits(%struct.lp55xx_chip*, i32, i32, i32) #1

declare dso_local i32 @lp5521_wait_enable_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
