; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_file_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_file_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, %struct.drm_file*)* }

@.str = private unnamed_addr constant [43 x i8] c"pid = %d, device = 0x%lx, open_count = %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4
@DRIVER_HAVE_DMA = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRIVER_SYNCOBJ = common dso_local global i32 0, align 4
@DRIVER_GEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_file_free(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.drm_file*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %2, align 8
  %4 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %5 = icmp ne %struct.drm_file* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %140

7:                                                ; preds = %1
  %8 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @task_pid_nr(i32 %13)
  %15 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %16 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @old_encode_dev(i32 %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %22, i32 %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = load i32, i32* @DRIVER_LEGACY, align 4
  %29 = call i64 @drm_core_check_feature(%struct.drm_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %7
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32 (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, %struct.drm_file*)** %35, align 8
  %37 = icmp ne i32 (%struct.drm_device*, %struct.drm_file*)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32 (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, %struct.drm_file*)** %42, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %46 = call i32 %43(%struct.drm_device* %44, %struct.drm_file* %45)
  br label %47

47:                                               ; preds = %38, %31, %7
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = load i32, i32* @DRIVER_LEGACY, align 4
  %50 = call i64 @drm_core_check_feature(%struct.drm_device* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %55 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @drm_legacy_lock_release(%struct.drm_device* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = load i32, i32* @DRIVER_HAVE_DMA, align 4
  %61 = call i64 @drm_core_check_feature(%struct.drm_device* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %66 = call i32 @drm_legacy_reclaim_buffers(%struct.drm_device* %64, %struct.drm_file* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %69 = call i32 @drm_events_release(%struct.drm_file* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = load i32, i32* @DRIVER_MODESET, align 4
  %72 = call i64 @drm_core_check_feature(%struct.drm_device* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %76 = call i32 @drm_fb_release(%struct.drm_file* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %79 = call i32 @drm_property_destroy_user_blobs(%struct.drm_device* %77, %struct.drm_file* %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = load i32, i32* @DRIVER_SYNCOBJ, align 4
  %83 = call i64 @drm_core_check_feature(%struct.drm_device* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %87 = call i32 @drm_syncobj_release(%struct.drm_file* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %90 = load i32, i32* @DRIVER_GEM, align 4
  %91 = call i64 @drm_core_check_feature(%struct.drm_device* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %96 = call i32 @drm_gem_release(%struct.drm_device* %94, %struct.drm_file* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %99 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %100 = call i32 @drm_legacy_ctxbitmap_flush(%struct.drm_device* %98, %struct.drm_file* %99)
  %101 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %102 = call i64 @drm_is_primary_client(%struct.drm_file* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %106 = call i32 @drm_master_release(%struct.drm_file* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32 (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, %struct.drm_file*)** %111, align 8
  %113 = icmp ne i32 (%struct.drm_device*, %struct.drm_file*)* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32 (%struct.drm_device*, %struct.drm_file*)*, i32 (%struct.drm_device*, %struct.drm_file*)** %118, align 8
  %120 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %121 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %122 = call i32 %119(%struct.drm_device* %120, %struct.drm_file* %121)
  br label %123

123:                                              ; preds = %114, %107
  %124 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %125 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %124, i32 0, i32 2
  %126 = call i32 @drm_prime_destroy_file_private(i32* %125)
  %127 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %128 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %127, i32 0, i32 1
  %129 = call i32 @list_empty(i32* %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @WARN_ON(i32 %132)
  %134 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %135 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @put_pid(i32 %136)
  %138 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %139 = call i32 @kfree(%struct.drm_file* %138)
  br label %140

140:                                              ; preds = %123, %6
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @old_encode_dev(i32) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_legacy_lock_release(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_legacy_reclaim_buffers(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @drm_events_release(%struct.drm_file*) #1

declare dso_local i32 @drm_fb_release(%struct.drm_file*) #1

declare dso_local i32 @drm_property_destroy_user_blobs(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @drm_syncobj_release(%struct.drm_file*) #1

declare dso_local i32 @drm_gem_release(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @drm_legacy_ctxbitmap_flush(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i64 @drm_is_primary_client(%struct.drm_file*) #1

declare dso_local i32 @drm_master_release(%struct.drm_file*) #1

declare dso_local i32 @drm_prime_destroy_file_private(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @kfree(%struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
