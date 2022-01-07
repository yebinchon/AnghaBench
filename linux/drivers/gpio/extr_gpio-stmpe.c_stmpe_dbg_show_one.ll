; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_dbg_show_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_dbg_show_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.stmpe_gpio = type { %struct.stmpe* }
%struct.stmpe = type { i64*, i32 }

@STMPE_IDX_GPDR_LSB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c" gpio-%-3d (%-20.20s) out %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@stmpe_dbg_show_one.edge_det_values = internal constant [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"edge-inactive\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"edge-asserted\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"not-supported\00", align 1
@stmpe_dbg_show_one.rise_values = internal constant [3 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [25 x i8] c"no-rising-edge-detection\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"rising-edge-detection\00", align 1
@stmpe_dbg_show_one.fall_values = internal constant [3 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [26 x i8] c"no-falling-edge-detection\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"falling-edge-detection\00", align 1
@STMPE_IDX_GPEDR_LSB = common dso_local global i32 0, align 4
@STMPE_IDX_GPRER_LSB = common dso_local global i32 0, align 4
@STMPE_IDX_GPFER_LSB = common dso_local global i32 0, align 4
@STMPE_IDX_IEGPIOR_LSB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c" gpio-%-3d (%-20.20s) in  %s %13s %13s %25s %25s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"IRQ-enabled\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IRQ-disabled\00", align 1
@NOT_SUPPORTED_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*, i32, i32)* @stmpe_dbg_show_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_dbg_show_one(%struct.seq_file* %0, %struct.gpio_chip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmpe_gpio*, align 8
  %10 = alloca %struct.stmpe*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %27 = call %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip* %26)
  store %struct.stmpe_gpio* %27, %struct.stmpe_gpio** %9, align 8
  %28 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %9, align 8
  %29 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %28, i32 0, i32 0
  %30 = load %struct.stmpe*, %struct.stmpe** %29, align 8
  store %struct.stmpe* %30, %struct.stmpe** %10, align 8
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @gpiochip_is_requested(%struct.gpio_chip* %31, i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @stmpe_gpio_get(%struct.gpio_chip* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = udiv i32 %41, 8
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %13, align 8
  %44 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %45 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @STMPE_IDX_GPDR_LSB, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %7, align 4
  %53 = urem i32 %52, 8
  %54 = call i64 @BIT(i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @stmpe_reg_read(%struct.stmpe* %55, i64 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %4
  br label %221

61:                                               ; preds = %4
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %15, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %61
  %74 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %78
  %81 = phi i8* [ %76, %78 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %79 ]
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %86 = call i32 (%struct.seq_file*, i8*, i32, i8*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %81, i8* %85)
  br label %221

87:                                               ; preds = %61
  store i64 2, i64* %22, align 8
  store i64 2, i64* %23, align 8
  store i64 2, i64* %24, align 8
  %88 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %89 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %178 [
    i32 130, label %91
    i32 128, label %91
    i32 134, label %91
    i32 132, label %91
    i32 131, label %91
    i32 133, label %117
    i32 129, label %168
    i32 135, label %168
  ]

91:                                               ; preds = %87, %87, %87, %87, %87
  %92 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %93 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* @STMPE_IDX_GPEDR_LSB, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %96, %97
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %18, align 8
  %101 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @stmpe_reg_read(%struct.stmpe* %101, i64 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %221

107:                                              ; preds = %91
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %15, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %22, align 8
  br label %117

117:                                              ; preds = %87, %107
  %118 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %119 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @STMPE_IDX_GPRER_LSB, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %19, align 8
  %127 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %128 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* @STMPE_IDX_GPFER_LSB, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %131, %132
  %134 = getelementptr inbounds i64, i64* %129, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %20, align 8
  %136 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %137 = load i64, i64* %19, align 8
  %138 = call i32 @stmpe_reg_read(%struct.stmpe* %136, i64 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %117
  br label %221

142:                                              ; preds = %117
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %15, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %23, align 8
  %152 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %153 = load i64, i64* %20, align 8
  %154 = call i32 @stmpe_reg_read(%struct.stmpe* %152, i64 %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %221

158:                                              ; preds = %142
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %15, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %24, align 8
  br label %168

168:                                              ; preds = %87, %87, %158
  %169 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %170 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* @STMPE_IDX_IEGPIOR_LSB, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %13, align 8
  %175 = add i64 %173, %174
  %176 = getelementptr inbounds i64, i64* %171, i64 %175
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %21, align 8
  br label %179

178:                                              ; preds = %87
  br label %221

179:                                              ; preds = %168
  %180 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  %181 = load i64, i64* %21, align 8
  %182 = call i32 @stmpe_reg_read(%struct.stmpe* %180, i64 %181)
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %221

186:                                              ; preds = %179
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %15, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  %192 = xor i1 %191, true
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %25, align 4
  %195 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i8*, i8** %11, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %186
  br label %201

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %200, %199
  %202 = phi i8* [ %197, %199 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %200 ]
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %207 = load i64, i64* %22, align 8
  %208 = getelementptr inbounds [3 x i8*], [3 x i8*]* @stmpe_dbg_show_one.edge_det_values, i64 0, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %25, align 4
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)
  %214 = load i64, i64* %23, align 8
  %215 = getelementptr inbounds [3 x i8*], [3 x i8*]* @stmpe_dbg_show_one.rise_values, i64 0, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = load i64, i64* %24, align 8
  %218 = getelementptr inbounds [3 x i8*], [3 x i8*]* @stmpe_dbg_show_one.fall_values, i64 0, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (%struct.seq_file*, i8*, i32, i8*, i8*, ...) @seq_printf(%struct.seq_file* %195, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %196, i8* %202, i8* %206, i8* %209, i8* %213, i8* %216, i8* %219)
  br label %221

221:                                              ; preds = %60, %106, %141, %157, %178, %185, %201, %80
  ret void
}

declare dso_local %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i8* @gpiochip_is_requested(%struct.gpio_chip*, i32) #1

declare dso_local i32 @stmpe_gpio_get(%struct.gpio_chip*, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @stmpe_reg_read(%struct.stmpe*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
