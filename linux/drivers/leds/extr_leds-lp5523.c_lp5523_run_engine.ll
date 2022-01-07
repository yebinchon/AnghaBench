; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_run_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_run_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5523_REG_OP_MODE = common dso_local global i32 0, align 4
@LP5523_REG_ENABLE = common dso_local global i32 0, align 4
@LP5523_MODE_ENG1_M = common dso_local global i32 0, align 4
@LP5523_RUN_ENG1 = common dso_local global i32 0, align 4
@LP5523_EXEC_ENG1_M = common dso_local global i32 0, align 4
@LP5523_MODE_ENG2_M = common dso_local global i32 0, align 4
@LP5523_RUN_ENG2 = common dso_local global i32 0, align 4
@LP5523_EXEC_ENG2_M = common dso_local global i32 0, align 4
@LP5523_MODE_ENG3_M = common dso_local global i32 0, align 4
@LP5523_RUN_ENG3 = common dso_local global i32 0, align 4
@LP5523_EXEC_ENG3_M = common dso_local global i32 0, align 4
@LP5523_EXEC_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*, i32)* @lp5523_run_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5523_run_engine(%struct.lp55xx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %12 = call i32 @lp5523_stop_engine(%struct.lp55xx_chip* %11)
  %13 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %14 = call i32 @lp5523_turn_off_channels(%struct.lp55xx_chip* %13)
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %17 = load i32, i32* @LP5523_REG_OP_MODE, align 4
  %18 = call i32 @lp55xx_read(%struct.lp55xx_chip* %16, i32 %17, i32* %6)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %91

22:                                               ; preds = %15
  %23 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %24 = load i32, i32* @LP5523_REG_ENABLE, align 4
  %25 = call i32 @lp55xx_read(%struct.lp55xx_chip* %23, i32 %24, i32* %7)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %91

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @LP5523_ENG1_IS_LOADING(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LP5523_MODE_ENG1_M, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @LP5523_RUN_ENG1, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LP5523_EXEC_ENG1_M, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @LP5523_RUN_ENG1, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %33, %29
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @LP5523_ENG2_IS_LOADING(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LP5523_MODE_ENG2_M, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = load i32, i32* @LP5523_RUN_ENG2, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LP5523_EXEC_ENG2_M, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @LP5523_RUN_ENG2, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %50, %46
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @LP5523_ENG3_IS_LOADING(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @LP5523_MODE_ENG3_M, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* @LP5523_RUN_ENG3, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @LP5523_EXEC_ENG3_M, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i32, i32* @LP5523_RUN_ENG3, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %67, %63
  %81 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %82 = load i32, i32* @LP5523_REG_OP_MODE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @lp55xx_write(%struct.lp55xx_chip* %81, i32 %82, i32 %83)
  %85 = call i32 (...) @lp5523_wait_opmode_done()
  %86 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %87 = load i32, i32* @LP5523_REG_ENABLE, align 4
  %88 = load i32, i32* @LP5523_EXEC_M, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @lp55xx_update_bits(%struct.lp55xx_chip* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %28, %21, %10
  ret void
}

declare dso_local i32 @lp5523_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5523_turn_off_channels(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i32, i32*) #1

declare dso_local i64 @LP5523_ENG1_IS_LOADING(i32) #1

declare dso_local i64 @LP5523_ENG2_IS_LOADING(i32) #1

declare dso_local i64 @LP5523_ENG3_IS_LOADING(i32) #1

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @lp5523_wait_opmode_done(...) #1

declare dso_local i32 @lp55xx_update_bits(%struct.lp55xx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
