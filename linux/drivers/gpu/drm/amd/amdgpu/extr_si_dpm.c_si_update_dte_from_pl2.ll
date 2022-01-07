; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_update_dte_from_pl2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_update_dte_from_pl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.si_dte_data = type { i32, i32, i32, i32, i32*, i32* }

@__const.si_update_dte_from_pl2.t_split = private unnamed_addr constant [5 x i32] [i32 10, i32 15, i32 20, i32 25, i32 30], align 16
@SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid PL2! DTE will not be updated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.si_dte_data*)* @si_update_dte_from_pl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_update_dte_from_pl2(%struct.amdgpu_device* %0, %struct.si_dte_data* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.si_dte_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.si_dte_data* %1, %struct.si_dte_data** %4, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %23 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %26 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([5 x i32]* @__const.si_update_dte_from_pl2.t_split to i8*), i64 20, i1 false)
  %29 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %30 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %34
  %39 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %40 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %39, i32 0, i32 3
  store i32 3, i32* %40, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %65, %38
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 1000
  %53 = sub nsw i32 %50, %52
  %54 = mul nsw i32 %49, %53
  %55 = mul nsw i32 %54, 16384
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 100
  %58 = sdiv i32 %55, %57
  %59 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %60 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %70 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %76 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %74, i32* %78, align 4
  store i32 2, i32* %11, align 4
  br label %79

79:                                               ; preds = %95, %68
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %85 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.si_dte_data*, %struct.si_dte_data** %4, align 8
  %90 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %79

98:                                               ; preds = %79
  br label %101

99:                                               ; preds = %34, %2
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %98
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
