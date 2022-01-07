; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.etnaviv_gem_object = type { %struct.page**, %struct.sg_table*, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.sg_table = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.etnaviv_gem_object*)* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate sgt: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca %struct.page**, align 8
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sg_table*, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  %8 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %8, i32 0, i32 4
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %11, i32 0, i32 0
  %13 = load %struct.page**, %struct.page*** %12, align 8
  %14 = icmp ne %struct.page** %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.etnaviv_gem_object*)*, i32 (%struct.etnaviv_gem_object*)** %19, align 8
  %21 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %22 = call i32 %20(%struct.etnaviv_gem_object* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.page** @ERR_PTR(i32 %26)
  store %struct.page** %27, %struct.page*** %2, align 8
  br label %72

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %30, i32 0, i32 1
  %32 = load %struct.sg_table*, %struct.sg_table** %31, align 8
  %33 = icmp ne %struct.sg_table* %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  %35 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %5, align 8
  %39 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %40 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %45, i32 0, i32 0
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.sg_table* @drm_prime_pages_to_sg(%struct.page** %47, i32 %48)
  store %struct.sg_table* %49, %struct.sg_table** %7, align 8
  %50 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %51 = call i64 @IS_ERR(%struct.sg_table* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %34
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.sg_table* %57)
  %59 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %61 = call %struct.page** @ERR_CAST(%struct.sg_table* %60)
  store %struct.page** %61, %struct.page*** %2, align 8
  br label %72

62:                                               ; preds = %34
  %63 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %64 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %65 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %64, i32 0, i32 1
  store %struct.sg_table* %63, %struct.sg_table** %65, align 8
  %66 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %67 = call i32 @etnaviv_gem_scatter_map(%struct.etnaviv_gem_object* %66)
  br label %68

68:                                               ; preds = %62, %29
  %69 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %70 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %69, i32 0, i32 0
  %71 = load %struct.page**, %struct.page*** %70, align 8
  store %struct.page** %71, %struct.page*** %2, align 8
  br label %72

72:                                               ; preds = %68, %53, %25
  %73 = load %struct.page**, %struct.page*** %2, align 8
  ret %struct.page** %73
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.page** @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @drm_prime_pages_to_sg(%struct.page**, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local %struct.page** @ERR_CAST(%struct.sg_table*) #1

declare dso_local i32 @etnaviv_gem_scatter_map(%struct.etnaviv_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
