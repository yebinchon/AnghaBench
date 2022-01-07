; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_init_restarts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_init_restarts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_tv_dac* }
%struct.radeon_encoder_tv_dac = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32, i32, i32, i32 }
%struct.radeon_tv_mode_constants = type { i32, i32, i32, i32, i64 }

@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@TV_STD_PAL_60 = common dso_local global i64 0, align 8
@NTSC_TV_VFTOTAL = common dso_local global i32 0, align 4
@PAL_TV_VFTOTAL = common dso_local global i32 0, align 4
@H_POS_UNIT = common dso_local global i32 0, align 4
@hor_timing_NTSC = common dso_local global i64* null, align 8
@H_TABLE_POS1 = common dso_local global i64 0, align 8
@H_TABLE_POS2 = common dso_local global i64 0, align 8
@hor_timing_PAL = common dso_local global i64* null, align 8
@NTSC_TV_LINES_PER_FRAME = common dso_local global i64 0, align 8
@PAL_TV_LINES_PER_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"compute_restarts: def = %u h = %d v = %d, p1 = %04x, p2 = %04x, restart = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"compute_restart: F/H/V=%u,%u,%u\0A\00", align 1
@NTSC_TV_CLOCK_T = common dso_local global i32 0, align 4
@NTSC_TV_ZERO_H_SIZE = common dso_local global i64 0, align 8
@PAL_TV_CLOCK_T = common dso_local global i32 0, align 4
@PAL_TV_ZERO_H_SIZE = common dso_local global i64 0, align 8
@RADEON_H_INC_MASK = common dso_local global i32 0, align 4
@RADEON_H_INC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"compute_restart: h_size = %d h_inc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @radeon_legacy_tv_init_restarts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_legacy_tv_init_restarts(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.radeon_tv_mode_constants*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %4, align 8
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 0
  %21 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %20, align 8
  store %struct.radeon_encoder_tv_dac* %21, %struct.radeon_encoder_tv_dac** %5, align 8
  %22 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %23 = call %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %22, i32* null)
  store %struct.radeon_tv_mode_constants* %23, %struct.radeon_tv_mode_constants** %16, align 8
  %24 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %25 = icmp ne %struct.radeon_tv_mode_constants* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %341

27:                                               ; preds = %1
  %28 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %29 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %32 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TV_STD_NTSC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %27
  %40 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TV_STD_NTSC_J, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TV_STD_PAL_M, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TV_STD_PAL_60, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45, %39, %27
  %58 = load i32, i32* @NTSC_TV_VFTOTAL, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @PAL_TV_VFTOTAL, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @H_POS_UNIT, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TV_STD_NTSC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %63
  %75 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TV_STD_NTSC_J, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TV_STD_PAL_M, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80, %74, %63
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 50
  store i32 %88, i32* %11, align 4
  %89 = load i64*, i64** @hor_timing_NTSC, align 8
  %90 = load i64, i64* @H_TABLE_POS1, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  %93 = load i64*, i64** @hor_timing_NTSC, align 8
  %94 = load i64, i64* @H_TABLE_POS2, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %13, align 8
  br label %106

97:                                               ; preds = %80
  %98 = load i64*, i64** @hor_timing_PAL, align 8
  %99 = load i64, i64* @H_TABLE_POS1, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %12, align 8
  %102 = load i64*, i64** @hor_timing_PAL, align 8
  %103 = load i64, i64* @H_TABLE_POS2, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %97, %86
  %107 = load i64, i64* %12, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @H_TABLE_POS1, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %117, %124
  br i1 %125, label %136, label %126

126:                                              ; preds = %106
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @H_TABLE_POS2, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %127, %134
  br label %136

136:                                              ; preds = %126, %106
  %137 = phi i1 [ true, %106 ], [ %135, %126 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %15, align 4
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %141 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @H_TABLE_POS1, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %139, i64* %145, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @H_TABLE_POS2, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  store i64 %146, i64* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %155 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = mul nsw i32 %153, %157
  %159 = sdiv i32 %158, 1000
  store i32 %159, i32* %11, align 4
  %160 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %161 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %6, align 4
  %163 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %164 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TV_STD_NTSC, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %186, label %168

168:                                              ; preds = %136
  %169 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %170 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @TV_STD_NTSC_J, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %176 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TV_STD_PAL_M, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %182 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TV_STD_PAL_60, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %180, %174, %168, %136
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = mul i32 %187, %188
  %190 = mul nsw i32 %189, 2
  %191 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %192 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %190, %193
  %195 = load i64, i64* @NTSC_TV_LINES_PER_FRAME, align 8
  %196 = trunc i64 %195 to i32
  %197 = sdiv i32 %194, %196
  store i32 %197, i32* %10, align 4
  br label %210

198:                                              ; preds = %180
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %7, align 4
  %201 = mul i32 %199, %200
  %202 = mul nsw i32 %201, 2
  %203 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %204 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  %207 = load i64, i64* @PAL_TV_LINES_PER_FRAME, align 8
  %208 = trunc i64 %207 to i32
  %209 = sdiv i32 %206, %208
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %198, %186
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, %213
  store i32 %215, i32* %6, align 4
  %216 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %217 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %220 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %224 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load i64, i64* %12, align 8
  %227 = load i64, i64* %13, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %218, i64 %222, i32 %225, i64 %226, i64 %227, i32 %228)
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = urem i32 %230, %231
  %233 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %234 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  store i32 %232, i32* %235, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %6, align 4
  %238 = udiv i32 %237, %236
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %8, align 4
  %241 = urem i32 %239, %240
  %242 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %243 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %6, align 4
  %247 = udiv i32 %246, %245
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %9, align 4
  %250 = urem i32 %248, %249
  %251 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %252 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  store i32 %250, i32* %253, align 8
  %254 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %255 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %259 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = zext i32 %261 to i64
  %263 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %264 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %257, i64 %262, i32 %266)
  %268 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %269 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @TV_STD_NTSC, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %285, label %273

273:                                              ; preds = %210
  %274 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %275 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @TV_STD_NTSC_J, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %285, label %279

279:                                              ; preds = %273
  %280 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %281 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @TV_STD_PAL_M, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %302

285:                                              ; preds = %279, %273, %210
  %286 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %287 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %288, 4096
  %290 = load i32, i32* @NTSC_TV_CLOCK_T, align 4
  %291 = mul nsw i32 %289, %290
  %292 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %293 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i64, i64* @NTSC_TV_ZERO_H_SIZE, align 8
  %296 = trunc i64 %295 to i32
  %297 = sext i32 %296 to i64
  %298 = trunc i64 %297 to i32
  %299 = mul nsw i32 %294, %298
  %300 = sdiv i32 %291, %299
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %14, align 8
  br label %319

302:                                              ; preds = %279
  %303 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %16, align 8
  %304 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %305, 4096
  %307 = load i32, i32* @PAL_TV_CLOCK_T, align 4
  %308 = mul nsw i32 %306, %307
  %309 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %310 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load i64, i64* @PAL_TV_ZERO_H_SIZE, align 8
  %313 = trunc i64 %312 to i32
  %314 = sext i32 %313 to i64
  %315 = trunc i64 %314 to i32
  %316 = mul nsw i32 %311, %315
  %317 = sdiv i32 %308, %316
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %14, align 8
  br label %319

319:                                              ; preds = %302, %285
  %320 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %321 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @RADEON_H_INC_MASK, align 4
  %325 = xor i32 %324, -1
  %326 = and i32 %323, %325
  %327 = load i64, i64* %14, align 8
  %328 = trunc i64 %327 to i32
  %329 = load i32, i32* @RADEON_H_INC_SHIFT, align 4
  %330 = shl i32 %328, %329
  %331 = or i32 %326, %330
  %332 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %333 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 4
  store i32 %331, i32* %334, align 4
  %335 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %336 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load i64, i64* %14, align 8
  %339 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %337, i64 %338)
  %340 = load i32, i32* %15, align 4
  store i32 %340, i32* %2, align 4
  br label %341

341:                                              ; preds = %319, %26
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
