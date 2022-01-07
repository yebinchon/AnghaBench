; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_fault_reserve_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_fault_reserve_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.nouveau_drm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.nouveau_bo = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.nvkm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.nvkm_device*, i32)* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*)* @nouveau_ttm_fault_reserve_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_ttm_fault_reserve_notify(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.nouveau_drm* @nouveau_bdev(i32 %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %4, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %15 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %14)
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %5, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = call %struct.nvkm_device* @nvxx_device(%struct.TYPE_16__* %18)
  store %struct.nvkm_device* %19, %struct.nvkm_device** %6, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %23, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = call i64 %24(%struct.nvkm_device* %25, i32 1)
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = ashr i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TTM_PL_VRAM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %1
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %35
  store i32 0, i32* %2, align 4
  br label %151

50:                                               ; preds = %44
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %59 = load i32, i32* @TTM_PL_TT, align 4
  %60 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %58, i32 %59, i32 0)
  %61 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %62 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %61, i32 0, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %151

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %50
  store i32 0, i32* %2, align 4
  br label %151

69:                                               ; preds = %1
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %69
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %84 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %82, %86
  %88 = load i64, i64* %7, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78, %69
  store i32 0, i32* %2, align 4
  br label %151

91:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %115, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %95 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %92
  %100 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %101 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %109 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %108, i32 0, i32 2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i64 %107, i64* %114, align 8
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %92

118:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %142, %118
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %122 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %128 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %136 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i64 %134, i64* %141, align 8
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %119

145:                                              ; preds = %119
  %146 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %147 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %148 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %146, i32 %147, i32 0)
  %149 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %150 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %149, i32 0, i32 0)
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %90, %68, %65, %49
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.nvkm_device* @nvxx_device(%struct.TYPE_16__*) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
