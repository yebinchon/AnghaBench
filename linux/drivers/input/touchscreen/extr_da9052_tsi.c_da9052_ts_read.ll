; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_tsi = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@DA9052_TSI_X_MSB_REG = common dso_local global i32 0, align 4
@DA9052_TSI_Y_MSB_REG = common dso_local global i32 0, align 4
@DA9052_TSI_Z_MSB_REG = common dso_local global i32 0, align 4
@DA9052_TSI_LSB_REG = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9052_tsi*)* @da9052_ts_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9052_ts_read(%struct.da9052_tsi* %0) #0 {
  %2 = alloca %struct.da9052_tsi*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.da9052_tsi* %0, %struct.da9052_tsi** %2, align 8
  %9 = load %struct.da9052_tsi*, %struct.da9052_tsi** %2, align 8
  %10 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.da9052_tsi*, %struct.da9052_tsi** %2, align 8
  %13 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DA9052_TSI_X_MSB_REG, align 4
  %16 = call i32 @da9052_reg_read(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %89

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.da9052_tsi*, %struct.da9052_tsi** %2, align 8
  %23 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DA9052_TSI_Y_MSB_REG, align 4
  %26 = call i32 @da9052_reg_read(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %89

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.da9052_tsi*, %struct.da9052_tsi** %2, align 8
  %33 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DA9052_TSI_Z_MSB_REG, align 4
  %36 = call i32 @da9052_reg_read(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %89

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.da9052_tsi*, %struct.da9052_tsi** %2, align 8
  %43 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DA9052_TSI_LSB_REG, align 4
  %46 = call i32 @da9052_reg_read(i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %89

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 2
  %54 = and i32 %53, 1020
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 3
  %57 = or i32 %54, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 2
  %60 = and i32 %59, 1020
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 12
  %63 = ashr i32 %62, 2
  %64 = or i32 %60, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 1020
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 48
  %70 = ashr i32 %69, 4
  %71 = or i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = load i32, i32* @BTN_TOUCH, align 4
  %74 = call i32 @input_report_key(%struct.input_dev* %72, i32 %73, i32 1)
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = load i32, i32* @ABS_X, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = load i32, i32* @ABS_PRESSURE, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @input_report_abs(%struct.input_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %88 = call i32 @input_sync(%struct.input_dev* %87)
  br label %89

89:                                               ; preds = %50, %49, %39, %29, %19
  ret void
}

declare dso_local i32 @da9052_reg_read(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
