; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_impl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_new_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.etnaviv_gem_ops = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.etnaviv_gem_object = type { i32, %struct.drm_gem_object, i32, i32, %struct.etnaviv_gem_ops* }

@ETNA_BO_CACHE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid cache flag: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, %struct.etnaviv_gem_ops*, %struct.drm_gem_object**)* @etnaviv_gem_new_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gem_new_impl(%struct.drm_device* %0, i32 %1, i32 %2, %struct.etnaviv_gem_ops* %3, %struct.drm_gem_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.etnaviv_gem_ops*, align 8
  %11 = alloca %struct.drm_gem_object**, align 8
  %12 = alloca %struct.etnaviv_gem_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.etnaviv_gem_ops* %3, %struct.etnaviv_gem_ops** %10, align 8
  store %struct.drm_gem_object** %4, %struct.drm_gem_object*** %11, align 8
  store i32 24, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @ETNA_BO_CACHE_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %5, %5, %5
  br label %20

19:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ETNA_BO_CACHE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %58

33:                                               ; preds = %20
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.etnaviv_gem_object* @kzalloc(i32 %34, i32 %35)
  store %struct.etnaviv_gem_object* %36, %struct.etnaviv_gem_object** %12, align 8
  %37 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %38 = icmp ne %struct.etnaviv_gem_object* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %58

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.etnaviv_gem_ops*, %struct.etnaviv_gem_ops** %10, align 8
  %47 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %48 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %47, i32 0, i32 4
  store %struct.etnaviv_gem_ops* %46, %struct.etnaviv_gem_ops** %48, align 8
  %49 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %49, i32 0, i32 3
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %53 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %52, i32 0, i32 2
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %12, align 8
  %56 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %55, i32 0, i32 1
  %57 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %11, align 8
  store %struct.drm_gem_object* %56, %struct.drm_gem_object** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %42, %39, %23
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.etnaviv_gem_object* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
