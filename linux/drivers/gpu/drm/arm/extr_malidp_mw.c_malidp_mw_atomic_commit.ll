; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.malidp_hw_device*, %struct.drm_writeback_connector }
%struct.malidp_hw_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*, i32*, i32*, i32, i32, i32, i32, i32*)* }
%struct.drm_writeback_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_atomic_state = type { i32 }
%struct.malidp_mw_connector_state = type { i32, i32*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Enable memwrite %ux%u:%d %pad fmt: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Disable memwrite\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malidp_mw_atomic_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.drm_writeback_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.malidp_hw_device*, align 8
  %9 = alloca %struct.malidp_mw_connector_state*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.malidp_drm*, %struct.malidp_drm** %12, align 8
  store %struct.malidp_drm* %13, %struct.malidp_drm** %5, align 8
  %14 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %15 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %14, i32 0, i32 1
  store %struct.drm_writeback_connector* %15, %struct.drm_writeback_connector** %6, align 8
  %16 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %6, align 8
  %17 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %18, align 8
  store %struct.drm_connector_state* %19, %struct.drm_connector_state** %7, align 8
  %20 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %21 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %20, i32 0, i32 0
  %22 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %21, align 8
  store %struct.malidp_hw_device* %22, %struct.malidp_hw_device** %8, align 8
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %24 = icmp ne %struct.drm_connector_state* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %121

26:                                               ; preds = %2
  %27 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %28 = call %struct.malidp_mw_connector_state* @to_mw_state(%struct.drm_connector_state* %27)
  store %struct.malidp_mw_connector_state* %28, %struct.malidp_mw_connector_state** %9, align 8
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %109

33:                                               ; preds = %26
  %34 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %35 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %37, align 8
  store %struct.drm_framebuffer* %38, %struct.drm_framebuffer** %10, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %43 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %49 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %54 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %58 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_DRIVER(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %52, i32* %56, i32 %59)
  %61 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %6, align 8
  %62 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %63 = call i32 @drm_writeback_queue_job(%struct.drm_writeback_connector* %61, %struct.drm_connector_state* %62)
  %64 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %65 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32 (%struct.malidp_hw_device*, i32*, i32*, i32, i32, i32, i32, i32*)*, i32 (%struct.malidp_hw_device*, i32*, i32*, i32, i32, i32, i32, i32*)** %67, align 8
  %69 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %70 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %71 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %74 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %77 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %80 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %83 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %86 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %89 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %33
  %93 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %94 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  br label %97

96:                                               ; preds = %33
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i32* [ %95, %92 ], [ null, %96 ]
  %99 = call i32 %68(%struct.malidp_hw_device* %69, i32* %72, i32* %75, i32 %78, i32 %81, i32 %84, i32 %87, i32* %98)
  %100 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %101 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %9, align 8
  %108 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %121

109:                                              ; preds = %26
  %110 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %111 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_DRIVER(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %115 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*)** %117, align 8
  %119 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %120 = call i32 %118(%struct.malidp_hw_device* %119)
  br label %121

121:                                              ; preds = %25, %109, %97
  ret void
}

declare dso_local %struct.malidp_mw_connector_state* @to_mw_state(%struct.drm_connector_state*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, ...) #1

declare dso_local i32 @drm_writeback_queue_job(%struct.drm_writeback_connector*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
