; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_cs_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_cs_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32 }
%struct.amdgpu_bo_va_mapping = type { i32, i32 }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Can't find BO for addr 0x%010Lx %d %d %d %d\0A\00", align 1
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"BO to small for addr 0x%010Lx %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, i32, i32, i32, i32, i32)* @amdgpu_vce_cs_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_cs_parser*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %15 = alloca %struct.amdgpu_bo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %20, %6
  %22 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %22, i32 %23, i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %27, i32 %28, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 32
  %33 = or i32 %26, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %16, align 4
  %39 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @amdgpu_cs_find_mapping(%struct.amdgpu_cs_parser* %39, i32 %40, %struct.amdgpu_bo** %15, %struct.amdgpu_bo_va_mapping** %14)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %21
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 (i8*, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %7, align 4
  br label %101

52:                                               ; preds = %21
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %57 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp sgt i32 %55, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %101

70:                                               ; preds = %52
  %71 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %14, align 8
  %72 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %79 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %78)
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %16, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %16, align 4
  %89 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @lower_32_bits(i32 %92)
  %94 = call i32 @amdgpu_set_ib_value(%struct.amdgpu_cs_parser* %89, i32 %90, i32 %91, i32 %93)
  %95 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = call i32 @amdgpu_set_ib_value(%struct.amdgpu_cs_parser* %95, i32 %96, i32 %97, i32 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %70, %63, %44
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser*, i32, i32) #1

declare dso_local i32 @amdgpu_cs_find_mapping(%struct.amdgpu_cs_parser*, i32, %struct.amdgpu_bo**, %struct.amdgpu_bo_va_mapping**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_set_ib_value(%struct.amdgpu_cs_parser*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
