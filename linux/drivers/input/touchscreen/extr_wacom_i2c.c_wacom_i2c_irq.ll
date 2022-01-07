; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_i2c = type { i32*, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wacom_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wacom_i2c*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wacom_i2c*
  store %struct.wacom_i2c* %17, %struct.wacom_i2c** %5, align 8
  %18 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %19 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %18, i32 0, i32 4
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @i2c_master_recv(i32 %26, i32* %29, i32 8)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %134

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %11, align 1
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %14, align 1
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 2
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %12, align 1
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 16
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %13, align 1
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = call i32 @le16_to_cpup(i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  %60 = call i32 @le16_to_cpup(i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = call i32 @le16_to_cpup(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %34
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 12
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %81 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %34
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 32
  %87 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %88 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %90 = load i32, i32* @BTN_TOUCH, align 4
  %91 = load i8, i8* %11, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %82
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %94, %82
  %99 = phi i1 [ true, %82 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = trunc i32 %100 to i8
  %102 = call i32 @input_report_key(%struct.input_dev* %89, i32 %90, i8 zeroext %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %105 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wacom_i2c*, %struct.wacom_i2c** %5, align 8
  %108 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = trunc i32 %109 to i8
  %111 = call i32 @input_report_key(%struct.input_dev* %103, i32 %106, i8 zeroext %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = load i32, i32* @BTN_STYLUS, align 4
  %114 = load i8, i8* %12, align 1
  %115 = call i32 @input_report_key(%struct.input_dev* %112, i32 %113, i8 zeroext %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = load i32, i32* @BTN_STYLUS2, align 4
  %118 = load i8, i8* %13, align 1
  %119 = call i32 @input_report_key(%struct.input_dev* %116, i32 %117, i8 zeroext %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load i32, i32* @ABS_X, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @input_report_abs(%struct.input_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %125 = load i32, i32* @ABS_Y, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @input_report_abs(%struct.input_dev* %124, i32 %125, i32 %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = load i32, i32* @ABS_PRESSURE, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @input_report_abs(%struct.input_dev* %128, i32 %129, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %133 = call i32 @input_sync(%struct.input_dev* %132)
  br label %134

134:                                              ; preds = %98, %33
  %135 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %135
}

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
