; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_alloc_bo_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_alloc_bo_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_bo = type { i32 }

@QXL_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate VRAM BO\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_alloc_bo_reserved(%struct.qxl_device* %0, %struct.qxl_release* %1, i64 %2, %struct.qxl_bo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.qxl_release*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qxl_bo**, align 8
  %10 = alloca %struct.qxl_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %6, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.qxl_bo** %3, %struct.qxl_bo*** %9, align 8
  %12 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* @QXL_GEM_DOMAIN_VRAM, align 4
  %15 = call i32 @qxl_bo_create(%struct.qxl_device* %12, i64 %13, i32 0, i32 0, i32 %14, i32* null, %struct.qxl_bo** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %10, align 8
  %24 = call i32 @qxl_release_list_add(%struct.qxl_release* %22, %struct.qxl_bo* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.qxl_bo*, %struct.qxl_bo** %10, align 8
  %30 = load %struct.qxl_bo**, %struct.qxl_bo*** %9, align 8
  store %struct.qxl_bo* %29, %struct.qxl_bo** %30, align 8
  store i32 0, i32* %5, align 4
  br label %34

31:                                               ; preds = %27
  %32 = call i32 @qxl_bo_unref(%struct.qxl_bo** %10)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @qxl_bo_create(%struct.qxl_device*, i64, i32, i32, i32, i32*, %struct.qxl_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @qxl_release_list_add(%struct.qxl_release*, %struct.qxl_bo*) #1

declare dso_local i32 @qxl_bo_unref(%struct.qxl_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
