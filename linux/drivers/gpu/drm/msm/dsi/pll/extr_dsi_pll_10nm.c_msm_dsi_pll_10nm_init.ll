; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_msm_dsi_pll_10nm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_msm_dsi_pll_10nm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_10nm = type { i32, i32, %struct.msm_dsi_pll, i32, i8*, i8*, %struct.platform_device* }
%struct.msm_dsi_pll = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"DSI PLL%d\00", align 1
@pll_10nm_list = common dso_local global %struct.dsi_pll_10nm** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"dsi_phy\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DSI_PHY\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to map CMN PHY base\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dsi_pll\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DSI_PLL\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to map PLL base\0A\00", align 1
@dsi_pll_10nm_get_provider = common dso_local global i32 0, align 4
@dsi_pll_10nm_destroy = common dso_local global i32 0, align 4
@dsi_pll_10nm_save_state = common dso_local global i32 0, align 4
@dsi_pll_10nm_restore_state = common dso_local global i32 0, align 4
@dsi_pll_10nm_set_usecase = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register PLL: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_dsi_pll* @msm_dsi_pll_10nm_init(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_pll_10nm*, align 8
  %7 = alloca %struct.msm_dsi_pll*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dsi_pll_10nm* @devm_kzalloc(i32* %10, i32 80, i32 %11)
  store %struct.dsi_pll_10nm* %12, %struct.dsi_pll_10nm** %6, align 8
  %13 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %14 = icmp ne %struct.dsi_pll_10nm* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %17)
  store %struct.msm_dsi_pll* %18, %struct.msm_dsi_pll** %3, align 8
  br label %108

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %24 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %23, i32 0, i32 6
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %27 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %29 = load %struct.dsi_pll_10nm**, %struct.dsi_pll_10nm*** @pll_10nm_list, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %29, i64 %31
  store %struct.dsi_pll_10nm* %28, %struct.dsi_pll_10nm** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = call i8* @msm_ioremap(%struct.platform_device* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %36 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %38 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR_OR_NULL(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %19
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %47)
  store %struct.msm_dsi_pll* %48, %struct.msm_dsi_pll** %3, align 8
  br label %108

49:                                               ; preds = %19
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = call i8* @msm_ioremap(%struct.platform_device* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %53 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %55 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR_OR_NULL(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %64)
  store %struct.msm_dsi_pll* %65, %struct.msm_dsi_pll** %3, align 8
  br label %108

66:                                               ; preds = %49
  %67 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %68 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %67, i32 0, i32 3
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %71 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %70, i32 0, i32 2
  store %struct.msm_dsi_pll* %71, %struct.msm_dsi_pll** %7, align 8
  %72 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %73 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %72, i32 0, i32 0
  store i64 1000000000, i64* %73, align 8
  %74 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %75 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %74, i32 0, i32 1
  store i64 3500000000, i64* %75, align 8
  %76 = load i32, i32* @dsi_pll_10nm_get_provider, align 4
  %77 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %78 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @dsi_pll_10nm_destroy, align 4
  %80 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %81 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @dsi_pll_10nm_save_state, align 4
  %83 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %84 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @dsi_pll_10nm_restore_state, align 4
  %86 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %87 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @dsi_pll_10nm_set_usecase, align 4
  %89 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %90 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %92 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %6, align 8
  %94 = call i32 @pll_10nm_register(%struct.dsi_pll_10nm* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %66
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %102)
  store %struct.msm_dsi_pll* %103, %struct.msm_dsi_pll** %3, align 8
  br label %108

104:                                              ; preds = %66
  %105 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %106 = call i32 @msm_dsi_pll_save_state(%struct.msm_dsi_pll* %105)
  %107 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  store %struct.msm_dsi_pll* %107, %struct.msm_dsi_pll** %3, align 8
  br label %108

108:                                              ; preds = %104, %97, %59, %42, %15
  %109 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  ret %struct.msm_dsi_pll* %109
}

declare dso_local %struct.dsi_pll_10nm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.msm_dsi_pll* @ERR_PTR(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pll_10nm_register(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @msm_dsi_pll_save_state(%struct.msm_dsi_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
