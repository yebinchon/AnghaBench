; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)*, i32 (%struct.timing_generator*, i32, i32, i32, i32)* }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.optc = type { i32, i32, i32, i32, i32, i32 }

@H_TIMING_NO_DIV = common dso_local global i32 0, align 4
@OTG_H_TOTAL = common dso_local global i32 0, align 4
@OTG_H_SYNC_A = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_START = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START = common dso_local global i32 0, align 4
@OTG_H_BLANK_END = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_CNTL = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_POL = common dso_local global i32 0, align 4
@OTG_V_TOTAL = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MAX = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MIN = common dso_local global i32 0, align 4
@OTG_V_SYNC_A = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_START = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_V_BLANK_END = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_POL = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@OTG_INTERLACE_CONTROL = common dso_local global i32 0, align 4
@OTG_INTERLACE_ENABLE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@VTG0_ENABLE = common dso_local global i32 0, align 4
@OTG_CONTROL = common dso_local global i32 0, align 4
@OTG_START_POINT_CNTL = common dso_local global i32 0, align 4
@OTG_FIELD_NUMBER_CNTL = common dso_local global i32 0, align 4
@H_TIMING_DIV_BY2 = common dso_local global i32 0, align 4
@OTG_H_TIMING_CNTL = common dso_local global i32 0, align 4
@OTG_H_TIMING_DIV_BY2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_program_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.timing_generator*, align 8
  %10 = alloca %struct.dc_crtc_timing*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dc_crtc_timing, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %9, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %28 = load i32, i32* @H_TIMING_NO_DIV, align 4
  store i32 %28, i32* %26, align 4
  %29 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %30 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %29)
  store %struct.optc* %30, %struct.optc** %27, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.optc*, %struct.optc** %27, align 8
  %33 = getelementptr inbounds %struct.optc, %struct.optc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.optc*, %struct.optc** %27, align 8
  %36 = getelementptr inbounds %struct.optc, %struct.optc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.optc*, %struct.optc** %27, align 8
  %39 = getelementptr inbounds %struct.optc, %struct.optc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.optc*, %struct.optc** %27, align 8
  %42 = getelementptr inbounds %struct.optc, %struct.optc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.optc*, %struct.optc** %27, align 8
  %45 = getelementptr inbounds %struct.optc, %struct.optc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %47 = bitcast %struct.dc_crtc_timing* %17 to i8*
  %48 = bitcast %struct.dc_crtc_timing* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 72, i1 false)
  %49 = call i32 @apply_front_porch_workaround(%struct.dc_crtc_timing* %17)
  %50 = load i32, i32* @OTG_H_TOTAL, align 4
  %51 = load i32, i32* @OTG_H_TOTAL, align 4
  %52 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @REG_SET(i32 %50, i32 0, i32 %51, i32 %54)
  %56 = load i32, i32* @OTG_H_SYNC_A, align 4
  %57 = load i32, i32* @OTG_H_SYNC_A_START, align 4
  %58 = load i32, i32* @OTG_H_SYNC_A_END, align 4
  %59 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_UPDATE_2(i32 %56, i32 %57, i32 0, i32 %58, i32 %60)
  %62 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %73, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* @OTG_H_BLANK_START_END, align 4
  %78 = load i32, i32* @OTG_H_BLANK_START, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @OTG_H_BLANK_END, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @REG_UPDATE_2(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 12
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* @OTG_H_SYNC_A_CNTL, align 4
  %90 = load i32, i32* @OTG_H_SYNC_A_POL, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @REG_UPDATE(i32 %89, i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* @OTG_V_TOTAL, align 4
  %97 = load i32, i32* @OTG_V_TOTAL, align 4
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @REG_SET(i32 %96, i32 0, i32 %97, i32 %98)
  %100 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %101 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @REG_SET(i32 %100, i32 0, i32 %101, i32 %102)
  %104 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %105 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @REG_SET(i32 %104, i32 0, i32 %105, i32 %106)
  %108 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* @OTG_V_SYNC_A, align 4
  %111 = load i32, i32* @OTG_V_SYNC_A_START, align 4
  %112 = load i32, i32* @OTG_V_SYNC_A_END, align 4
  %113 = load i32, i32* %21, align 4
  %114 = call i32 @REG_UPDATE_2(i32 %110, i32 %111, i32 0, i32 %112, i32 %113)
  %115 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %116, %118
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %120, %122
  %124 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %123, %125
  %127 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %126, %128
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* @OTG_V_BLANK_START_END, align 4
  %131 = load i32, i32* @OTG_V_BLANK_START, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @OTG_V_BLANK_END, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @REG_UPDATE_2(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 12
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 0, i32 1
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* @OTG_V_SYNC_A_CNTL, align 4
  %143 = load i32, i32* @OTG_V_SYNC_A_POL, align 4
  %144 = load i32, i32* %23, align 4
  %145 = call i32 @REG_UPDATE(i32 %142, i32 %143, i32 %144)
  %146 = load %struct.optc*, %struct.optc** %27, align 8
  %147 = getelementptr inbounds %struct.optc, %struct.optc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %166, label %152

152:                                              ; preds = %8
  %153 = load %struct.optc*, %struct.optc** %27, align 8
  %154 = getelementptr inbounds %struct.optc, %struct.optc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.optc*, %struct.optc** %27, align 8
  %161 = getelementptr inbounds %struct.optc, %struct.optc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %159, %152, %8
  store i32 1, i32* %24, align 4
  %167 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 12
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 1, i32* %25, align 4
  br label %172

172:                                              ; preds = %171, %166
  br label %173

173:                                              ; preds = %172, %159
  %174 = load i32, i32* @OTG_INTERLACE_CONTROL, align 4
  %175 = call i64 @REG(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 12
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @OTG_INTERLACE_CONTROL, align 4
  %184 = load i32, i32* @OTG_INTERLACE_ENABLE, align 4
  %185 = call i32 @REG_UPDATE(i32 %183, i32 %184, i32 1)
  br label %190

186:                                              ; preds = %177
  %187 = load i32, i32* @OTG_INTERLACE_CONTROL, align 4
  %188 = load i32, i32* @OTG_INTERLACE_ENABLE, align 4
  %189 = call i32 @REG_UPDATE(i32 %187, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* @CONTROL, align 4
  %193 = load i32, i32* @VTG0_ENABLE, align 4
  %194 = call i32 @REG_UPDATE(i32 %192, i32 %193, i32 0)
  %195 = load i32, i32* @OTG_CONTROL, align 4
  %196 = load i32, i32* @OTG_START_POINT_CNTL, align 4
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* @OTG_FIELD_NUMBER_CNTL, align 4
  %199 = load i32, i32* %25, align 4
  %200 = call i32 @REG_UPDATE_2(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %202 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32 (%struct.timing_generator*, i32, i32, i32, i32)*, i32 (%struct.timing_generator*, i32, i32, i32, i32)** %204, align 8
  %206 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = call i32 %205(%struct.timing_generator* %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %213 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)*, i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)** %215, align 8
  %217 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %218 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %219 = call i32 %216(%struct.timing_generator* %217, %struct.dc_crtc_timing* %218)
  %220 = call i64 @optc1_is_two_pixels_per_containter(%struct.dc_crtc_timing* %17)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %191
  %223 = load %struct.optc*, %struct.optc** %27, align 8
  %224 = getelementptr inbounds %struct.optc, %struct.optc* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %229

227:                                              ; preds = %222, %191
  %228 = load i32, i32* @H_TIMING_DIV_BY2, align 4
  store i32 %228, i32* %26, align 4
  br label %229

229:                                              ; preds = %227, %222
  %230 = load i32, i32* @OTG_H_TIMING_CNTL, align 4
  %231 = load i32, i32* @OTG_H_TIMING_DIV_BY2, align 4
  %232 = load i32, i32* %26, align 4
  %233 = call i32 @REG_UPDATE(i32 %230, i32 %231, i32 %232)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @apply_front_porch_workaround(%struct.dc_crtc_timing*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i64 @optc1_is_two_pixels_per_containter(%struct.dc_crtc_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
