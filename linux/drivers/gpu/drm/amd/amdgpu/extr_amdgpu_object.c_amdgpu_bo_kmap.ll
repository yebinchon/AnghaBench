; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %19 = call i8* @amdgpu_bo_kptr(%struct.amdgpu_bo* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8**, i8*** %5, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, i32* %3, align 4
  br label %65

29:                                               ; preds = %17
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %36 = call i64 @dma_resv_wait_timeout_rcu(i32 %34, i32 0, i32 0, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %65

42:                                               ; preds = %29
  %43 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %43, i32 0, i32 2
  %45 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 1
  %51 = call i64 @ttm_bo_kmap(%struct.TYPE_4__* %44, i32 0, i32 %48, i32* %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %42
  %58 = load i8**, i8*** %5, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %62 = call i8* @amdgpu_bo_kptr(%struct.amdgpu_bo* %61)
  %63 = load i8**, i8*** %5, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %54, %39, %28, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i8* @amdgpu_bo_kptr(%struct.amdgpu_bo*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i64 @ttm_bo_kmap(%struct.TYPE_4__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
