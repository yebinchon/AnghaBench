; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_init_fb_allocations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_init_fb_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context, %struct.amdgpu_device* }
%struct.smu_table_context = type { i64, %struct.smu_table* }
%struct.smu_table = type { i64, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_init_fb_allocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_init_fb_allocations(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.smu_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 0
  store %struct.smu_table_context* %14, %struct.smu_table_context** %5, align 8
  %15 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %15, i32 0, i32 1
  %17 = load %struct.smu_table*, %struct.smu_table** %16, align 8
  store %struct.smu_table* %17, %struct.smu_table** %6, align 8
  %18 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %19 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %73, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %32, i64 %33
  %35 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %73

39:                                               ; preds = %31
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %41, i64 %42
  %44 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %46, i64 %47
  %49 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %51, i64 %52
  %54 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %56, i64 %57
  %59 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %58, i32 0, i32 3
  %60 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %60, i64 %61
  %63 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %62, i32 0, i32 2
  %64 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %64, i64 %65
  %67 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %66, i32 0, i32 1
  %68 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %40, i64 %45, i32 %50, i32 %55, i32* %59, i32* %63, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %39
  br label %77

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %27

76:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %108

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i64, i64* %8, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %82, i64 %83
  %85 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %103

89:                                               ; preds = %81
  %90 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %90, i64 %91
  %93 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %92, i32 0, i32 3
  %94 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %94, i64 %95
  %97 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %96, i32 0, i32 2
  %98 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %98, i64 %99
  %101 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %100, i32 0, i32 1
  %102 = call i32 @amdgpu_bo_free_kernel(i32* %93, i32* %97, i32* %101)
  br label %103

103:                                              ; preds = %89, %88
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %8, align 8
  br label %78

106:                                              ; preds = %78
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %76, %23
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
