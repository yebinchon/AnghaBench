; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.repaper_epd = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.spi_device* }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"timeout waiting for panel to become ready.\0A\00", align 1
@REPAPER_RID_G2_COG_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to read chip (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"wrong COG ID 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"panel is reported broken\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dc/dc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @repaper_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.repaper_epd*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %14 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %15 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.repaper_epd* @drm_to_epd(i32 %17)
  store %struct.repaper_epd* %18, %struct.repaper_epd** %7, align 8
  %19 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %20 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %19, i32 0, i32 8
  %21 = load %struct.spi_device*, %struct.spi_device** %20, align 8
  store %struct.spi_device* %21, %struct.spi_device** %8, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %25 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drm_dev_enter(i32 %27, i32* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %228

31:                                               ; preds = %3
  %32 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %34 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpiod_set_value_cansleep(i64 %35, i32 0)
  %37 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %38 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gpiod_set_value_cansleep(i64 %39, i32 0)
  %41 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %42 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value_cansleep(i64 %43, i32 0)
  %45 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %46 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %51 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gpiod_set_value_cansleep(i64 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %31
  %55 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %56 = call i32 @repaper_spi_mosi_low(%struct.spi_device* %55)
  %57 = call i32 @usleep_range(i32 5000, i32 10000)
  %58 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %59 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @gpiod_set_value_cansleep(i64 %60, i32 1)
  %62 = call i32 @usleep_range(i32 10000, i32 15000)
  %63 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %64 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @gpiod_set_value_cansleep(i64 %65, i32 1)
  %67 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %68 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %73 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gpiod_set_value_cansleep(i64 %74, i32 1)
  br label %76

76:                                               ; preds = %71, %54
  %77 = call i32 @usleep_range(i32 5000, i32 10000)
  %78 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %79 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @gpiod_set_value_cansleep(i64 %80, i32 0)
  %82 = call i32 @usleep_range(i32 5000, i32 10000)
  %83 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %84 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @gpiod_set_value_cansleep(i64 %85, i32 1)
  %87 = call i32 @usleep_range(i32 5000, i32 10000)
  store i32 100, i32* %11, align 4
  br label %88

88:                                               ; preds = %100, %76
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %93 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @gpiod_get_value_cansleep(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  %99 = call i32 @usleep_range(i32 10, i32 100)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  br label %88

103:                                              ; preds = %97, %88
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %110 = call i32 @power_off(%struct.repaper_epd* %109)
  br label %225

111:                                              ; preds = %103
  %112 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %113 = call i32 @repaper_read_id(%struct.spi_device* %112)
  %114 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %115 = call i32 @repaper_read_id(%struct.spi_device* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @REPAPER_RID_G2_COG_ID, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.device*, %struct.device** %9, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %130

126:                                              ; preds = %119
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %132 = call i32 @power_off(%struct.repaper_epd* %131)
  br label %225

133:                                              ; preds = %111
  %134 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %135 = call i32 @repaper_write_val(%struct.spi_device* %134, i32 2, i32 64)
  %136 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %137 = call i32 @repaper_read_val(%struct.spi_device* %136, i32 15)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, 128
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %140, %133
  %145 = load i32, i32* %12, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.device*, %struct.device** %9, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %154

151:                                              ; preds = %144
  %152 = load %struct.device*, %struct.device** %9, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %147
  %155 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %156 = call i32 @power_off(%struct.repaper_epd* %155)
  br label %225

157:                                              ; preds = %140
  %158 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %159 = call i32 @repaper_write_val(%struct.spi_device* %158, i32 11, i32 2)
  %160 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %161 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %162 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @repaper_write_buf(%struct.spi_device* %160, i32 1, i32 %163, i32 8)
  %165 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %166 = call i32 @repaper_write_val(%struct.spi_device* %165, i32 7, i32 209)
  %167 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %168 = call i32 @repaper_write_val(%struct.spi_device* %167, i32 8, i32 2)
  %169 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %170 = call i32 @repaper_write_val(%struct.spi_device* %169, i32 9, i32 194)
  %171 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %172 = call i32 @repaper_write_val(%struct.spi_device* %171, i32 4, i32 3)
  %173 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %174 = call i32 @repaper_write_val(%struct.spi_device* %173, i32 3, i32 1)
  %175 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %176 = call i32 @repaper_write_val(%struct.spi_device* %175, i32 3, i32 0)
  %177 = call i32 @usleep_range(i32 5000, i32 10000)
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %207, %157
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %183 = call i32 @repaper_write_val(%struct.spi_device* %182, i32 5, i32 1)
  %184 = call i32 @msleep(i32 240)
  %185 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %186 = call i32 @repaper_write_val(%struct.spi_device* %185, i32 5, i32 3)
  %187 = call i32 @msleep(i32 40)
  %188 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %189 = call i32 @repaper_write_val(%struct.spi_device* %188, i32 5, i32 15)
  %190 = call i32 @msleep(i32 40)
  %191 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %192 = call i32 @repaper_read_val(%struct.spi_device* %191, i32 15)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %181
  %196 = load %struct.device*, %struct.device** %9, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %200 = call i32 @power_off(%struct.repaper_epd* %199)
  br label %225

201:                                              ; preds = %181
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, 64
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %10, align 4
  br label %210

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %178

210:                                              ; preds = %205, %178
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %210
  %214 = load %struct.device*, %struct.device** %9, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %216 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %217 = call i32 @power_off(%struct.repaper_epd* %216)
  br label %225

218:                                              ; preds = %210
  %219 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %220 = call i32 @repaper_write_val(%struct.spi_device* %219, i32 2, i32 4)
  %221 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %222 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %224 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %223, i32 0, i32 1
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %218, %213, %195, %154, %130, %106
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @drm_dev_exit(i32 %226)
  br label %228

228:                                              ; preds = %225, %30
  ret void
}

declare dso_local %struct.repaper_epd* @drm_to_epd(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @repaper_spi_mosi_low(%struct.spi_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @power_off(%struct.repaper_epd*) #1

declare dso_local i32 @repaper_read_id(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @repaper_write_val(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @repaper_read_val(%struct.spi_device*, i32) #1

declare dso_local i32 @repaper_write_buf(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
