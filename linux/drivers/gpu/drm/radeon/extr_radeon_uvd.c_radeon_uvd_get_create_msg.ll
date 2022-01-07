; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_get_create_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_get_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.radeon_fence = type { i32 }

@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_get_create_msg(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.radeon_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.radeon_fence** %3, %struct.radeon_fence*** %9, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @radeon_bo_size(i32 %18)
  %20 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %11, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @radeon_bo_reserve(i32 %38, i32 1)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %103

44:                                               ; preds = %4
  %45 = call i32 @cpu_to_le32(i32 3556)
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = call i32 @cpu_to_le32(i32 0)
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  %55 = call i32 @cpu_to_le32(i32 0)
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %55, i32* %57, align 4
  %58 = call i32 @cpu_to_le32(i32 0)
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %58, i32* %60, align 4
  %61 = call i32 @cpu_to_le32(i32 0)
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = call i32 @cpu_to_le32(i32 0)
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 %64, i32* %66, align 4
  %67 = call i32 @cpu_to_le32(i32 1920)
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %67, i32* %69, align 4
  %70 = call i32 @cpu_to_le32(i32 1088)
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  store i32 %70, i32* %72, align 4
  %73 = call i32 @cpu_to_le32(i32 0)
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 9
  store i32 %73, i32* %75, align 4
  %76 = call i32 @cpu_to_le32(i32 28536832)
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 10
  store i32 %76, i32* %78, align 4
  store i32 11, i32* %14, align 4
  br label %79

79:                                               ; preds = %88, %44
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 1024
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = call i32 @cpu_to_le32(i32 0)
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %79

91:                                               ; preds = %79
  %92 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  %96 = call i32 @radeon_uvd_send_msg(%struct.radeon_device* %92, i32 %93, i32 %94, %struct.radeon_fence** %95)
  store i32 %96, i32* %13, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @radeon_bo_unreserve(i32 %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %91, %42
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @radeon_bo_size(i32) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @radeon_uvd_send_msg(%struct.radeon_device*, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
