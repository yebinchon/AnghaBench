; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_manager_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_sa_manager = type { i32, i32, i32, i32*, i32*, i32, i32*, i8*, i8*, i32 }

@AMDGPU_SA_NUM_FENCE_LISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"(%d) failed to allocate bo for manager\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_sa_bo_manager_init(%struct.amdgpu_device* %0, %struct.amdgpu_sa_manager* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_sa_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_sa_manager* %1, %struct.amdgpu_sa_manager** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %15 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %14, i32 0, i32 9
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %18 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %27 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %29 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %28, i32 0, i32 5
  %30 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  %32 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %33 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %47, %5
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @AMDGPU_SA_NUM_FENCE_LISTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %41 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %56 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %55, i32 0, i32 3
  %57 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %58 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %57, i32 0, i32 2
  %59 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %60 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %59, i32 0, i32 1
  %61 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %51, i32 %52, i8* %53, i8* %54, i32** %56, i32* %58, i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %80

71:                                               ; preds = %50
  %72 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %73 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %8, align 8
  %76 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memset(i32 %74, i32 0, i32 %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %71, %64
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i8*, i8*, i32**, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
