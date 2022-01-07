; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_submit_in_rb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_submit_in_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private* }
%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.msm_ringbuffer* }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32 }
%struct.msm_ringbuffer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.msm_file_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)* @a5xx_submit_in_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_submit_in_rb(%struct.msm_gpu* %0, %struct.msm_gem_submit* %1, %struct.msm_file_private* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_gem_submit*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.msm_ringbuffer*, align 8
  %9 = alloca %struct.msm_gem_object*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_gem_submit* %1, %struct.msm_gem_submit** %5, align 8
  store %struct.msm_file_private* %2, %struct.msm_file_private** %6, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %7, align 8
  %18 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %19 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %18, i32 0, i32 4
  %20 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %19, align 8
  store %struct.msm_ringbuffer* %20, %struct.msm_ringbuffer** %8, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %101, %3
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %24 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %21
  %28 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %29 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %100 [
    i32 128, label %36
    i32 129, label %37
    i32 130, label %45
  ]

36:                                               ; preds = %27
  br label %100

37:                                               ; preds = %27
  %38 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %39 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %38, i32 0, i32 0
  %40 = load %struct.msm_file_private*, %struct.msm_file_private** %39, align 8
  %41 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %42 = icmp eq %struct.msm_file_private* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %100

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %27, %44
  %46 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %47 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %50 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.msm_gem_object*, %struct.msm_gem_object** %58, align 8
  store %struct.msm_gem_object* %59, %struct.msm_gem_object** %9, align 8
  %60 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %61 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  %68 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %69 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %68, i32 0, i32 0
  %70 = call i32* @msm_gem_get_vaddr(i32* %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %45
  br label %122

78:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %8, align 8
  %85 = call i32 @adreno_wait_ring(%struct.msm_ringbuffer* %84, i32 1)
  %86 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %8, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @OUT_RING(%struct.msm_ringbuffer* %86, i32 %91)
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %79

96:                                               ; preds = %79
  %97 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %98 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %97, i32 0, i32 0
  %99 = call i32 @msm_gem_put_vaddr(i32* %98)
  br label %100

100:                                              ; preds = %27, %96, %43, %36
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %21

104:                                              ; preds = %21
  %105 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %106 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %8, align 8
  %107 = call i32 @a5xx_flush(%struct.msm_gpu* %105, %struct.msm_ringbuffer* %106)
  %108 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %109 = call i32 @a5xx_preempt_trigger(%struct.msm_gpu* %108)
  %110 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %111 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %8, align 8
  %112 = call i32 @a5xx_idle(%struct.msm_gpu* %110, %struct.msm_ringbuffer* %111)
  %113 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %114 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %8, align 8
  %117 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  %120 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %121 = call i32 @msm_gpu_retire(%struct.msm_gpu* %120)
  br label %122

122:                                              ; preds = %104, %77
  ret void
}

declare dso_local i32* @msm_gem_get_vaddr(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @adreno_wait_ring(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @msm_gem_put_vaddr(i32*) #1

declare dso_local i32 @a5xx_flush(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @a5xx_preempt_trigger(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_idle(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @msm_gpu_retire(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
