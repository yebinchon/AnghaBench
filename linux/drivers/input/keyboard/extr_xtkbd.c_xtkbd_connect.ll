; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_xtkbd.c_xtkbd_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_xtkbd.c_xtkbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.xtkbd = type { %struct.input_dev*, i32*, i32, %struct.serio* }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@xtkbd_keycode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"XT Keyboard\00", align 1
@BUS_XTKBD = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @xtkbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtkbd_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.xtkbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.xtkbd* @kmalloc(i32 32, i32 %12)
  store %struct.xtkbd* %13, %struct.xtkbd** %6, align 8
  %14 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %14, %struct.input_dev** %7, align 8
  %15 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %16 = icmp ne %struct.xtkbd* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %19 = icmp ne %struct.input_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %132

21:                                               ; preds = %17
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %24 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %23, i32 0, i32 3
  store %struct.serio* %22, %struct.serio** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %27 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %26, i32 0, i32 0
  store %struct.input_dev* %25, %struct.input_dev** %27, align 8
  %28 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %29 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.serio*, %struct.serio** %4, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %36 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @xtkbd_keycode, align 4
  %39 = call i32 @memcpy(i32* %37, i32 %38, i32 8)
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %43 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @BUS_XTKBD, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 256, i32* %59, align 8
  %60 = load %struct.serio*, %struct.serio** %4, align 8
  %61 = getelementptr inbounds %struct.serio, %struct.serio* %60, i32 0, i32 1
  %62 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32* %61, i32** %64, align 8
  %65 = load i32, i32* @EV_KEY, align 4
  %66 = call i32 @BIT_MASK(i32 %65)
  %67 = load i32, i32* @EV_REP, align 4
  %68 = call i32 @BIT_MASK(i32 %67)
  %69 = or i32 %66, %68
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %75 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 5
  store i32* %76, i32** %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @xtkbd_keycode, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %100, %21
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 255
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %90 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @set_bit(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %85

103:                                              ; preds = %85
  %104 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clear_bit(i32 0, i32 %106)
  %108 = load %struct.serio*, %struct.serio** %4, align 8
  %109 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %110 = call i32 @serio_set_drvdata(%struct.serio* %108, %struct.xtkbd* %109)
  %111 = load %struct.serio*, %struct.serio** %4, align 8
  %112 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %113 = call i32 @serio_open(%struct.serio* %111, %struct.serio_driver* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %129

117:                                              ; preds = %103
  %118 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %119 = getelementptr inbounds %struct.xtkbd, %struct.xtkbd* %118, i32 0, i32 0
  %120 = load %struct.input_dev*, %struct.input_dev** %119, align 8
  %121 = call i32 @input_register_device(%struct.input_dev* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %126

125:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %138

126:                                              ; preds = %124
  %127 = load %struct.serio*, %struct.serio** %4, align 8
  %128 = call i32 @serio_close(%struct.serio* %127)
  br label %129

129:                                              ; preds = %126, %116
  %130 = load %struct.serio*, %struct.serio** %4, align 8
  %131 = call i32 @serio_set_drvdata(%struct.serio* %130, %struct.xtkbd* null)
  br label %132

132:                                              ; preds = %129, %20
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = call i32 @input_free_device(%struct.input_dev* %133)
  %135 = load %struct.xtkbd*, %struct.xtkbd** %6, align 8
  %136 = call i32 @kfree(%struct.xtkbd* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %125
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.xtkbd* @kmalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.xtkbd*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.xtkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
