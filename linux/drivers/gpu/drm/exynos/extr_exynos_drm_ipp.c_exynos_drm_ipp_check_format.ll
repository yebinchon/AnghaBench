; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { i32, i32 }
%struct.exynos_drm_ipp_buffer = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.exynos_drm_ipp_formats = type { i32, i32 }

@DRM_EXYNOS_IPP_FORMAT_SOURCE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_FORMAT_DESTINATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Task %pK: %s format not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer*, i32, i32)* @exynos_drm_ipp_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_ipp_check_format(%struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer* %2, %struct.exynos_drm_ipp_buffer* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.exynos_drm_ipp_task*, align 8
  %9 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %10 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %11 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.exynos_drm_ipp_formats*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_task** %8, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %9, align 8
  store %struct.exynos_drm_ipp_buffer* %2, %struct.exynos_drm_ipp_buffer** %10, align 8
  store %struct.exynos_drm_ipp_buffer* %3, %struct.exynos_drm_ipp_buffer** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %8, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %30 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %10, align 8
  %31 = icmp eq %struct.exynos_drm_ipp_buffer* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @DRM_EXYNOS_IPP_FORMAT_SOURCE, align 4
  br label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @DRM_EXYNOS_IPP_FORMAT_DESTINATION, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call %struct.exynos_drm_ipp_formats* @__ipp_format_get(i32 %20, i32 %24, i32 %28, i32 %37)
  store %struct.exynos_drm_ipp_formats* %38, %struct.exynos_drm_ipp_formats** %14, align 8
  %39 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %14, align 8
  %40 = icmp ne %struct.exynos_drm_ipp_formats* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %8, align 8
  %43 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %8, align 8
  %46 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %47 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %10, align 8
  %48 = icmp eq %struct.exynos_drm_ipp_buffer* %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.exynos_drm_ipp_task* %45, i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %235

54:                                               ; preds = %36
  %55 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %235

69:                                               ; preds = %60
  %70 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_4__* @drm_format_info(i32 %73)
  %75 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %75, i32 0, i32 2
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %172, %69
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %80 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %175

85:                                               ; preds = %77
  %86 = load i32, i32* %16, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %90 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  br label %104

93:                                               ; preds = %85
  %94 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %95 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %99 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DIV_ROUND_UP(i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %93, %88
  %105 = phi i32 [ %92, %88 ], [ %103, %93 ]
  store i32 %105, i32* %17, align 4
  %106 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %107 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %104
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %118 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = mul i32 %116, %125
  %127 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %128 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %126, i32* %133, align 4
  br label %134

134:                                              ; preds = %115, %104
  %135 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %136 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %145 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul i32 %143, %152
  %154 = icmp ult i32 %142, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %134
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %235

158:                                              ; preds = %134
  %159 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %160 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %158
  %169 = load i32, i32* @ENOENT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %235

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %77

175:                                              ; preds = %77
  %176 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %177 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %180, 2
  br i1 %181, label %182, label %199

182:                                              ; preds = %175
  %183 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %184 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %190 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %188, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %7, align 4
  br label %235

199:                                              ; preds = %182, %175
  %200 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %201 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %14, align 8
  %202 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %14, align 8
  %205 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %9, align 8
  %209 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %11, align 8
  %210 = icmp eq %struct.exynos_drm_ipp_buffer* %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %199
  %212 = load i32, i32* %13, align 4
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %211
  %215 = phi i32 [ %212, %211 ], [ 0, %213 ]
  %216 = call i32 @exynos_drm_ipp_check_size_limits(%struct.exynos_drm_ipp_buffer* %200, i32 %203, i32 %206, i32 %207, i32 %215)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* %15, align 4
  store i32 %220, i32* %7, align 4
  br label %235

221:                                              ; preds = %214
  %222 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %10, align 8
  %223 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %222, i32 0, i32 0
  %224 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %11, align 8
  %225 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %224, i32 0, i32 0
  %226 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %14, align 8
  %227 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %14, align 8
  %230 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @exynos_drm_ipp_check_scale_limits(i32* %223, i32* %225, i32 %228, i32 %231, i32 %232)
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %221, %219, %196, %168, %155, %66, %41
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local %struct.exynos_drm_ipp_formats* @__ipp_format_get(i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, %struct.exynos_drm_ipp_task*, i8*) #1

declare dso_local %struct.TYPE_4__* @drm_format_info(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @exynos_drm_ipp_check_size_limits(%struct.exynos_drm_ipp_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @exynos_drm_ipp_check_scale_limits(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
