; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_init_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.matrix_keypad = type { %struct.matrix_keypad_platform_data* }
%struct.matrix_keypad_platform_data = type { i32, i32, i64, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"matrix_kbd_col\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to request GPIO%d for COL%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"matrix_kbd_row\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to request GPIO%d for ROW%d\0A\00", align 1
@matrix_keypad_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"matrix-keypad\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to acquire clustered interrupt\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Unable to acquire interrupt for GPIO line %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.matrix_keypad*)* @matrix_keypad_init_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrix_keypad_init_gpio(%struct.platform_device* %0, %struct.matrix_keypad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.matrix_keypad*, align 8
  %6 = alloca %struct.matrix_keypad_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.matrix_keypad* %1, %struct.matrix_keypad** %5, align 8
  %9 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %10 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %9, i32 0, i32 0
  %11 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %10, align 8
  store %struct.matrix_keypad_platform_data* %11, %struct.matrix_keypad_platform_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %56, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %20 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_request(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %204

41:                                               ; preds = %18
  %42 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %50 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @gpio_direction_output(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %12

59:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %98, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %63 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %60
  %67 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %68 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gpio_request(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %66
  %78 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87)
  br label %186

89:                                               ; preds = %66
  %90 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %91 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gpio_direction_input(i32 %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %103 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @matrix_keypad_interrupt, align 4
  %111 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %112 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %115 = call i32 @request_any_context_irq(i64 %109, i32 %110, i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.matrix_keypad* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %106
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %186

122:                                              ; preds = %106
  br label %163

123:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %159, %123
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %127 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  %131 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %132 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @gpio_to_irq(i32 %137)
  %139 = load i32, i32* @matrix_keypad_interrupt, align 4
  %140 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %141 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %144 = call i32 @request_any_context_irq(i64 %138, i32 %139, i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.matrix_keypad* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %130
  %148 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %151 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %166

158:                                              ; preds = %130
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %124

162:                                              ; preds = %124
  br label %163

163:                                              ; preds = %162, %122
  %164 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %165 = call i32 @disable_row_irqs(%struct.matrix_keypad* %164)
  store i32 0, i32* %3, align 4
  br label %220

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %171, %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %7, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %173 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @gpio_to_irq(i32 %178)
  %180 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %181 = call i32 @free_irq(i64 %179, %struct.matrix_keypad* %180)
  br label %167

182:                                              ; preds = %167
  %183 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %184 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %182, %118, %77
  br label %187

187:                                              ; preds = %191, %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %7, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %193 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @gpio_free(i32 %198)
  br label %187

200:                                              ; preds = %187
  %201 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %202 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %200, %29
  br label %205

205:                                              ; preds = %209, %204
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %7, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load %struct.matrix_keypad_platform_data*, %struct.matrix_keypad_platform_data** %6, align 8
  %211 = getelementptr inbounds %struct.matrix_keypad_platform_data, %struct.matrix_keypad_platform_data* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @gpio_free(i32 %216)
  br label %205

218:                                              ; preds = %205
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %163
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_any_context_irq(i64, i32, i32, i8*, %struct.matrix_keypad*) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @disable_row_irqs(%struct.matrix_keypad*) #1

declare dso_local i32 @free_irq(i64, %struct.matrix_keypad*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
