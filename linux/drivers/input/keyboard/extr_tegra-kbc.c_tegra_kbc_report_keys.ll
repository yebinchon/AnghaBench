; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_report_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_report_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i16*, i32, i32, i32, i64, i64, i64, i64 }

@KBC_MAX_KPENT = common dso_local global i32 0, align 4
@KBC_KP_ENT0_0 = common dso_local global i64 0, align 8
@KBC_ROW_SHIFT = common dso_local global i8 0, align 1
@KEY_FN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_kbc*)* @tegra_kbc_report_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_kbc_report_keys(%struct.tegra_kbc* %0) #0 {
  %2 = alloca %struct.tegra_kbc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %2, align 8
  %21 = load i32, i32* @KBC_MAX_KPENT, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %3, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %25 = load i32, i32* @KBC_MAX_KPENT, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i16, i64 %26, align 16
  store i64 %26, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %95, %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KBC_MAX_KPENT, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = urem i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KBC_KP_ENT0_0, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %32
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 7
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 3
  %55 = and i32 %54, 15
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i8, i8* @KBC_ROW_SHIFT, align 1
  %59 = call zeroext i8 @MATRIX_SCAN_CODE(i32 %56, i32 %57, i8 zeroext %58)
  store i8 %59, i8* %14, align 1
  %60 = load i8, i8* %14, align 1
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %24, i64 %62
  store i8 %60, i8* %63, align 1
  %64 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %65 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %64, i32 0, i32 0
  %66 = load i16*, i16** %65, align 8
  %67 = load i8, i8* %14, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %27, i64 %72
  store i16 %70, i16* %73, align 2
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %27, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @KEY_FN, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %50
  %83 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %84 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %9, align 4
  br label %91

88:                                               ; preds = %82, %50
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %46
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 8
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %28

98:                                               ; preds = %28
  %99 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %100 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %169

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = icmp uge i32 %104, 3
  br i1 %105, label %106, label %169

106:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %165, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %168

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %24, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 7
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %16, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %24, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @KBC_ROW_SHIFT, align 1
  %125 = zext i8 %124 to i32
  %126 = ashr i32 %123, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %17, align 8
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %161, %111
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %24, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 7
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %18, align 8
  %142 = load i32, i32* %15, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %24, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @KBC_ROW_SHIFT, align 1
  %148 = zext i8 %147 to i32
  %149 = ashr i32 %146, %148
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %19, align 8
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %16, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %134
  store i32 1, i32* %11, align 4
  br label %155

155:                                              ; preds = %154, %134
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %17, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 1, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %155
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %15, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %130

164:                                              ; preds = %130
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %107

168:                                              ; preds = %107
  br label %169

169:                                              ; preds = %168, %103, %98
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %201, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %179 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %24, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i64
  %186 = add nsw i64 %185, %180
  %187 = trunc i64 %186 to i8
  store i8 %187, i8* %183, align 1
  %188 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %189 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %188, i32 0, i32 0
  %190 = load i16*, i16** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %24, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds i16, i16* %190, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = load i32, i32* %7, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i16, i16* %27, i64 %199
  store i16 %197, i16* %200, align 2
  br label %201

201:                                              ; preds = %177
  %202 = load i32, i32* %7, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %173

204:                                              ; preds = %173
  br label %205

205:                                              ; preds = %204, %169
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 1, i32* %20, align 4
  br label %240

212:                                              ; preds = %208, %205
  %213 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %214 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %217 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %220 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @tegra_kbc_report_released_keys(i32 %215, i32 %218, i32 %221, i16* %27, i32 %222)
  %224 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %225 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @tegra_kbc_report_pressed_keys(i32 %226, i8* %24, i16* %27, i32 %227)
  %229 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %230 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @input_sync(i32 %231)
  %233 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %234 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @memcpy(i32 %235, i16* %27, i32 4)
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %239 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  store i32 0, i32* %20, align 4
  br label %240

240:                                              ; preds = %212, %211
  %241 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %20, align 4
  switch i32 %242, label %244 [
    i32 0, label %243
    i32 1, label %243
  ]

243:                                              ; preds = %240, %240
  ret void

244:                                              ; preds = %240
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readl(i64) #2

declare dso_local zeroext i8 @MATRIX_SCAN_CODE(i32, i32, i8 zeroext) #2

declare dso_local i32 @tegra_kbc_report_released_keys(i32, i32, i32, i16*, i32) #2

declare dso_local i32 @tegra_kbc_report_pressed_keys(i32, i8*, i16*, i32) #2

declare dso_local i32 @input_sync(i32) #2

declare dso_local i32 @memcpy(i32, i16*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
