; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_fsia6b.c_fsia6b_serio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_fsia6b.c_fsia6b_serio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.fsia6b = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i32, i32*, i64 }

@BTN_0 = common dso_local global i32 0, align 4
@IBUS_SERVO_COUNT = common dso_local global i32 0, align 4
@fsia6b_axes = common dso_local global i32* null, align 8
@switch_config = common dso_local global i32* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @fsia6b_serio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsia6b_serio_irq(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsia6b*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load %struct.serio*, %struct.serio** %4, align 8
  %12 = call %struct.fsia6b* @serio_get_drvdata(%struct.serio* %11)
  store %struct.fsia6b* %12, %struct.fsia6b** %7, align 8
  %13 = load i32, i32* @BTN_0, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %18 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = or i32 %16, %23
  %25 = trunc i32 %24 to i8
  %26 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %27 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8 %25, i8* %28, align 8
  %29 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %30 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %177 [
    i32 128, label %33
    i32 130, label %45
    i32 129, label %49
  ]

33:                                               ; preds = %3
  %34 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %35 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 16416
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %42 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 130, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %33
  br label %177

45:                                               ; preds = %3
  %46 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %47 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 129, i32* %48, align 4
  br label %177

49:                                               ; preds = %3
  %50 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %51 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %56 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %60 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 %54, i32* %63, align 4
  %64 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %65 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %70 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @IBUS_SERVO_COUNT, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %172

76:                                               ; preds = %49
  %77 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %78 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %81 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 128, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %164, %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @IBUS_SERVO_COUNT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %167

87:                                               ; preds = %83
  %88 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %89 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** @fsia6b_axes, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %97 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_report_abs(i32 %90, i32 %95, i32 %103)
  store i32 0, i32* %9, align 4
  %105 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %106 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1900
  br i1 %113, label %114, label %115

114:                                              ; preds = %87
  store i32 1, i32* %9, align 4
  br label %127

115:                                              ; preds = %87
  %116 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %117 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 1100
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i32 2, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %115
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i32*, i32** @switch_config, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %163 [
    i32 51, label %133
    i32 50, label %143
    i32 49, label %153
  ]

133:                                              ; preds = %127
  %134 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %135 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @input_report_key(i32 %136, i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %127, %133
  %144 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %145 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 1
  %151 = zext i1 %150 to i32
  %152 = call i32 @input_report_key(i32 %146, i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %127, %143
  %154 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %155 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i32
  %162 = call i32 @input_report_key(i32 %156, i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %153, %127
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %83

167:                                              ; preds = %83
  %168 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %169 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @input_sync(i32 %170)
  br label %176

172:                                              ; preds = %49
  %173 = load %struct.fsia6b*, %struct.fsia6b** %7, align 8
  %174 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 130, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %167
  br label %177

177:                                              ; preds = %3, %176, %45, %44
  %178 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %178
}

declare dso_local %struct.fsia6b* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
