; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_kiq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_kiq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to create KIQ bo (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(%d) reserve kiq eop bo failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.amdgpu_kiq*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.amdgpu_kiq* %11, %struct.amdgpu_kiq** %8, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %16 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %19 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %18, i32 0, i32 1
  %20 = bitcast i32** %7 to i8**
  %21 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %12, i32 %13, i32 %14, i32 %15, i32* %17, i32* %19, i8** %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @amdgpu_bo_reserve(i32 %37, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %52 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @amdgpu_bo_kunmap(i32 %53)
  %55 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %56 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @amdgpu_bo_unreserve(i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_reserve(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_kunmap(i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
