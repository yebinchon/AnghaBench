; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i64, i32, i64, i64 }

@hibmc_mode_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to init de: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to init vdac: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hibmc_drm_private*)* @hibmc_kms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmc_kms_init(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %5 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %6 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @drm_mode_config_init(%struct.TYPE_4__* %7)
  %9 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %12 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %17 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %22 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1920, i32* %25, align 8
  %26 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %27 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 1440, i32* %30, align 4
  %31 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %32 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %35 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32 %33, i32* %38, align 8
  %39 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %40 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 24, i32* %43, align 8
  %44 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %45 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %50 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i8* bitcast (i32* @hibmc_mode_funcs to i8*), i8** %53, align 8
  %54 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %55 = call i32 @hibmc_de_init(%struct.hibmc_drm_private* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %1
  %63 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %64 = call i32 @hibmc_vdac_init(%struct.hibmc_drm_private* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %67, %58
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_4__*) #1

declare dso_local i32 @hibmc_de_init(%struct.hibmc_drm_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @hibmc_vdac_init(%struct.hibmc_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
