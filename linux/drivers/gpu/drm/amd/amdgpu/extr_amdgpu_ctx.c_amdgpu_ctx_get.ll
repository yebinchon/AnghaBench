; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ctx = type { i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_ctx* @amdgpu_ctx_get(%struct.amdgpu_fpriv* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ctx*, align 8
  %4 = alloca %struct.amdgpu_fpriv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ctx*, align 8
  %7 = alloca %struct.amdgpu_ctx_mgr*, align 8
  store %struct.amdgpu_fpriv* %0, %struct.amdgpu_fpriv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %4, align 8
  %9 = icmp ne %struct.amdgpu_fpriv* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.amdgpu_ctx* null, %struct.amdgpu_ctx** %3, align 8
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %12, i32 0, i32 0
  store %struct.amdgpu_ctx_mgr* %13, %struct.amdgpu_ctx_mgr** %7, align 8
  %14 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %7, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %17, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.amdgpu_ctx* @idr_find(i32* %18, i32 %19)
  store %struct.amdgpu_ctx* %20, %struct.amdgpu_ctx** %6, align 8
  %21 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  %22 = icmp ne %struct.amdgpu_ctx* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %24, i32 0, i32 0
  %26 = call i32 @kref_get(i32* %25)
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  store %struct.amdgpu_ctx* %31, %struct.amdgpu_ctx** %3, align 8
  br label %32

32:                                               ; preds = %27, %10
  %33 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %3, align 8
  ret %struct.amdgpu_ctx* %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.amdgpu_ctx* @idr_find(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
