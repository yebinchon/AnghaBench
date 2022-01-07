; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__*, i64, %struct.TYPE_13__, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bo*, i32)* @set_placement_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_placement_range(%struct.nouveau_bo* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nouveau_drm* @nouveau_bdev(i32 %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %5, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %2
  %32 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %118

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %118

41:                                               ; preds = %36
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %43 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %47, 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %41
  %51 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  br label %61

58:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %65 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %71, i32 0, i32 2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %80 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %79, i32 0, i32 2
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %62

89:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %93 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %100 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %108 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %97
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %90

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117, %41, %36, %31, %2
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
