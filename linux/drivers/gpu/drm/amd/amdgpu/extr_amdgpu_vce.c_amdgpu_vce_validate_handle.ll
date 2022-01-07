; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_validate_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_validate_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64*, i32* }

@AMDGPU_MAX_VCE_HANDLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"VCE handle collision detected!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No more free VCE handles!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, i32, i32*)* @amdgpu_vce_validate_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vce_validate_handle(%struct.amdgpu_cs_parser* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @AMDGPU_MAX_VCE_HANDLES, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %13
  %27 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %105

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %105

47:                                               ; preds = %13
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %9

51:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %98, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @AMDGPU_MAX_VCE_HANDLES, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @atomic_cmpxchg(i32* %65, i32 0, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %56
  %70 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %72, i64* %81, align 8
  %82 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 1, %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %105

97:                                               ; preds = %56
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %52

101:                                              ; preds = %52
  %102 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %69, %45, %41
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
