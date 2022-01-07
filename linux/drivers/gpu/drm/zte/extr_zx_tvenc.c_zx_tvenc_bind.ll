; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_tvenc.c_zx_tvenc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.resource = type { i32 }
%struct.zx_tvenc = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to remap tvenc region: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to init power control: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to register tvenc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @zx_tvenc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tvenc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.zx_tvenc*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.zx_tvenc* @devm_kzalloc(%struct.device* %17, i32 16, i32 %18)
  store %struct.zx_tvenc* %19, %struct.zx_tvenc** %11, align 8
  %20 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %21 = icmp ne %struct.zx_tvenc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %76

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %28 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %27, i32 0, i32 1
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %31 = call i32 @dev_set_drvdata(%struct.device* %29, %struct.zx_tvenc* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %10, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.resource*, %struct.resource** %10, align 8
  %37 = call i32 @devm_ioremap_resource(%struct.device* %35, %struct.resource* %36)
  %38 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %39 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %41 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %25
  %46 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %47 = getelementptr inbounds %struct.zx_tvenc, %struct.zx_tvenc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @DRM_DEV_ERROR(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %25
  %55 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %56 = call i32 @zx_tvenc_pwrctrl_init(%struct.zx_tvenc* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @DRM_DEV_ERROR(%struct.device* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %54
  %65 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %66 = load %struct.zx_tvenc*, %struct.zx_tvenc** %11, align 8
  %67 = call i32 @zx_tvenc_register(%struct.drm_device* %65, %struct.zx_tvenc* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @DRM_DEV_ERROR(%struct.device* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %70, %59, %45, %22
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.zx_tvenc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.zx_tvenc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @zx_tvenc_pwrctrl_init(%struct.zx_tvenc*) #1

declare dso_local i32 @zx_tvenc_register(%struct.drm_device*, %struct.zx_tvenc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
