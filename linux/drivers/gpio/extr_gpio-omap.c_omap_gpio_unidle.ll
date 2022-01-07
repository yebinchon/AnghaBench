; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_unidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_unidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i32 (%struct.device*)*, i32, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__, i64, i32, %struct.TYPE_4__ }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_bank*)* @omap_gpio_unidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gpio_unidle(%struct.gpio_bank* %0) #0 {
  %2 = alloca %struct.gpio_bank*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_bank* %0, %struct.gpio_bank** %2, align 8
  %11 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %12 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %16 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %21 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %26 = call i32 @omap_gpio_init_context(%struct.gpio_bank* %25)
  %27 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %28 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %27, i32 0, i32 0
  %29 = load i32 (%struct.device*)*, i32 (%struct.device*)** %28, align 8
  %30 = icmp ne i32 (%struct.device*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %33 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %32, i32 0, i32 0
  %34 = load i32 (%struct.device*)*, i32 (%struct.device*)** %33, align 8
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 %34(%struct.device* %35)
  %37 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %38 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39, %19, %1
  %41 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %42 = call i32 @omap_gpio_dbck_enable(%struct.gpio_bank* %41)
  %43 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %44 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %49 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %48, i32 0, i32 0
  %50 = load i32 (%struct.device*)*, i32 (%struct.device*)** %49, align 8
  %51 = icmp ne i32 (%struct.device*)* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %54 = call i32 @omap_gpio_restore_context(%struct.gpio_bank* %53)
  br label %71

55:                                               ; preds = %47
  %56 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %57 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %56, i32 0, i32 0
  %58 = load i32 (%struct.device*)*, i32 (%struct.device*)** %57, align 8
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i32 %58(%struct.device* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %63 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %68 = call i32 @omap_gpio_restore_context(%struct.gpio_bank* %67)
  br label %70

69:                                               ; preds = %55
  br label %276

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %52
  br label %101

72:                                               ; preds = %40
  %73 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %74 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %78 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %81 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = call i32 @writel_relaxed(i32 %76, i64 %85)
  %87 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %88 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %92 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %95 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = call i32 @writel_relaxed(i32 %90, i64 %99)
  br label %101

101:                                              ; preds = %72, %71
  %102 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %103 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %106 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %104, %109
  %111 = call i32 @readl_relaxed(i64 %110)
  store i32 %111, i32* %4, align 4
  %112 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %113 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %118 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %124 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %122, %126
  store i32 %127, i32* %6, align 4
  %128 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %129 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %135 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %133, %137
  store i32 %138, i32* %7, align 4
  %139 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %140 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %147 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = xor i32 %149, -1
  %151 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %152 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %154, -1
  %156 = and i32 %150, %155
  %157 = and i32 %145, %156
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %276

165:                                              ; preds = %101
  %166 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %167 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %170 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %169, i32 0, i32 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %168, %173
  %175 = call i32 @readl_relaxed(i64 %174)
  store i32 %175, i32* %9, align 4
  %176 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %177 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %180 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %179, i32 0, i32 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %178, %183
  %185 = call i32 @readl_relaxed(i64 %184)
  store i32 %185, i32* %10, align 4
  %186 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %187 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %186, i32 0, i32 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %219, label %192

192:                                              ; preds = %165
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %5, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %197 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %200 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %199, i32 0, i32 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %198, %203
  %205 = call i32 @writel_relaxed(i32 %195, i64 %204)
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %5, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %210 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %213 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %212, i32 0, i32 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %211, %216
  %218 = call i32 @writel_relaxed(i32 %208, i64 %217)
  br label %219

219:                                              ; preds = %192, %165
  %220 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %221 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %220, i32 0, i32 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %253

226:                                              ; preds = %219
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %4, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %231 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %234 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %233, i32 0, i32 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %232, %237
  %239 = call i32 @writel_relaxed(i32 %229, i64 %238)
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %4, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %244 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %247 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %246, i32 0, i32 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %245, %250
  %252 = call i32 @writel_relaxed(i32 %242, i64 %251)
  br label %253

253:                                              ; preds = %226, %219
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %256 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %259 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %258, i32 0, i32 4
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %257, %262
  %264 = call i32 @writel_relaxed(i32 %254, i64 %263)
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %267 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  %270 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %269, i32 0, i32 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %268, %273
  %275 = call i32 @writel_relaxed(i32 %265, i64 %274)
  br label %276

276:                                              ; preds = %69, %253, %101
  ret void
}

declare dso_local i32 @omap_gpio_init_context(%struct.gpio_bank*) #1

declare dso_local i32 @omap_gpio_dbck_enable(%struct.gpio_bank*) #1

declare dso_local i32 @omap_gpio_restore_context(%struct.gpio_bank*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
