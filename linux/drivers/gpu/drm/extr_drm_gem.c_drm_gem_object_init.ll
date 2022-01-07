; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { %struct.file* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"drm mm object\00", align 1
@VM_NORESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_object_init(%struct.drm_device* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @drm_gem_private_object_init(%struct.drm_device* %9, %struct.drm_gem_object* %10, i64 %11)
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @VM_NORESERVE, align 4
  %15 = call %struct.file* @shmem_file_setup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14)
  store %struct.file* %15, %struct.file** %8, align 8
  %16 = load %struct.file*, %struct.file** %8, align 8
  %17 = call i64 @IS_ERR(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.file* %20)
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.file*, %struct.file** %8, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  store %struct.file* %23, %struct.file** %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local %struct.file* @shmem_file_setup(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
