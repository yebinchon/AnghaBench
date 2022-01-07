; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_prime_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_prime_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.sg_table = type { i32 }
%struct.udl_gem_object = type { i32*, %struct.sg_table* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"obj pages is NULL %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64, %struct.sg_table*, %struct.udl_gem_object**)* @udl_prime_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_prime_create(%struct.drm_device* %0, i64 %1, %struct.sg_table* %2, %struct.udl_gem_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca %struct.udl_gem_object**, align 8
  %10 = alloca %struct.udl_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store %struct.udl_gem_object** %3, %struct.udl_gem_object*** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = udiv i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.udl_gem_object**, %struct.udl_gem_object*** %9, align 8
  store %struct.udl_gem_object* null, %struct.udl_gem_object** %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = mul i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.udl_gem_object* @udl_gem_alloc_object(%struct.drm_device* %17, i32 %22)
  store %struct.udl_gem_object* %23, %struct.udl_gem_object** %10, align 8
  %24 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %25 = icmp ne %struct.udl_gem_object* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %56

29:                                               ; preds = %4
  %30 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %31 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %32 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %31, i32 0, i32 1
  store %struct.sg_table* %30, %struct.sg_table** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kvmalloc_array(i32 %33, i32 8, i32 %34)
  %36 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %37 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %39 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %29
  %48 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %49 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %50 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %48, i32* %51, i32* null, i32 %52)
  %54 = load %struct.udl_gem_object*, %struct.udl_gem_object** %10, align 8
  %55 = load %struct.udl_gem_object**, %struct.udl_gem_object*** %9, align 8
  store %struct.udl_gem_object* %54, %struct.udl_gem_object** %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %42, %26
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.udl_gem_object* @udl_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
