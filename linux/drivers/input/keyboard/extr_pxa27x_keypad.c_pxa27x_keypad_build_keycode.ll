; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_build_keycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_build_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i16*, i32*, %struct.input_dev*, %struct.pxa27x_keypad_platform_data* }
%struct.input_dev = type { i32, i32, i32 }
%struct.pxa27x_keypad_platform_data = type { i32, i16*, i16, i16, i16, i16, i16, i16, i64, i64, i32, i32, i32 }

@MAX_MATRIX_KEY_NUM = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa27x_keypad*)* @pxa27x_keypad_build_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_keypad_build_keycode(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa27x_keypad*, align 8
  %4 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %3, align 8
  %9 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %10 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %9, i32 0, i32 3
  %11 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %10, align 8
  store %struct.pxa27x_keypad_platform_data* %11, %struct.pxa27x_keypad_platform_data** %4, align 8
  %12 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %5, align 8
  %15 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %25 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %24, i32 0, i32 0
  %26 = load i16*, i16** %25, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = call i32 @matrix_keypad_build_keymap(i32 %17, i32* null, i32 %20, i32 %23, i16* %26, %struct.input_dev* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %219

33:                                               ; preds = %1
  %34 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %35 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %34, i32 0, i32 0
  %36 = load i16*, i16** %35, align 8
  %37 = call i32 @ARRAY_SIZE(i16* %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %68, %33
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %47, i32 0, i32 1
  %49 = load i16*, i16** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  %53 = load i16, i16* %52, align 2
  store i16 %53, i16* %6, align 2
  %54 = load i16, i16* %6, align 2
  %55 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %56 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %55, i32 0, i32 0
  %57 = load i16*, i16** %56, align 8
  %58 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %57, i64 %61
  store i16 %54, i16* %62, align 2
  %63 = load i16, i16* %6, align 2
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__set_bit(i16 zeroext %63, i32 %66)
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %71
  %77 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %78 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %77, i32 0, i32 2
  %79 = load i16, i16* %78, align 8
  %80 = zext i16 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %76
  %83 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %84 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %83, i32 0, i32 3
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %82
  %89 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %90 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %89, i32 0, i32 2
  %91 = load i16, i16* %90, align 8
  store i16 %91, i16* %6, align 2
  %92 = load i16, i16* %6, align 2
  %93 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %94 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %93, i32 0, i32 0
  %95 = load i16*, i16** %94, align 8
  %96 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %97 = add nsw i32 %96, 0
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %95, i64 %98
  store i16 %92, i16* %99, align 2
  %100 = load i16, i16* %6, align 2
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__set_bit(i16 zeroext %100, i32 %103)
  %105 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %106 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %105, i32 0, i32 3
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %6, align 2
  %108 = load i16, i16* %6, align 2
  %109 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %110 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %109, i32 0, i32 0
  %111 = load i16*, i16** %110, align 8
  %112 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %111, i64 %114
  store i16 %108, i16* %115, align 2
  %116 = load i16, i16* %6, align 2
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @__set_bit(i16 zeroext %116, i32 %119)
  %121 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %122 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 -1, i32* %124, align 4
  br label %141

125:                                              ; preds = %82, %76
  %126 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %127 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %126, i32 0, i32 4
  %128 = load i16, i16* %127, align 4
  %129 = zext i16 %128 to i32
  %130 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %131 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %135 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %134, i32 0, i32 4
  %136 = load i16, i16* %135, align 4
  %137 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @__set_bit(i16 zeroext %136, i32 %139)
  br label %141

141:                                              ; preds = %125, %88
  br label %142

142:                                              ; preds = %141, %71
  %143 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %144 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %213

147:                                              ; preds = %142
  %148 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %149 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %148, i32 0, i32 5
  %150 = load i16, i16* %149, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %196

153:                                              ; preds = %147
  %154 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %155 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %154, i32 0, i32 6
  %156 = load i16, i16* %155, align 8
  %157 = zext i16 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %153
  %160 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %161 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %160, i32 0, i32 5
  %162 = load i16, i16* %161, align 2
  store i16 %162, i16* %6, align 2
  %163 = load i16, i16* %6, align 2
  %164 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %165 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %164, i32 0, i32 0
  %166 = load i16*, i16** %165, align 8
  %167 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %168 = add nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %166, i64 %169
  store i16 %163, i16* %170, align 2
  %171 = load i16, i16* %6, align 2
  %172 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %173 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @__set_bit(i16 zeroext %171, i32 %174)
  %176 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %177 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %176, i32 0, i32 6
  %178 = load i16, i16* %177, align 8
  store i16 %178, i16* %6, align 2
  %179 = load i16, i16* %6, align 2
  %180 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %181 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %180, i32 0, i32 0
  %182 = load i16*, i16** %181, align 8
  %183 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %184 = add nsw i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i16, i16* %182, i64 %185
  store i16 %179, i16* %186, align 2
  %187 = load i16, i16* %6, align 2
  %188 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %189 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @__set_bit(i16 zeroext %187, i32 %190)
  %192 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %193 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 -1, i32* %195, align 4
  br label %212

196:                                              ; preds = %153, %147
  %197 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %198 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %197, i32 0, i32 7
  %199 = load i16, i16* %198, align 2
  %200 = zext i16 %199 to i32
  %201 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %3, align 8
  %202 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %4, align 8
  %206 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %205, i32 0, i32 7
  %207 = load i16, i16* %206, align 2
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @__set_bit(i16 zeroext %207, i32 %210)
  br label %212

212:                                              ; preds = %196, %159
  br label %213

213:                                              ; preds = %212, %142
  %214 = load i32, i32* @KEY_RESERVED, align 4
  %215 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %216 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @__clear_bit(i32 %214, i32 %217)
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %213, %31
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @matrix_keypad_build_keymap(i32, i32*, i32, i32, i16*, %struct.input_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @__set_bit(i16 zeroext, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
