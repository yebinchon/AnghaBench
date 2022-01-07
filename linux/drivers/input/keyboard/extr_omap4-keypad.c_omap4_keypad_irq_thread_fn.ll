; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_keypad = type { i8*, i32, i32, i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@OMAP4_KBD_FULLCODE31_0 = common dso_local global i32 0, align 4
@OMAP4_KBD_FULLCODE63_32 = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@OMAP4_KBD_IRQSTATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap4_keypad_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_keypad_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap4_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.omap4_keypad*
  store %struct.omap4_keypad* %15, %struct.omap4_keypad** %5, align 8
  %16 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %17 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %16, i32 0, i32 5
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %6, align 8
  %19 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %20 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i8* %21)
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %28 = load i32, i32* @OMAP4_KBD_FULLCODE31_0, align 4
  %29 = call i32 @kbd_readl(%struct.omap4_keypad* %27, i32 %28)
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %32 = load i32, i32* @OMAP4_KBD_FULLCODE63_32, align 4
  %33 = call i32 @kbd_readl(%struct.omap4_keypad* %31, i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %108, %2
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %39 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %25, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %49 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %47, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %42
  br label %108

60:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %104, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %64 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %77 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @MATRIX_SCAN_CODE(i32 %74, i32 %75, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %81 = load i32, i32* @EV_MSC, align 4
  %82 = load i32, i32* @MSC_SCAN, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @input_event(%struct.input_dev* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %86 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %87 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %25, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = trunc i32 %100 to i8
  %102 = call i32 @input_report_key(%struct.input_dev* %85, i32 %92, i8 zeroext %101)
  br label %103

103:                                              ; preds = %73, %67
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %61

107:                                              ; preds = %61
  br label %108

108:                                              ; preds = %107, %59
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %36

111:                                              ; preds = %36
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = call i32 @input_sync(%struct.input_dev* %112)
  %114 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %115 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @memcpy(i8* %116, i8* %25, i32 8)
  %118 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %119 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %120 = load %struct.omap4_keypad*, %struct.omap4_keypad** %5, align 8
  %121 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %122 = call i32 @kbd_read_irqreg(%struct.omap4_keypad* %120, i32 %121)
  %123 = call i32 @kbd_write_irqreg(%struct.omap4_keypad* %118, i32 %119, i32 %122)
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  %125 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %125)
  ret i32 %124
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @kbd_readl(%struct.omap4_keypad*, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kbd_write_irqreg(%struct.omap4_keypad*, i32, i32) #1

declare dso_local i32 @kbd_read_irqreg(%struct.omap4_keypad*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
