; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_ts_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_ts_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_touch = type { i32, i32, i32 }

@STMPE_REG_TSC_CTRL = common dso_local global i32 0, align 4
@STMPE_TSC_CTRL_TSC_EN = common dso_local global i32 0, align 4
@STMPE_REG_TSC_DATA_XYZ = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stmpe_ts_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_ts_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmpe_touch*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stmpe_touch*
  store %struct.stmpe_touch* %11, %struct.stmpe_touch** %9, align 8
  %12 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %13 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %12, i32 0, i32 0
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %16 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STMPE_REG_TSC_CTRL, align 4
  %19 = load i32, i32* @STMPE_TSC_CTRL_TSC_EN, align 4
  %20 = call i32 @stmpe_set_bits(i32 %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %22 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STMPE_REG_TSC_DATA_XYZ, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = call i32 @stmpe_block_read(i32 %23, i32 %24, i32 4, i32* %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = shl i32 %28, 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %37, %39
  store i32 %40, i32* %7, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %44 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ABS_X, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @input_report_abs(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %50 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ABS_Y, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @input_report_abs(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %56 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ABS_PRESSURE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @input_report_abs(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %62 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BTN_TOUCH, align 4
  %65 = call i32 @input_report_key(i32 %63, i32 %64, i32 1)
  %66 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %67 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @input_sync(i32 %68)
  %70 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %71 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__stmpe_reset_fifo(i32 %72)
  %74 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %75 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @STMPE_REG_TSC_CTRL, align 4
  %78 = load i32, i32* @STMPE_TSC_CTRL_TSC_EN, align 4
  %79 = load i32, i32* @STMPE_TSC_CTRL_TSC_EN, align 4
  %80 = call i32 @stmpe_set_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.stmpe_touch*, %struct.stmpe_touch** %9, align 8
  %82 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %81, i32 0, i32 0
  %83 = call i32 @msecs_to_jiffies(i32 50)
  %84 = call i32 @schedule_delayed_work(i32* %82, i32 %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @stmpe_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @stmpe_block_read(i32, i32, i32, i32*) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @__stmpe_reset_fifo(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
