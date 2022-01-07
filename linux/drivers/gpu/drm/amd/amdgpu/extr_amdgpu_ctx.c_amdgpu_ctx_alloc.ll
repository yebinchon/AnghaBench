; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.amdgpu_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_VM_MAX_NUM_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_fpriv*, %struct.drm_file*, i32, i64*)* @amdgpu_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ctx_alloc(%struct.amdgpu_device* %0, %struct.amdgpu_fpriv* %1, %struct.drm_file* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_fpriv*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.amdgpu_ctx_mgr*, align 8
  %13 = alloca %struct.amdgpu_ctx*, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_fpriv* %1, %struct.amdgpu_fpriv** %8, align 8
  store %struct.drm_file* %2, %struct.drm_file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %8, align 8
  %16 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %15, i32 0, i32 0
  store %struct.amdgpu_ctx_mgr* %16, %struct.amdgpu_ctx_mgr** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.amdgpu_ctx* @kmalloc(i32 4, i32 %17)
  store %struct.amdgpu_ctx* %18, %struct.amdgpu_ctx** %13, align 8
  %19 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %13, align 8
  %20 = icmp ne %struct.amdgpu_ctx* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %68

24:                                               ; preds = %5
  %25 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %12, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %12, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %28, i32 0, i32 1
  %30 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %13, align 8
  %31 = load i32, i32* @AMDGPU_VM_MAX_NUM_CTX, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @idr_alloc(i32* %29, %struct.amdgpu_ctx* %30, i32 1, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %12, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %13, align 8
  %41 = call i32 @kfree(%struct.amdgpu_ctx* %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %68

43:                                               ; preds = %24
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %50 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %13, align 8
  %51 = call i32 @amdgpu_ctx_init(%struct.amdgpu_device* %47, i32 %48, %struct.drm_file* %49, %struct.amdgpu_ctx* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %12, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %55, i32 0, i32 1
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @idr_remove(i32* %56, i64 %58)
  %60 = load i64*, i64** %11, align 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %13, align 8
  %62 = call i32 @kfree(%struct.amdgpu_ctx* %61)
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %12, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %36, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.amdgpu_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.amdgpu_ctx*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_ctx*) #1

declare dso_local i32 @amdgpu_ctx_init(%struct.amdgpu_device*, i32, %struct.drm_file*, %struct.amdgpu_ctx*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
