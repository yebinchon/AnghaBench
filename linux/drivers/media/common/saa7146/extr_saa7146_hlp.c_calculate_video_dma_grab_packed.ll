; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calculate_video_dma_grab_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calculate_video_dma_grab_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.saa7146_buf = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.saa7146_video_dma = type { i32, i32, i64, i64, i64, i64 }
%struct.saa7146_format = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"[size=%dx%d,fields=%s]\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@ME1 = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_buf*)* @calculate_video_dma_grab_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_buf*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_video_dma, align 8
  %7 = alloca %struct.saa7146_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %4, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %5, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %17 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %16, i32 %21)
  store %struct.saa7146_format* %22, %struct.saa7146_format** %7, align 8
  %23 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %24 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %29 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %34 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %39 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %44 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** @v4l2_field_names, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DEB_CAP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %2
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 2
  %59 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  br label %67

60:                                               ; preds = %2
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 2
  %65 = sdiv i32 %64, 8
  %66 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %56
  %68 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %69 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 16
  %74 = sext i32 %73 to i64
  %75 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 5
  store i64 %80, i64* %81, align 8
  %82 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %83 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ME1, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %91 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %89, %92
  %94 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %96 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 0, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %67
  %100 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %101 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  store i64 %105, i64* %106, align 8
  %107 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %108 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sdiv i32 %114, 2
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %112, %118
  %120 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %122, %126
  %128 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %127, i64* %128, align 8
  br label %159

129:                                              ; preds = %67
  %130 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %131 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %138, %142
  %144 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %143, i64* %144, align 8
  %145 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %146 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %152, 2
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %150, %156
  %158 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  store i64 %157, i64* %158, align 8
  br label %159

159:                                              ; preds = %129, %99
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %227

164:                                              ; preds = %159
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %170 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %176, i64* %177, align 8
  %178 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sdiv i32 %179, 2
  store i32 %180, i32* %178, align 8
  br label %198

181:                                              ; preds = %168
  %182 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %183 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %189, i64* %190, align 8
  %191 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %192, i64* %193, align 8
  %194 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sdiv i32 %195, 2
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %187, %181
  br label %198

198:                                              ; preds = %197, %174
  br label %226

199:                                              ; preds = %164
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %205, i64* %206, align 8
  %207 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sdiv i32 %208, 2
  store i32 %209, i32* %207, align 8
  br label %225

210:                                              ; preds = %199
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %216, i64* %217, align 8
  %218 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %219, i64* %220, align 8
  %221 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sdiv i32 %222, 2
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %214, %210
  br label %225

225:                                              ; preds = %224, %203
  br label %226

226:                                              ; preds = %225, %198
  br label %227

227:                                              ; preds = %226, %163
  %228 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %229 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 0, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %234, -1
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %232, %227
  %237 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %238 = call i32 @saa7146_write_out_dma(%struct.saa7146_dev* %237, i32 1, %struct.saa7146_video_dma* %6)
  ret i32 0
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_CAP(i8*, i32, i32, i32) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa7146_write_out_dma(%struct.saa7146_dev*, i32, %struct.saa7146_video_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
