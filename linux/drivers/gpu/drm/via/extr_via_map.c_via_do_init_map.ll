; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_map.c_via_do_init_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_map.c_via_do_init_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i32*, i8*, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"could not find sarea!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not find framebuffer!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not find mmio region!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_7__*)* @via_do_init_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_do_init_map(%struct.drm_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.TYPE_8__* @drm_legacy_getsarea(%struct.drm_device* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = bitcast %struct.TYPE_6__* %21 to i8*
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = call i32 @via_do_cleanup_map(%struct.drm_device* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %2
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @drm_legacy_findmap(%struct.drm_device* %31, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %30
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = bitcast %struct.TYPE_6__* %44 to i8*
  %46 = bitcast i8* %45 to %struct.TYPE_6__*
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = call i32 @via_do_cleanup_map(%struct.drm_device* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %104

53:                                               ; preds = %30
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @drm_legacy_findmap(%struct.drm_device* %54, i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %53
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = bitcast %struct.TYPE_6__* %67 to i8*
  %69 = bitcast i8* %68 to %struct.TYPE_6__*
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = call i32 @via_do_cleanup_map(%struct.drm_device* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %104

76:                                               ; preds = %53
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = call i32 @via_init_futex(%struct.TYPE_6__* %95)
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = call i32 @via_init_dmablit(%struct.drm_device* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = bitcast %struct.TYPE_6__* %99 to i8*
  %101 = bitcast i8* %100 to %struct.TYPE_6__*
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %102, i32 0, i32 0
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %76, %65, %42, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.TYPE_8__* @drm_legacy_getsarea(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @via_do_cleanup_map(%struct.drm_device*) #1

declare dso_local i8* @drm_legacy_findmap(%struct.drm_device*, i32) #1

declare dso_local i32 @via_init_futex(%struct.TYPE_6__*) #1

declare dso_local i32 @via_init_dmablit(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
