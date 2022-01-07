; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_run_predef_led_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_run_predef_led_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.lp55xx_predef_pattern* }
%struct.lp55xx_predef_pattern = type { i32, i32, i32, i32, i32, i32 }

@LP5562_PATTERN_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid pattern data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LP5562_REG_ENG_SEL = common dso_local global i64 0, align 8
@LP5562_ENG_SEL_RGB = common dso_local global i32 0, align 4
@LP55XX_ENGINE_1 = common dso_local global i32 0, align 4
@LP55XX_ENGINE_3 = common dso_local global i32 0, align 4
@LP5562_REG_PROG_MEM_ENG1 = common dso_local global i64 0, align 8
@LP5562_REG_PROG_MEM_ENG2 = common dso_local global i64 0, align 8
@LP5562_REG_PROG_MEM_ENG3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*, i32)* @lp5562_run_predef_led_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5562_run_predef_led_pattern(%struct.lp55xx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp55xx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp55xx_predef_pattern*, align 8
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LP5562_PATTERN_OFF, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %13 = call i32 @lp5562_run_engine(%struct.lp55xx_chip* %12, i32 0)
  store i32 0, i32* %3, align 4
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %16 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %19, i64 %22
  store %struct.lp55xx_predef_pattern* %23, %struct.lp55xx_predef_pattern** %6, align 8
  %24 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %25 = icmp ne %struct.lp55xx_predef_pattern* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %28 = call i64 @_is_pc_overflow(%struct.lp55xx_predef_pattern* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %14
  %31 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %32 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %110

38:                                               ; preds = %26
  %39 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %40 = call i32 @lp5562_stop_engine(%struct.lp55xx_chip* %39)
  %41 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %42 = load i64, i64* @LP5562_REG_ENG_SEL, align 8
  %43 = load i32, i32* @LP5562_ENG_SEL_RGB, align 4
  %44 = call i32 @lp55xx_write(%struct.lp55xx_chip* %41, i64 %42, i32 %43)
  %45 = load i32, i32* @LP55XX_ENGINE_1, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %56, %38
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @LP55XX_ENGINE_3, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %53 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %55 = call i32 @lp5562_load_engine(%struct.lp55xx_chip* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %61 = load i64, i64* @LP5562_REG_PROG_MEM_ENG1, align 8
  %62 = call i32 @lp55xx_write(%struct.lp55xx_chip* %60, i64 %61, i32 0)
  %63 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %64 = load i64, i64* @LP5562_REG_PROG_MEM_ENG1, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @lp55xx_write(%struct.lp55xx_chip* %63, i64 %65, i32 0)
  %67 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %68 = load i64, i64* @LP5562_REG_PROG_MEM_ENG2, align 8
  %69 = call i32 @lp55xx_write(%struct.lp55xx_chip* %67, i64 %68, i32 0)
  %70 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %71 = load i64, i64* @LP5562_REG_PROG_MEM_ENG2, align 8
  %72 = add nsw i64 %71, 1
  %73 = call i32 @lp55xx_write(%struct.lp55xx_chip* %70, i64 %72, i32 0)
  %74 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %75 = load i64, i64* @LP5562_REG_PROG_MEM_ENG3, align 8
  %76 = call i32 @lp55xx_write(%struct.lp55xx_chip* %74, i64 %75, i32 0)
  %77 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %78 = load i64, i64* @LP5562_REG_PROG_MEM_ENG3, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i32 @lp55xx_write(%struct.lp55xx_chip* %77, i64 %79, i32 0)
  %81 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %82 = load i64, i64* @LP5562_REG_PROG_MEM_ENG1, align 8
  %83 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %84 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %87 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lp5562_write_program_memory(%struct.lp55xx_chip* %81, i64 %82, i32 %85, i32 %88)
  %90 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %91 = load i64, i64* @LP5562_REG_PROG_MEM_ENG2, align 8
  %92 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %93 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %96 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lp5562_write_program_memory(%struct.lp55xx_chip* %90, i64 %91, i32 %94, i32 %97)
  %99 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %100 = load i64, i64* @LP5562_REG_PROG_MEM_ENG3, align 8
  %101 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %102 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %6, align 8
  %105 = getelementptr inbounds %struct.lp55xx_predef_pattern, %struct.lp55xx_predef_pattern* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @lp5562_write_program_memory(%struct.lp55xx_chip* %99, i64 %100, i32 %103, i32 %106)
  %108 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %109 = call i32 @lp5562_run_engine(%struct.lp55xx_chip* %108, i32 1)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %59, %30, %11
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @lp5562_run_engine(%struct.lp55xx_chip*, i32) #1

declare dso_local i64 @_is_pc_overflow(%struct.lp55xx_predef_pattern*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lp5562_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i64, i32) #1

declare dso_local i32 @lp5562_load_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5562_write_program_memory(%struct.lp55xx_chip*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
