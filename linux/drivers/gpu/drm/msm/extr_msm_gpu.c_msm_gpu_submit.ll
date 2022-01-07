; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_6__ = type { i32 (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private*, i32 }
%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_5__*, i32, i32, i64, %struct.msm_ringbuffer* }
%struct.TYPE_5__ = type { i32, %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32, %struct.msm_gpu* }
%struct.msm_ringbuffer = type { i32, i64 }
%struct.msm_file_private = type { i32 }

@MSM_SUBMIT_BO_WRITE = common dso_local global i32 0, align 4
@MSM_SUBMIT_BO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gpu_submit(%struct.msm_gpu* %0, %struct.msm_gem_submit* %1, %struct.msm_file_private* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_gem_submit*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.msm_ringbuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_gem_submit* %1, %struct.msm_gem_submit** %5, align 8
  store %struct.msm_file_private* %2, %struct.msm_file_private** %6, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  store %struct.msm_drm_private* %18, %struct.msm_drm_private** %8, align 8
  %19 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %20 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %19, i32 0, i32 6
  %21 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %20, align 8
  store %struct.msm_ringbuffer* %21, %struct.msm_ringbuffer** %9, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_is_locked(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %30 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_get_sync(i32* %32)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %35 = call i32 @msm_gpu_hw_init(%struct.msm_gpu* %34)
  %36 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %37 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %41 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %43 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %42, i32 0, i32 4
  %44 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %45 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %48 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %51 = call i32 @msm_rd_dump_submit(i32 %49, %struct.msm_gem_submit* %50, i32* null)
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %53 = call i32 @update_sw_cntrs(%struct.msm_gpu* %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %132, %3
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %57 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %62 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.msm_gem_object*, %struct.msm_gem_object** %67, align 8
  store %struct.msm_gem_object* %68, %struct.msm_gem_object** %11, align 8
  %69 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %70 = call i64 @is_active(%struct.msm_gem_object* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %74 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %73, i32 0, i32 1
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %74, align 8
  %76 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %77 = icmp ne %struct.msm_gpu* %75, %76
  br label %78

78:                                               ; preds = %72, %60
  %79 = phi i1 [ false, %60 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %83 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %82, i32 0, i32 0
  %84 = call i32 @drm_gem_object_get(i32* %83)
  %85 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %86 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %85, i32 0, i32 0
  %87 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %88 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @msm_gem_get_and_pin_iova(i32* %86, i32 %89, i32* %12)
  %91 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %92 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MSM_SUBMIT_BO_WRITE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %78
  %103 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %104 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %103, i32 0, i32 0
  %105 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %106 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %107 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @msm_gem_move_to_active(i32* %104, %struct.msm_gpu* %105, i32 1, i32 %108)
  br label %131

110:                                              ; preds = %78
  %111 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %112 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MSM_SUBMIT_BO_READ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %110
  %123 = load %struct.msm_gem_object*, %struct.msm_gem_object** %11, align 8
  %124 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %123, i32 0, i32 0
  %125 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %126 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %127 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @msm_gem_move_to_active(i32* %124, %struct.msm_gpu* %125, i32 0, i32 %128)
  br label %130

130:                                              ; preds = %122, %110
  br label %131

131:                                              ; preds = %130, %102
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %54

135:                                              ; preds = %54
  %136 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %137 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32 (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)*, i32 (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)** %139, align 8
  %141 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %142 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %143 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %144 = call i32 %140(%struct.msm_gpu* %141, %struct.msm_gem_submit* %142, %struct.msm_file_private* %143)
  %145 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %146 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %147 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %146, i32 0, i32 0
  store %struct.msm_file_private* %145, %struct.msm_file_private** %147, align 8
  %148 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %149 = call i32 @hangcheck_timer_reset(%struct.msm_gpu* %148)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @msm_gpu_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @msm_rd_dump_submit(i32, %struct.msm_gem_submit*, i32*) #1

declare dso_local i32 @update_sw_cntrs(%struct.msm_gpu*) #1

declare dso_local i64 @is_active(%struct.msm_gem_object*) #1

declare dso_local i32 @drm_gem_object_get(i32*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(i32*, i32, i32*) #1

declare dso_local i32 @msm_gem_move_to_active(i32*, %struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @hangcheck_timer_reset(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
