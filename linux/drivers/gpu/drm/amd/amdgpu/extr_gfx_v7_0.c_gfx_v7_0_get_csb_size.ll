; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_get_csb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_get_csb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i64, i32* }

@SECT_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_get_csb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_get_csb_size(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_section_def*, align 8
  %6 = alloca %struct.cs_extent_def*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.cs_section_def*, %struct.cs_section_def** %10, align 8
  %12 = icmp eq %struct.cs_section_def* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 3
  store i32 %18, i32* %4, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.cs_section_def*, %struct.cs_section_def** %22, align 8
  store %struct.cs_section_def* %23, %struct.cs_section_def** %5, align 8
  br label %24

24:                                               ; preds = %59, %14
  %25 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %26 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %25, i32 0, i32 1
  %27 = load %struct.cs_extent_def*, %struct.cs_extent_def** %26, align 8
  %28 = icmp ne %struct.cs_extent_def* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %31 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %30, i32 0, i32 1
  %32 = load %struct.cs_extent_def*, %struct.cs_extent_def** %31, align 8
  store %struct.cs_extent_def* %32, %struct.cs_extent_def** %6, align 8
  br label %33

33:                                               ; preds = %55, %29
  %34 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %35 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %40 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SECT_CONTEXT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %46 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 2, %47
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %70

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %57 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %56, i32 1
  store %struct.cs_extent_def* %57, %struct.cs_extent_def** %6, align 8
  br label %33

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %61 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %60, i32 1
  store %struct.cs_section_def* %61, %struct.cs_section_def** %5, align 8
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %53, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
