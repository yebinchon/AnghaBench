; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ADV7511_REG_HSYNC_PLACEMENT_MSB = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ADV7511_SYNC_POLARITY_LOW = common dso_local global i32 0, align 4
@ADV7511_SYNC_POLARITY_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ADV7511_SYNC_POLARITY_PASSTHROUGH = common dso_local global i64 0, align 8
@ADV7511_LOW_REFRESH_RATE_24HZ = common dso_local global i32 0, align 4
@ADV7511_LOW_REFRESH_RATE_25HZ = common dso_local global i32 0, align 4
@ADV7511_LOW_REFRESH_RATE_30HZ = common dso_local global i32 0, align 4
@ADV7511_LOW_REFRESH_RATE_NONE = common dso_local global i32 0, align 4
@ADV7533 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @adv7511_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_mode_set(%struct.adv7511* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.adv7511*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %17 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %127

20:                                               ; preds = %3
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %44, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %52 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ADV7511_REG_HSYNC_PLACEMENT_MSB, align 4
  %55 = load i32, i32* %10, align 4
  %56 = lshr i32 %55, 10
  %57 = and i32 %56, 7
  %58 = shl i32 %57, 5
  %59 = call i32 @regmap_write(i32 %53, i32 %54, i32 %58)
  %60 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ADV7511_REG_SYNC_DECODER(i32 0)
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 2
  %66 = and i32 %65, 255
  %67 = call i32 @regmap_write(i32 %62, i32 %63, i32 %66)
  %68 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %69 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ADV7511_REG_SYNC_DECODER(i32 1)
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 3
  %74 = shl i32 %73, 6
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 4
  %77 = and i32 %76, 63
  %78 = or i32 %74, %77
  %79 = call i32 @regmap_write(i32 %70, i32 %71, i32 %78)
  %80 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %81 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ADV7511_REG_SYNC_DECODER(i32 2)
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 15
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %12, align 4
  %88 = lshr i32 %87, 6
  %89 = and i32 %88, 15
  %90 = or i32 %86, %89
  %91 = call i32 @regmap_write(i32 %82, i32 %83, i32 %90)
  %92 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %93 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ADV7511_REG_SYNC_DECODER(i32 3)
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 63
  %98 = shl i32 %97, 2
  %99 = load i32, i32* %13, align 4
  %100 = lshr i32 %99, 8
  %101 = and i32 %100, 3
  %102 = or i32 %98, %101
  %103 = call i32 @regmap_write(i32 %94, i32 %95, i32 %102)
  %104 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %105 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ADV7511_REG_SYNC_DECODER(i32 4)
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 255
  %110 = call i32 @regmap_write(i32 %106, i32 %107, i32 %109)
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %112 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %9, align 4
  br label %178

127:                                              ; preds = %3
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @ADV7511_SYNC_POLARITY_LOW, align 4
  store i32 %135, i32* %14, align 4
  br label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @ADV7511_SYNC_POLARITY_HIGH, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @ADV7511_SYNC_POLARITY_LOW, align 4
  store i32 %146, i32* %15, align 4
  br label %149

147:                                              ; preds = %138
  %148 = load i32, i32* @ADV7511_SYNC_POLARITY_HIGH, align 4
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %151 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %157 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @ADV7511_SYNC_POLARITY_PASSTHROUGH, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 1, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %155, %149
  %164 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %165 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %171 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* @ADV7511_SYNC_POLARITY_PASSTHROUGH, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 1, i32* %9, align 4
  br label %177

177:                                              ; preds = %176, %169, %163
  br label %178

178:                                              ; preds = %177, %20
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %180 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %179)
  %181 = icmp sle i32 %180, 24
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @ADV7511_LOW_REFRESH_RATE_24HZ, align 4
  store i32 %183, i32* %7, align 4
  br label %200

184:                                              ; preds = %178
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %186 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %185)
  %187 = icmp sle i32 %186, 25
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @ADV7511_LOW_REFRESH_RATE_25HZ, align 4
  store i32 %189, i32* %7, align 4
  br label %199

190:                                              ; preds = %184
  %191 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %192 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %191)
  %193 = icmp sle i32 %192, 30
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @ADV7511_LOW_REFRESH_RATE_30HZ, align 4
  store i32 %195, i32* %7, align 4
  br label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @ADV7511_LOW_REFRESH_RATE_NONE, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %194
  br label %199

199:                                              ; preds = %198, %188
  br label %200

200:                                              ; preds = %199, %182
  %201 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %202 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = shl i32 %204, 1
  %206 = call i32 @regmap_update_bits(i32 %203, i32 251, i32 6, i32 %205)
  %207 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %208 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = shl i32 %210, 6
  %212 = load i32, i32* %8, align 4
  %213 = shl i32 %212, 5
  %214 = or i32 %211, %213
  %215 = call i32 @regmap_update_bits(i32 %209, i32 23, i32 96, i32 %214)
  %216 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %217 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @ADV7533, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %200
  %222 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %223 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %224 = call i32 @adv7533_mode_set(%struct.adv7511* %222, %struct.drm_display_mode* %223)
  br label %225

225:                                              ; preds = %221, %200
  %226 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %227 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %226, i32 0, i32 4
  %228 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %229 = call i32 @drm_mode_copy(i32* %227, %struct.drm_display_mode* %228)
  %230 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %231 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %234 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADV7511_REG_SYNC_DECODER(i32) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @adv7533_mode_set(%struct.adv7511*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_copy(i32*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
