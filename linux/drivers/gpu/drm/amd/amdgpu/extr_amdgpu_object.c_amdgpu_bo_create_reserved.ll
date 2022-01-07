; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_param = type { i64, i32, i32*, i32, i32, i32 }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"(%d) failed to allocate kernel bo\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(%d) failed to reserve kernel bo\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(%d) kernel bo pin failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%p bind failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"(%d) kernel bo map failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %0, i64 %1, i32 %2, i32 %3, %struct.amdgpu_bo** %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_bo**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.amdgpu_bo_param, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.amdgpu_bo** %4, %struct.amdgpu_bo*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %23 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %22)
  store i32 0, i32* %8, align 4
  br label %146

24:                                               ; preds = %7
  %25 = call i32 @memset(%struct.amdgpu_bo_param* %16, i32 0, i32 40)
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 5
  store i32 %30, i32* %31, align 8
  %32 = load i8**, i8*** %15, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %42 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @ttm_bo_type_kernel, align 4
  %46 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %48, align 8
  %50 = icmp ne %struct.amdgpu_bo* %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %38
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %53 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %54 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %52, %struct.amdgpu_bo_param* %16, %struct.amdgpu_bo** %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %8, align 4
  br label %146

64:                                               ; preds = %51
  store i32 1, i32* %17, align 4
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %67 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %66, align 8
  %68 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %67, i32 0)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %138

77:                                               ; preds = %65
  %78 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %79 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %134

90:                                               ; preds = %77
  %91 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %92 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %91, align 8
  %93 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %92, i32 0, i32 0
  %94 = call i32 @amdgpu_ttm_alloc_gart(i32* %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %101, align 8
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.amdgpu_bo* %102)
  br label %130

104:                                              ; preds = %90
  %105 = load i32*, i32** %14, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %109 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %108, align 8
  %110 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %109)
  %111 = load i32*, i32** %14, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i8**, i8*** %15, align 8
  %114 = icmp ne i8** %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %117 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %116, align 8
  %118 = load i8**, i8*** %15, align 8
  %119 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %117, i8** %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %130

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %112
  store i32 0, i32* %8, align 4
  br label %146

130:                                              ; preds = %122, %97
  %131 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %132 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %131, align 8
  %133 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %132)
  br label %134

134:                                              ; preds = %130, %84
  %135 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %136 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %135, align 8
  %137 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %136)
  br label %138

138:                                              ; preds = %134, %71
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %13, align 8
  %143 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %129, %57, %21
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(i32*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i8**) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
