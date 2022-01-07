; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { i64, i64, i32, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Register command after end of CS!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid reg 0x%X!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*, i32 (%struct.amdgpu_uvd_cs_ctx*)*)* @amdgpu_uvd_cs_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_reg(%struct.amdgpu_uvd_cs_ctx* %0, i32 (%struct.amdgpu_uvd_cs_ctx*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %5 = alloca i32 (%struct.amdgpu_uvd_cs_ctx*)*, align 8
  %6 = alloca %struct.amdgpu_ib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  store i32 (%struct.amdgpu_uvd_cs_ctx*)* %1, i32 (%struct.amdgpu_uvd_cs_ctx*)** %5, align 8
  %10 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %17 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %16, i64 %19
  store %struct.amdgpu_ib* %20, %struct.amdgpu_ib** %6, align 8
  %21 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %82, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %31
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %72 [
    i32 130, label %50
    i32 129, label %56
    i32 131, label %62
    i32 132, label %71
    i32 128, label %71
  ]

50:                                               ; preds = %48
  %51 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  br label %77

56:                                               ; preds = %48
  %57 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  br label %77

62:                                               ; preds = %48
  %63 = load i32 (%struct.amdgpu_uvd_cs_ctx*)*, i32 (%struct.amdgpu_uvd_cs_ctx*)** %5, align 8
  %64 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %65 = call i32 %63(%struct.amdgpu_uvd_cs_ctx* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %86

70:                                               ; preds = %62
  br label %77

71:                                               ; preds = %48, %48
  br label %77

72:                                               ; preds = %48
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %86

77:                                               ; preds = %71, %70, %56, %50
  %78 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %25

85:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %72, %68, %44
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
