; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_attach_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_attach_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vgem_file* }
%struct.vgem_file = type { i32, i32 }
%struct.drm_vgem_fence_attach = type { i32, i32, i32, i64 }
%struct.dma_resv = type { i32 }
%struct.drm_gem_object = type { %struct.dma_resv* }
%struct.dma_fence = type { i32 }

@VGEM_FENCE_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgem_fence_attach_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_vgem_fence_attach*, align 8
  %9 = alloca %struct.vgem_file*, align 8
  %10 = alloca %struct.dma_resv*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_vgem_fence_attach*
  store %struct.drm_vgem_fence_attach* %15, %struct.drm_vgem_fence_attach** %8, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 0
  %18 = load %struct.vgem_file*, %struct.vgem_file** %17, align 8
  store %struct.vgem_file* %18, %struct.vgem_file** %9, align 8
  %19 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %20 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VGEM_FENCE_WRITE, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %134

29:                                               ; preds = %3
  %30 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %31 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %134

37:                                               ; preds = %29
  %38 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %39 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %40 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %38, i32 %41)
  store %struct.drm_gem_object* %42, %struct.drm_gem_object** %11, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %44 = icmp ne %struct.drm_gem_object* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %134

48:                                               ; preds = %37
  %49 = load %struct.vgem_file*, %struct.vgem_file** %9, align 8
  %50 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %51 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.dma_fence* @vgem_fence_create(%struct.vgem_file* %49, i32 %52)
  store %struct.dma_fence* %53, %struct.dma_fence** %12, align 8
  %54 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %55 = icmp ne %struct.dma_fence* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %130

59:                                               ; preds = %48
  %60 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %61 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %60, i32 0, i32 0
  %62 = load %struct.dma_resv*, %struct.dma_resv** %61, align 8
  store %struct.dma_resv* %62, %struct.dma_resv** %10, align 8
  %63 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %64 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %65 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VGEM_FENCE_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @dma_resv_test_signaled_rcu(%struct.dma_resv* %63, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %121

74:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  %75 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %76 = call i32 @dma_resv_lock(%struct.dma_resv* %75, i32* null)
  %77 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %78 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VGEM_FENCE_WRITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %85 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %86 = call i32 @dma_resv_add_excl_fence(%struct.dma_resv* %84, %struct.dma_fence* %85)
  br label %96

87:                                               ; preds = %74
  %88 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %89 = call i32 @dma_resv_reserve_shared(%struct.dma_resv* %88, i32 1)
  store i32 %89, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %93 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %94 = call i32 @dma_resv_add_shared_fence(%struct.dma_resv* %92, %struct.dma_fence* %93)
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %83
  %97 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %98 = call i32 @dma_resv_unlock(%struct.dma_resv* %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %96
  %102 = load %struct.vgem_file*, %struct.vgem_file** %9, align 8
  %103 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.vgem_file*, %struct.vgem_file** %9, align 8
  %106 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %105, i32 0, i32 1
  %107 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32 @idr_alloc(i32* %106, %struct.dma_fence* %107, i32 1, i32 0, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.vgem_file*, %struct.vgem_file** %9, align 8
  %111 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.drm_vgem_fence_attach*, %struct.drm_vgem_fence_attach** %8, align 8
  %118 = getelementptr inbounds %struct.drm_vgem_fence_attach, %struct.drm_vgem_fence_attach* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %115, %101
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %71
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %126 = call i32 @dma_fence_signal(%struct.dma_fence* %125)
  %127 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %128 = call i32 @dma_fence_put(%struct.dma_fence* %127)
  br label %129

129:                                              ; preds = %124, %121
  br label %130

130:                                              ; preds = %129, %56
  %131 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %132 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %131)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %45, %34, %26
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.dma_fence* @vgem_fence_create(%struct.vgem_file*, i32) #1

declare dso_local i32 @dma_resv_test_signaled_rcu(%struct.dma_resv*, i32) #1

declare dso_local i32 @dma_resv_lock(%struct.dma_resv*, i32*) #1

declare dso_local i32 @dma_resv_add_excl_fence(%struct.dma_resv*, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_reserve_shared(%struct.dma_resv*, i32) #1

declare dso_local i32 @dma_resv_add_shared_fence(%struct.dma_resv*, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.dma_fence*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
