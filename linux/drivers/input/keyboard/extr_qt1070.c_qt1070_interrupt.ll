; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt1070_data = type { i32, i32*, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { i32 }

@DET_STATUS = common dso_local global i32 0, align 4
@KEY_STATUS = common dso_local global i32 0, align 4
@qt1070_key2code = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qt1070_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1070_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qt1070_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qt1070_data*
  store %struct.qt1070_data* %13, %struct.qt1070_data** %5, align 8
  %14 = load %struct.qt1070_data*, %struct.qt1070_data** %5, align 8
  %15 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %14, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %6, align 8
  %17 = load %struct.qt1070_data*, %struct.qt1070_data** %5, align 8
  %18 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %17, i32 0, i32 2
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %7, align 8
  store i32 1, i32* %11, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = load i32, i32* @DET_STATUS, align 4
  %22 = call i32 @qt1070_read(%struct.i2c_client* %20, i32 %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load i32, i32* @KEY_STATUS, align 4
  %25 = call i32 @qt1070_read(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %56, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @qt1070_key2code, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.qt1070_data*, %struct.qt1070_data** %5, align 8
  %36 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %44 = load %struct.qt1070_data*, %struct.qt1070_data** %5, align 8
  %45 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @input_report_key(%struct.input_dev* %43, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %31
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = call i32 @input_sync(%struct.input_dev* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.qt1070_data*, %struct.qt1070_data** %5, align 8
  %64 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local i32 @qt1070_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
