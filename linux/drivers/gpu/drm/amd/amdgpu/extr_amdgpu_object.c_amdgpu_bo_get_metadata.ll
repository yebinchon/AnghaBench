; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_get_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_get_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_get_metadata(%struct.amdgpu_bo* %0, i8* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i64*, i64** %10, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %64

20:                                               ; preds = %14, %5
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i8* %38, i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %37, %32
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i64*, i64** %10, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %60 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %29, %17
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
