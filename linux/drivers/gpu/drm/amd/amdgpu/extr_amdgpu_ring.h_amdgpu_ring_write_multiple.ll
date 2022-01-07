; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.h_amdgpu_ring_write_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.h_amdgpu_ring_write_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i8*, i32)* @amdgpu_ring_write_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_ring_write_multiple(%struct.amdgpu_ring* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* %6, align 4
  br label %49

47:                                               ; preds = %21
  %48 = load i32, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 2
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 2
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = zext i32 %69 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  store i8* %72, i8** %5, align 8
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %65
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
