; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_check_for_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_check_for_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i16*, i64, i16*, i64, i32 }
%struct.timer_list = type { i32 }

@check_matrix_timer = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_COLS = common dso_local global i32 0, align 4
@IMX_KEYPAD_SCANS_FOR_STABILITY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KPSR = common dso_local global i64 0, align 8
@KBD_STAT_KPKD = common dso_local global i16 0, align 2
@KBD_STAT_KDSC = common dso_local global i16 0, align 2
@KBD_STAT_KDIE = common dso_local global i16 0, align 2
@KBD_STAT_KRIE = common dso_local global i16 0, align 2
@KBD_STAT_KPKR = common dso_local global i16 0, align 2
@KBD_STAT_KRSS = common dso_local global i16 0, align 2
@keypad = common dso_local global %struct.imx_keypad* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @imx_keypad_check_for_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_keypad_check_for_events(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.imx_keypad*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %11 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %12 = ptrtoint %struct.imx_keypad* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* @check_matrix_timer, align 4
  %15 = call %struct.imx_keypad* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.imx_keypad* %15, %struct.imx_keypad** %3, align 8
  %16 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i16, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = mul nuw i64 2, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i16* %19, i32 0, i32 %21)
  %23 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %24 = call i32 @imx_keypad_scan_matrix(%struct.imx_keypad* %23, i16* %19)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %56, %1
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %31 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %40 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %39, i32 0, i32 1
  %41 = load i16*, i16** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %19, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = xor i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %59

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %25

59:                                               ; preds = %54, %25
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %64 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %63, i32 0, i32 1
  %65 = load i16*, i16** %64, align 8
  %66 = mul nuw i64 2, %17
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i16* %65, i16* %19, i32 %67)
  %69 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %70 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %73 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %78 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IMX_KEYPAD_SCANS_FOR_STABILITY, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %84 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %83, i32 0, i32 5
  %85 = load i64, i64* @jiffies, align 8
  %86 = call i64 @msecs_to_jiffies(i32 10)
  %87 = add nsw i64 %85, %86
  %88 = call i32 @mod_timer(i32* %84, i64 %87)
  store i32 1, i32* %10, align 4
  br label %229

89:                                               ; preds = %76
  %90 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %91 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IMX_KEYPAD_SCANS_FOR_STABILITY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %97 = call i32 @imx_keypad_fire_events(%struct.imx_keypad* %96, i16* %19)
  %98 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %99 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %98, i32 0, i32 3
  %100 = load i16*, i16** %99, align 8
  %101 = mul nuw i64 2, %17
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memcpy(i16* %100, i16* %19, i32 %102)
  br label %104

104:                                              ; preds = %95, %89
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %19, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %121

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %105

121:                                              ; preds = %116, %105
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %173

124:                                              ; preds = %121
  %125 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %126 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @KPSR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call zeroext i16 @readw(i64 %129)
  store i16 %130, i16* %6, align 2
  %131 = load i16, i16* @KBD_STAT_KPKD, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* @KBD_STAT_KDSC, align 2
  %134 = zext i16 %133 to i32
  %135 = or i32 %132, %134
  %136 = load i16, i16* %6, align 2
  %137 = zext i16 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i16
  store i16 %139, i16* %6, align 2
  %140 = load i16, i16* %6, align 2
  %141 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %142 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @KPSR, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writew(i16 zeroext %140, i64 %145)
  %147 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %148 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @KPSR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call zeroext i16 @readw(i64 %151)
  store i16 %152, i16* %6, align 2
  %153 = load i16, i16* @KBD_STAT_KDIE, align 2
  %154 = zext i16 %153 to i32
  %155 = load i16, i16* %6, align 2
  %156 = zext i16 %155 to i32
  %157 = or i32 %156, %154
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %6, align 2
  %159 = load i16, i16* @KBD_STAT_KRIE, align 2
  %160 = zext i16 %159 to i32
  %161 = xor i32 %160, -1
  %162 = load i16, i16* %6, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, %161
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %6, align 2
  %166 = load i16, i16* %6, align 2
  %167 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %168 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @KPSR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writew(i16 zeroext %166, i64 %171)
  br label %228

173:                                              ; preds = %121
  %174 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %175 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %174, i32 0, i32 5
  %176 = load i64, i64* @jiffies, align 8
  %177 = call i64 @msecs_to_jiffies(i32 60)
  %178 = add nsw i64 %176, %177
  %179 = call i32 @mod_timer(i32* %175, i64 %178)
  %180 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %181 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @KPSR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call zeroext i16 @readw(i64 %184)
  store i16 %185, i16* %6, align 2
  %186 = load i16, i16* @KBD_STAT_KPKR, align 2
  %187 = zext i16 %186 to i32
  %188 = load i16, i16* @KBD_STAT_KRSS, align 2
  %189 = zext i16 %188 to i32
  %190 = or i32 %187, %189
  %191 = load i16, i16* %6, align 2
  %192 = zext i16 %191 to i32
  %193 = or i32 %192, %190
  %194 = trunc i32 %193 to i16
  store i16 %194, i16* %6, align 2
  %195 = load i16, i16* %6, align 2
  %196 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %197 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @KPSR, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writew(i16 zeroext %195, i64 %200)
  %202 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %203 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @KPSR, align 8
  %206 = add nsw i64 %204, %205
  %207 = call zeroext i16 @readw(i64 %206)
  store i16 %207, i16* %6, align 2
  %208 = load i16, i16* @KBD_STAT_KRIE, align 2
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* %6, align 2
  %211 = zext i16 %210 to i32
  %212 = or i32 %211, %209
  %213 = trunc i32 %212 to i16
  store i16 %213, i16* %6, align 2
  %214 = load i16, i16* @KBD_STAT_KDIE, align 2
  %215 = zext i16 %214 to i32
  %216 = xor i32 %215, -1
  %217 = load i16, i16* %6, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, %216
  %220 = trunc i32 %219 to i16
  store i16 %220, i16* %6, align 2
  %221 = load i16, i16* %6, align 2
  %222 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %223 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @KPSR, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @writew(i16 zeroext %221, i64 %226)
  br label %228

228:                                              ; preds = %173, %124
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %228, %82
  %230 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %10, align 4
  switch i32 %231, label %233 [
    i32 0, label %232
    i32 1, label %232
  ]

232:                                              ; preds = %229, %229
  ret void

233:                                              ; preds = %229
  unreachable
}

declare dso_local %struct.imx_keypad* @from_timer(i32, %struct.timer_list*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @imx_keypad_scan_matrix(%struct.imx_keypad*, i16*) #1

declare dso_local i32 @memcpy(i16*, i16*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @imx_keypad_fire_events(%struct.imx_keypad*, i16*) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
