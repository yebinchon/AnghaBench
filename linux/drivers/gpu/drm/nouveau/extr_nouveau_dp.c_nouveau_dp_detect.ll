; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dp.c_nouveau_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_encoder = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.nvkm_i2c_aux*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_MAX_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"display: %dx%d dpcd 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"encoder: %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"maximum: %dx%d\0A\00", align 1
@nouveau_mst = common dso_local global i32 0, align 4
@NOUVEAU_DP_MST = common dso_local global i32 0, align 4
@NOUVEAU_DP_SST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dp_detect(%struct.nouveau_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nvkm_i2c_aux*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.nouveau_encoder* %0, %struct.nouveau_encoder** %3, align 8
  %9 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %5, align 8
  %16 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %16, i32 0, i32 2
  %18 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %17, align 8
  store %struct.nvkm_i2c_aux* %18, %struct.nvkm_i2c_aux** %6, align 8
  %19 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %20 = icmp ne %struct.nvkm_i2c_aux* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %149

24:                                               ; preds = %1
  %25 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %26 = load i32, i32* @DP_DPCD_REV, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %28 = call i32 @nvkm_rdaux(%struct.nvkm_i2c_aux* %25, i32 %26, i32* %27, i32 32)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %149

33:                                               ; preds = %24
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 27000, %35
  %37 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %38 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DP_MAX_LANE_COUNT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %45 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %48 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %53 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55, i32 %57)
  %59 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %60 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %67 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %71)
  %73 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %74 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %80 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %33
  %85 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %86 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %92 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %84, %33
  %95 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %96 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %102 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %108 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %114 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %106, %94
  %117 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %118 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %119 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %123 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %125)
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %130 = call i32 @nouveau_dp_probe_oui(%struct.drm_device* %127, %struct.nvkm_i2c_aux* %128, i32* %129)
  %131 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %132 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* @nouveau_mst, align 4
  %137 = call i32 @nv50_mstm_detect(i32 %134, i32* %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %116
  %141 = load i32, i32* @NOUVEAU_DP_MST, align 4
  store i32 %141, i32* %2, align 4
  br label %149

142:                                              ; preds = %116
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @NOUVEAU_DP_SST, align 4
  store i32 %146, i32* %2, align 4
  br label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %145, %140, %31, %21
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvkm_rdaux(%struct.nvkm_i2c_aux*, i32, i32*, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, ...) #1

declare dso_local i32 @nouveau_dp_probe_oui(%struct.drm_device*, %struct.nvkm_i2c_aux*, i32*) #1

declare dso_local i32 @nv50_mstm_detect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
