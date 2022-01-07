; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_fpriv = type { %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { i32, i32 }
%struct.amdgpu_ctx = type { i32 }

@amdgpu_ctx_do_release = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_fpriv*, i32)* @amdgpu_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ctx_free(%struct.amdgpu_fpriv* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_fpriv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ctx_mgr*, align 8
  %6 = alloca %struct.amdgpu_ctx*, align 8
  store %struct.amdgpu_fpriv* %0, %struct.amdgpu_fpriv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %7, i32 0, i32 0
  store %struct.amdgpu_ctx_mgr* %8, %struct.amdgpu_ctx_mgr** %5, align 8
  %9 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.amdgpu_ctx* @idr_remove(i32* %13, i32 %14)
  store %struct.amdgpu_ctx* %15, %struct.amdgpu_ctx** %6, align 8
  %16 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  %17 = icmp ne %struct.amdgpu_ctx* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* @amdgpu_ctx_do_release, align 4
  %22 = call i32 @kref_put(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.amdgpu_ctx_mgr*, %struct.amdgpu_ctx_mgr** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ctx_mgr, %struct.amdgpu_ctx_mgr* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %6, align 8
  %28 = icmp ne %struct.amdgpu_ctx* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ 0, %29 ], [ %32, %30 ]
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.amdgpu_ctx* @idr_remove(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
