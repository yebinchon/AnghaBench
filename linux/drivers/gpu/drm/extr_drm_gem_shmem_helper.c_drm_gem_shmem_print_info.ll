; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_gem_shmem_object = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pages_use_count=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"vmap_use_count=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vaddr=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_shmem_print_info(%struct.drm_printer* %0, i32 %1, %struct.drm_gem_object* %2) #0 {
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_gem_object* %2, %struct.drm_gem_object** %6, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %9 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %8)
  store %struct.drm_gem_shmem_object* %9, %struct.drm_gem_shmem_object** %7, align 8
  %10 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %7, align 8
  %13 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @drm_printf_indent(%struct.drm_printer* %10, i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %7, align 8
  %19 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @drm_printf_indent(%struct.drm_printer* %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %7, align 8
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_printf_indent(%struct.drm_printer* %22, i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_printf_indent(%struct.drm_printer*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
