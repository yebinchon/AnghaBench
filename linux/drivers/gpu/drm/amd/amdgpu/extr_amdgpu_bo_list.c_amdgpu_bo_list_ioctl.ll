; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32, i32 }
%union.drm_amdgpu_bo_list = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_amdgpu_bo_list_entry = type { i32 }
%struct.amdgpu_bo_list = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_list_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_fpriv*, align 8
  %10 = alloca %union.drm_amdgpu_bo_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_amdgpu_bo_list_entry*, align 8
  %13 = alloca %struct.amdgpu_bo_list*, align 8
  %14 = alloca %struct.amdgpu_bo_list*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %8, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %20, align 8
  store %struct.amdgpu_fpriv* %21, %struct.amdgpu_fpriv** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %union.drm_amdgpu_bo_list*
  store %union.drm_amdgpu_bo_list* %23, %union.drm_amdgpu_bo_list** %10, align 8
  %24 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %25 = bitcast %union.drm_amdgpu_bo_list* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  store %struct.drm_amdgpu_bo_list_entry* null, %struct.drm_amdgpu_bo_list_entry** %12, align 8
  %28 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %29 = bitcast %union.drm_amdgpu_bo_list* %28 to %struct.TYPE_4__*
  %30 = call i32 @amdgpu_bo_create_list_entry_array(%struct.TYPE_4__* %29, %struct.drm_amdgpu_bo_list_entry** %12)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %4, align 4
  br label %125

35:                                               ; preds = %3
  %36 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %37 = bitcast %union.drm_amdgpu_bo_list* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %106 [
    i32 130, label %40
    i32 129, label %69
    i32 128, label %73
  ]

40:                                               ; preds = %35
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %12, align 8
  %44 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %45 = bitcast %union.drm_amdgpu_bo_list* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @amdgpu_bo_list_create(%struct.amdgpu_device* %41, %struct.drm_file* %42, %struct.drm_amdgpu_bo_list_entry* %43, i32 %47, %struct.amdgpu_bo_list** %13)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %121

52:                                               ; preds = %40
  %53 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %54 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %57 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %56, i32 0, i32 1
  %58 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %13, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @idr_alloc(i32* %57, %struct.amdgpu_bo_list* %58, i32 1, i32 0, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %62 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %118

67:                                               ; preds = %52
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %11, align 4
  br label %109

69:                                               ; preds = %35
  %70 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @amdgpu_bo_list_destroy(%struct.amdgpu_fpriv* %70, i32 %71)
  store i32 0, i32* %11, align 4
  br label %109

73:                                               ; preds = %35
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %75 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %76 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %12, align 8
  %77 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %78 = bitcast %union.drm_amdgpu_bo_list* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @amdgpu_bo_list_create(%struct.amdgpu_device* %74, %struct.drm_file* %75, %struct.drm_amdgpu_bo_list_entry* %76, i32 %80, %struct.amdgpu_bo_list** %13)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %121

85:                                               ; preds = %73
  %86 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %87 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %86, i32 0, i32 0
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %90 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %89, i32 0, i32 1
  %91 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.amdgpu_bo_list* @idr_replace(i32* %90, %struct.amdgpu_bo_list* %91, i32 %92)
  store %struct.amdgpu_bo_list* %93, %struct.amdgpu_bo_list** %14, align 8
  %94 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %95 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %14, align 8
  %98 = call i32 @IS_ERR(%struct.amdgpu_bo_list* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %14, align 8
  %102 = call i32 @PTR_ERR(%struct.amdgpu_bo_list* %101)
  store i32 %102, i32* %15, align 4
  br label %118

103:                                              ; preds = %85
  %104 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %14, align 8
  %105 = call i32 @amdgpu_bo_list_put(%struct.amdgpu_bo_list* %104)
  br label %109

106:                                              ; preds = %35
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %15, align 4
  br label %121

109:                                              ; preds = %103, %69, %67
  %110 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %111 = call i32 @memset(%union.drm_amdgpu_bo_list* %110, i32 0, i32 12)
  %112 = load i32, i32* %11, align 4
  %113 = load %union.drm_amdgpu_bo_list*, %union.drm_amdgpu_bo_list** %10, align 8
  %114 = bitcast %union.drm_amdgpu_bo_list* %113 to %struct.TYPE_3__*
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %12, align 8
  %117 = call i32 @kvfree(%struct.drm_amdgpu_bo_list_entry* %116)
  store i32 0, i32* %4, align 4
  br label %125

118:                                              ; preds = %100, %66
  %119 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %13, align 8
  %120 = call i32 @amdgpu_bo_list_put(%struct.amdgpu_bo_list* %119)
  br label %121

121:                                              ; preds = %118, %106, %84, %51
  %122 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %12, align 8
  %123 = call i32 @kvfree(%struct.drm_amdgpu_bo_list_entry* %122)
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %109, %33
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @amdgpu_bo_create_list_entry_array(%struct.TYPE_4__*, %struct.drm_amdgpu_bo_list_entry**) #1

declare dso_local i32 @amdgpu_bo_list_create(%struct.amdgpu_device*, %struct.drm_file*, %struct.drm_amdgpu_bo_list_entry*, i32, %struct.amdgpu_bo_list**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.amdgpu_bo_list*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_bo_list_destroy(%struct.amdgpu_fpriv*, i32) #1

declare dso_local %struct.amdgpu_bo_list* @idr_replace(i32*, %struct.amdgpu_bo_list*, i32) #1

declare dso_local i32 @IS_ERR(%struct.amdgpu_bo_list*) #1

declare dso_local i32 @PTR_ERR(%struct.amdgpu_bo_list*) #1

declare dso_local i32 @amdgpu_bo_list_put(%struct.amdgpu_bo_list*) #1

declare dso_local i32 @memset(%union.drm_amdgpu_bo_list*, i32, i32) #1

declare dso_local i32 @kvfree(%struct.drm_amdgpu_bo_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
