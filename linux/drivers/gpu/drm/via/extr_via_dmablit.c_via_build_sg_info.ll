; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_build_sg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_build_sg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@dr_via_sg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Zero size bitblt.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Too large system memory stride. Stride: %d, Length: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Too large PCI DMA bitblt.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid frame-buffer / memory stride.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Invalid DRM bitblt alignment.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not lock DMA pages.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Could not allocate DMA descriptor pages.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @via_build_sg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_build_sg_info(%struct.drm_device* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @dr_via_sg_init, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %19
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %208

41:                                               ; preds = %32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = mul nsw i32 2, %49
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %208

62:                                               ; preds = %41
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %62
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %70
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %78, %70, %62
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 2048
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = icmp sgt i32 %110, 16777216
  br i1 %111, label %112, label %116

112:                                              ; preds = %103, %98
  %113 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %208

116:                                              ; preds = %103
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %133, label %124

124:                                              ; preds = %116
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @abs(i32 %127) #3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124, %116
  %134 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %208

137:                                              ; preds = %124
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = and i64 %140, 15
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %166, label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %146, 3
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %166, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 15
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 3
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160, %154, %143, %137
  %167 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %208

170:                                              ; preds = %160, %149
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %173 = call i32 @via_lock_all_dma_pages(%struct.TYPE_11__* %171, %struct.TYPE_12__* %172)
  store i32 %173, i32* %9, align 4
  %174 = icmp ne i32 0, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %178 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = call i32 @via_free_sg_info(i32 %179, %struct.TYPE_11__* %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %4, align 4
  br label %208

183:                                              ; preds = %170
  %184 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %185 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = call i32 @via_map_blit_for_device(i32 %186, %struct.TYPE_12__* %187, %struct.TYPE_11__* %188, i32 0)
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = call i32 @via_alloc_desc_pages(%struct.TYPE_11__* %190)
  store i32 %191, i32* %9, align 4
  %192 = icmp ne i32 0, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %183
  %194 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %195 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %196 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = call i32 @via_free_sg_info(i32 %197, %struct.TYPE_11__* %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %4, align 4
  br label %208

201:                                              ; preds = %183
  %202 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %203 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %207 = call i32 @via_map_blit_for_device(i32 %204, %struct.TYPE_12__* %205, %struct.TYPE_11__* %206, i32 1)
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %201, %193, %175, %166, %133, %112, %52, %37
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @via_lock_all_dma_pages(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @via_free_sg_info(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @via_map_blit_for_device(i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @via_alloc_desc_pages(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
