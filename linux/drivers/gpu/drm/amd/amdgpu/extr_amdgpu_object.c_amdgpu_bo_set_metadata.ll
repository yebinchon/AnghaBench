; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_set_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_set_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i64, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_set_metadata(%struct.amdgpu_bo* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %18, %13
  store i32 0, i32* %5, align 4
  br label %59

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %59

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmemdup(i8* %35, i64 %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %59

44:                                               ; preds = %34
  %45 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %44, %41, %31, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
