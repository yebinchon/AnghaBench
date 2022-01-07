; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_keypad = type { i32*, i32, i32, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_REG = common dso_local global i64 0, align 8
@KEY_REG_KEY1_MASK = common dso_local global i32 0, align 4
@KEY_REG_KEY1_SHIFT = common dso_local global i32 0, align 4
@KEY_REG_KEY2_MASK = common dso_local global i32 0, align 4
@KEY_REG_KEY2_SHIFT = common dso_local global i32 0, align 4
@KEY_REG_2KEYS = common dso_local global i32 0, align 4
@KEY_REG_1KEY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_keypad_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_keypad_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ep93xx_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ep93xx_keypad*
  store %struct.ep93xx_keypad* %12, %struct.ep93xx_keypad** %5, align 8
  %13 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %14 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %13, i32 0, i32 4
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %17 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KEY_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_readl(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @KEY_REG_KEY1_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @KEY_REG_KEY1_SHIFT, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %28 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KEY_REG_KEY2_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @KEY_REG_KEY2_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %40 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @KEY_REG_2KEYS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %2
  %51 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %52 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %58 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %64 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %69 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %70 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @input_report_key(%struct.input_dev* %68, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %67, %61, %55, %50
  %74 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %75 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %81 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %87 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %93 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @input_report_key(%struct.input_dev* %91, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %90, %84, %78, %73
  %97 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @input_report_key(%struct.input_dev* %97, i32 %98, i32 1)
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i32 1)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %105 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %108 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %173

109:                                              ; preds = %2
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @KEY_REG_1KEY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %109
  %115 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %116 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %122 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %127 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %128 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @input_report_key(%struct.input_dev* %126, i32 %129, i32 0)
  br label %131

131:                                              ; preds = %125, %119, %114
  %132 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %133 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %139 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %144 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %145 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @input_report_key(%struct.input_dev* %143, i32 %146, i32 0)
  br label %148

148:                                              ; preds = %142, %136, %131
  %149 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @input_report_key(%struct.input_dev* %149, i32 %150, i32 1)
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %154 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %156 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %155, i32 0, i32 2
  store i32 0, i32* %156, align 4
  br label %172

157:                                              ; preds = %109
  %158 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %159 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %160 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @input_report_key(%struct.input_dev* %158, i32 %161, i32 0)
  %163 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %164 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %165 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @input_report_key(%struct.input_dev* %163, i32 %166, i32 0)
  %168 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %169 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %168, i32 0, i32 2
  store i32 0, i32* %169, align 4
  %170 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %5, align 8
  %171 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %170, i32 0, i32 1
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %157, %148
  br label %173

173:                                              ; preds = %172, %96
  %174 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %175 = call i32 @input_sync(%struct.input_dev* %174)
  %176 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %176
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
