; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ngg_create_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ngg_create_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_ngg_buf = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Buffer size is invalid: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"(%d) failed to create NGG buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ngg_buf*, i32, i32)* @gfx_v9_0_ngg_create_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_ngg_create_buf(%struct.amdgpu_device* %0, %struct.amdgpu_ngg_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ngg_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_ngg_buf* %1, %struct.amdgpu_ngg_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %30, %35
  %37 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %45 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %45, i32 0, i32 1
  %47 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %47, i32 0, i32 3
  %49 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %39, i32 %42, i32 %43, i32 %44, i32* %46, i32* %48, i32* null)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %28
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %67

59:                                               ; preds = %28
  %60 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @amdgpu_bo_size(i32 %62)
  %64 = load %struct.amdgpu_ngg_buf*, %struct.amdgpu_ngg_buf** %7, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ngg_buf, %struct.amdgpu_ngg_buf* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %52, %13
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
