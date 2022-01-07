; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_private_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_private_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.kirin_drm_private*, i32 }
%struct.kirin_drm_private = type { %struct.TYPE_4__, %struct.TYPE_3__*, i8* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64, %struct.drm_plane, i8* }
%struct.drm_plane = type { i32 }
%struct.kirin_drm_data = type { i64, i64, i8* (%struct.platform_device*, i32*)* }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to alloc kirin_drm_private\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to initialize kirin_priv hw ctx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.kirin_drm_data*)* @kirin_drm_private_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_drm_private_init(%struct.drm_device* %0, %struct.kirin_drm_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.kirin_drm_data*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.kirin_drm_private*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.kirin_drm_data* %1, %struct.kirin_drm_data** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.platform_device* @to_platform_device(i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.kirin_drm_private* @devm_kzalloc(i32 %19, i32 32, i32 %20)
  store %struct.kirin_drm_private* %21, %struct.kirin_drm_private** %7, align 8
  %22 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %23 = icmp ne %struct.kirin_drm_private* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %125

28:                                               ; preds = %2
  %29 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %30 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %29, i32 0, i32 2
  %31 = load i8* (%struct.platform_device*, i32*)*, i8* (%struct.platform_device*, i32*)** %30, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %33 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %34 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i8* %31(%struct.platform_device* %32, i32* %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %28
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %47 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %94, %44
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %51 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %57 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %61, i32* %9, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %67 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %74 = call i32 @kirin_drm_plane_init(%struct.drm_device* %65, %struct.drm_plane* %71, i32 %72, %struct.kirin_drm_data* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %125

79:                                               ; preds = %64
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %82 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %80, i64* %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %89 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i8* %87, i8** %93, align 8
  br label %94

94:                                               ; preds = %79
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %48

97:                                               ; preds = %48
  %98 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %99 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %102 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store %struct.drm_plane* %105, %struct.drm_plane** %8, align 8
  %106 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %107 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %108 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %111 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %112 = call i32 @kirin_drm_crtc_init(%struct.drm_device* %106, i32* %109, %struct.drm_plane* %110, %struct.kirin_drm_data* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %3, align 4
  br label %125

117:                                              ; preds = %97
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %120 = getelementptr inbounds %struct.kirin_drm_private, %struct.kirin_drm_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  %122 = load %struct.kirin_drm_private*, %struct.kirin_drm_private** %7, align 8
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  store %struct.kirin_drm_private* %122, %struct.kirin_drm_private** %124, align 8
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %115, %77, %40, %24
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.kirin_drm_private* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @kirin_drm_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, %struct.kirin_drm_data*) #1

declare dso_local i32 @kirin_drm_crtc_init(%struct.drm_device*, i32*, %struct.drm_plane*, %struct.kirin_drm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
