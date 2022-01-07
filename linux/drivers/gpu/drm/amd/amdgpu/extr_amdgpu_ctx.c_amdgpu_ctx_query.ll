; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { i32, i32 }
%union.drm_amdgpu_ctx_out = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amdgpu_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_CTX_NO_RESET = common dso_local global i32 0, align 4
@AMDGPU_CTX_UNKNOWN_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_fpriv*, i32, %union.drm_amdgpu_ctx_out*)* @amdgpu_ctx_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ctx_query(%struct.amdgpu_device* %0, %struct.amdgpu_fpriv* %1, i32 %2, %union.drm_amdgpu_ctx_out* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_fpriv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.drm_amdgpu_ctx_out*, align 8
  %10 = alloca %struct.amdgpu_ctx*, align 8
  %11 = alloca %struct.amdgpu_ctx_mgr*, align 8
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_fpriv* %1, %struct.amdgpu_fpriv** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.drm_amdgpu_ctx_out* %3, %union.drm_amdgpu_ctx_out** %9, align 8
  %13 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %14 = icmp ne %struct.amdgpu_fpriv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %19, i32 0, i32 0
  store %struct.amdgpu_ctx_mgr* %20, %struct.amdgpu_ctx_mgr** %11, align 8
  %21 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %24, i32 0, i32 1
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.amdgpu_ctx* @idr_find(i32* %25, i32 %26)
  store %struct.amdgpu_ctx* %27, %struct.amdgpu_ctx** %10, align 8
  %28 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %29 = icmp ne %struct.amdgpu_ctx* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %68

36:                                               ; preds = %18
  %37 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %38 = bitcast %union.drm_amdgpu_ctx_out* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %41 = bitcast %union.drm_amdgpu_ctx_out* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = call i32 @atomic_read(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load i32, i32* @AMDGPU_CTX_NO_RESET, align 4
  %53 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %54 = bitcast %union.drm_amdgpu_ctx_out* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  br label %61

56:                                               ; preds = %36
  %57 = load i32, i32* @AMDGPU_CTX_UNKNOWN_RESET, align 4
  %58 = load %union.drm_amdgpu_ctx_out*, %union.drm_amdgpu_ctx_out** %9, align 8
  %59 = bitcast %union.drm_amdgpu_ctx_out* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %10, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %11, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %30, %15
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.amdgpu_ctx* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
