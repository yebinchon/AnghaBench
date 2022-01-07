; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_client_blt.c_create_sleeve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_client_blt.c_create_sleeve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sleeve = type { %struct.i915_page_sizes, %struct.sg_table*, %struct.i915_vma* }
%struct.i915_page_sizes = type { i32 }
%struct.i915_vma = type { i32*, %struct.i915_sleeve* }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.sg_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proxy_vma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_sleeve* (%struct.i915_address_space*, %struct.drm_i915_gem_object*, %struct.sg_table*, %struct.i915_page_sizes*)* @create_sleeve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_sleeve* @create_sleeve(%struct.i915_address_space* %0, %struct.drm_i915_gem_object* %1, %struct.sg_table* %2, %struct.i915_page_sizes* %3) #0 {
  %5 = alloca %struct.i915_sleeve*, align 8
  %6 = alloca %struct.i915_address_space*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca %struct.i915_page_sizes*, align 8
  %10 = alloca %struct.i915_sleeve*, align 8
  %11 = alloca %struct.i915_vma*, align 8
  %12 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %6, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %7, align 8
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store %struct.i915_page_sizes* %3, %struct.i915_page_sizes** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.i915_sleeve* @kzalloc(i32 24, i32 %13)
  store %struct.i915_sleeve* %14, %struct.i915_sleeve** %10, align 8
  %15 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %16 = icmp ne %struct.i915_sleeve* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.i915_sleeve* @ERR_PTR(i32 %19)
  store %struct.i915_sleeve* %20, %struct.i915_sleeve** %5, align 8
  br label %54

21:                                               ; preds = %4
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %23 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %24 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %22, %struct.i915_address_space* %23, i32* null)
  store %struct.i915_vma* %24, %struct.i915_vma** %11, align 8
  %25 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %26 = call i64 @IS_ERR(%struct.i915_vma* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.i915_vma* %29)
  store i32 %30, i32* %12, align 4
  br label %49

31:                                               ; preds = %21
  %32 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %33 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %34 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %33, i32 0, i32 1
  store %struct.i915_sleeve* %32, %struct.i915_sleeve** %34, align 8
  %35 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %36 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %35, i32 0, i32 0
  store i32* @proxy_vma_ops, i32** %36, align 8
  %37 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %38 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %39 = getelementptr inbounds %struct.i915_sleeve, %struct.i915_sleeve* %38, i32 0, i32 2
  store %struct.i915_vma* %37, %struct.i915_vma** %39, align 8
  %40 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %41 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %42 = getelementptr inbounds %struct.i915_sleeve, %struct.i915_sleeve* %41, i32 0, i32 1
  store %struct.sg_table* %40, %struct.sg_table** %42, align 8
  %43 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %44 = getelementptr inbounds %struct.i915_sleeve, %struct.i915_sleeve* %43, i32 0, i32 0
  %45 = load %struct.i915_page_sizes*, %struct.i915_page_sizes** %9, align 8
  %46 = bitcast %struct.i915_page_sizes* %44 to i8*
  %47 = bitcast %struct.i915_page_sizes* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  store %struct.i915_sleeve* %48, %struct.i915_sleeve** %5, align 8
  br label %54

49:                                               ; preds = %28
  %50 = load %struct.i915_sleeve*, %struct.i915_sleeve** %10, align 8
  %51 = call i32 @kfree(%struct.i915_sleeve* %50)
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.i915_sleeve* @ERR_PTR(i32 %52)
  store %struct.i915_sleeve* %53, %struct.i915_sleeve** %5, align 8
  br label %54

54:                                               ; preds = %49, %31, %17
  %55 = load %struct.i915_sleeve*, %struct.i915_sleeve** %5, align 8
  ret %struct.i915_sleeve* %55
}

declare dso_local %struct.i915_sleeve* @kzalloc(i32, i32) #1

declare dso_local %struct.i915_sleeve* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.i915_address_space*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.i915_sleeve*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
