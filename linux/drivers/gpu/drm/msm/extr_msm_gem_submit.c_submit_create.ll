; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i32, i32, i32, i64, i64, i32, %struct.msm_gpu_submitqueue*, i32*, i8*, i32*, %struct.msm_gpu*, %struct.msm_gem_address_space*, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.msm_gpu = type { i32* }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gpu_submitqueue = type { i64 }

@bos = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@reservation_ww_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_gem_submit* (%struct.drm_device*, %struct.msm_gpu*, %struct.msm_gem_address_space*, %struct.msm_gpu_submitqueue*, i64, i64)* @submit_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_gem_submit* @submit_create(%struct.drm_device* %0, %struct.msm_gpu* %1, %struct.msm_gem_address_space* %2, %struct.msm_gpu_submitqueue* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.msm_gem_submit*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.msm_gpu*, align 8
  %10 = alloca %struct.msm_gem_address_space*, align 8
  %11 = alloca %struct.msm_gpu_submitqueue*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.msm_gem_submit*, align 8
  %15 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.msm_gpu* %1, %struct.msm_gpu** %9, align 8
  store %struct.msm_gem_address_space* %2, %struct.msm_gem_address_space** %10, align 8
  store %struct.msm_gpu_submitqueue* %3, %struct.msm_gpu_submitqueue** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %17 = load i32, i32* @bos, align 4
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @struct_size(%struct.msm_gem_submit* %16, i32 %17, i64 %18)
  %20 = load i64, i64* %13, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = add i64 %19, %23
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store %struct.msm_gem_submit* null, %struct.msm_gem_submit** %7, align 8
  br label %87

29:                                               ; preds = %6
  %30 = load i64, i64* %15, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @__GFP_NOWARN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @__GFP_NORETRY, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.msm_gem_submit* @kmalloc(i64 %30, i32 %35)
  store %struct.msm_gem_submit* %36, %struct.msm_gem_submit** %14, align 8
  %37 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %38 = icmp ne %struct.msm_gem_submit* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store %struct.msm_gem_submit* null, %struct.msm_gem_submit** %7, align 8
  br label %87

40:                                               ; preds = %29
  %41 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %42 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %43 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %42, i32 0, i32 12
  store %struct.drm_device* %41, %struct.drm_device** %43, align 8
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %45 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %46 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %45, i32 0, i32 11
  store %struct.msm_gem_address_space* %44, %struct.msm_gem_address_space** %46, align 8
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  %48 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %49 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %48, i32 0, i32 10
  store %struct.msm_gpu* %47, %struct.msm_gpu** %49, align 8
  %50 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %51 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %50, i32 0, i32 9
  store i32* null, i32** %51, align 8
  %52 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %53 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %59 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %11, align 8
  %61 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %62 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %61, i32 0, i32 6
  store %struct.msm_gpu_submitqueue* %60, %struct.msm_gpu_submitqueue** %62, align 8
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  %64 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %11, align 8
  %67 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %72 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %74 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %76 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %78 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %77, i32 0, i32 2
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %81 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  %84 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %83, i32 0, i32 0
  %85 = call i32 @ww_acquire_init(i32* %84, i32* @reservation_ww_class)
  %86 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %14, align 8
  store %struct.msm_gem_submit* %86, %struct.msm_gem_submit** %7, align 8
  br label %87

87:                                               ; preds = %40, %39, %28
  %88 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  ret %struct.msm_gem_submit* %88
}

declare dso_local i64 @struct_size(%struct.msm_gem_submit*, i32, i64) #1

declare dso_local %struct.msm_gem_submit* @kmalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ww_acquire_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
