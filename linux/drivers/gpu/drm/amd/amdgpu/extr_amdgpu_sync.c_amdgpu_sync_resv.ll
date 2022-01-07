; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_resv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_sync = type { i32 }
%struct.dma_resv = type { i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_FENCE_OWNER_KFD = common dso_local global i8* null, align 8
@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i8* null, align 8
@AMDGPU_FENCE_OWNER_VM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_sync_resv(%struct.amdgpu_device* %0, %struct.amdgpu_sync* %1, %struct.dma_resv* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_sync*, align 8
  %9 = alloca %struct.dma_resv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_resv_list*, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_sync* %1, %struct.amdgpu_sync** %8, align 8
  store %struct.dma_resv* %2, %struct.dma_resv** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %18 = icmp eq %struct.dma_resv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %117

22:                                               ; preds = %5
  %23 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %24 = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %23)
  store %struct.dma_fence* %24, %struct.dma_fence** %13, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %26 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %27 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %28 = call i32 @amdgpu_sync_fence(%struct.amdgpu_device* %25, %struct.amdgpu_sync* %26, %struct.dma_fence* %27, i32 0)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %30 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %29)
  store %struct.dma_resv_list* %30, %struct.dma_resv_list** %12, align 8
  %31 = load %struct.dma_resv_list*, %struct.dma_resv_list** %12, align 8
  %32 = icmp ne %struct.dma_resv_list* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %6, align 4
  br label %117

38:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %112, %38
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.dma_resv_list*, %struct.dma_resv_list** %12, align 8
  %42 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %39
  %46 = load %struct.dma_resv_list*, %struct.dma_resv_list** %12, align 8
  %47 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dma_resv*, %struct.dma_resv** %9, align 8
  %54 = call i32 @dma_resv_held(%struct.dma_resv* %53)
  %55 = call %struct.dma_fence* @rcu_dereference_protected(i32 %52, i32 %54)
  store %struct.dma_fence* %55, %struct.dma_fence** %13, align 8
  %56 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %57 = call i8* @amdgpu_sync_get_owner(%struct.dma_fence* %56)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** @AMDGPU_FENCE_OWNER_KFD, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  %64 = icmp ne i8* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %112

66:                                               ; preds = %61, %45
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %68 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %69 = call i64 @amdgpu_sync_same_dev(%struct.amdgpu_device* %67, %struct.dma_fence* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i8*, i8** %14, align 8
  %77 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** @AMDGPU_FENCE_OWNER_VM, align 8
  %82 = icmp eq i8* %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** @AMDGPU_FENCE_OWNER_VM, align 8
  %86 = icmp eq i8* %84, %85
  %87 = zext i1 %86 to i32
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %112

90:                                               ; preds = %79, %75, %71
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %94
  br label %112

102:                                              ; preds = %98, %90
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %105 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %106 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %107 = call i32 @amdgpu_sync_fence(%struct.amdgpu_device* %104, %struct.amdgpu_sync* %105, %struct.dma_fence* %106, i32 0)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %101, %89, %65
  %113 = load i32, i32* %15, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %39

115:                                              ; preds = %110, %39
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %36, %19
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv*) #1

declare dso_local i32 @amdgpu_sync_fence(%struct.amdgpu_device*, %struct.amdgpu_sync*, %struct.dma_fence*, i32) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(%struct.dma_resv*) #1

declare dso_local i8* @amdgpu_sync_get_owner(%struct.dma_fence*) #1

declare dso_local i64 @amdgpu_sync_same_dev(%struct.amdgpu_device*, %struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
