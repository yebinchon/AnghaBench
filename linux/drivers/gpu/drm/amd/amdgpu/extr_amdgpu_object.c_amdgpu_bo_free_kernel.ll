; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_free_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_free_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_bo_free_kernel(%struct.amdgpu_bo** %0, i64* %1, i8** %2) #0 {
  %4 = alloca %struct.amdgpu_bo**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  store %struct.amdgpu_bo** %0, %struct.amdgpu_bo*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %9 = icmp eq %struct.amdgpu_bo* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %14 = call i64 @amdgpu_bo_reserve(%struct.amdgpu_bo* %13, i32 1)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load i8**, i8*** %6, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %23, align 8
  %25 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %27, align 8
  %29 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %28)
  %30 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %30, align 8
  %32 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %31)
  br label %33

33:                                               ; preds = %26, %11
  %34 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %4, align 8
  %35 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %34)
  %36 = load i64*, i64** %5, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64*, i64** %5, align 8
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i8**, i8*** %6, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8**, i8*** %6, align 8
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %10, %43, %40
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
