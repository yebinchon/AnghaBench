; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_msm_dsi_pll_14nm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_msm_dsi_pll_14nm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_14nm = type { i32, i32, %struct.msm_dsi_pll, i32, i8*, i8*, %struct.platform_device* }
%struct.msm_dsi_pll = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PLL%d\00", align 1
@pll_14nm_list = common dso_local global %struct.dsi_pll_14nm** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"dsi_phy\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DSI_PHY\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to map CMN PHY base\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dsi_pll\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DSI_PLL\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to map PLL base\0A\00", align 1
@VCO_MIN_RATE = common dso_local global i32 0, align 4
@VCO_MAX_RATE = common dso_local global i32 0, align 4
@dsi_pll_14nm_get_provider = common dso_local global i32 0, align 4
@dsi_pll_14nm_destroy = common dso_local global i32 0, align 4
@dsi_pll_14nm_disable_seq = common dso_local global i32 0, align 4
@dsi_pll_14nm_save_state = common dso_local global i32 0, align 4
@dsi_pll_14nm_restore_state = common dso_local global i32 0, align 4
@dsi_pll_14nm_set_usecase = common dso_local global i32 0, align 4
@dsi_pll_14nm_enable_seq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register PLL: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_dsi_pll* @msm_dsi_pll_14nm_init(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_pll_14nm*, align 8
  %7 = alloca %struct.msm_dsi_pll*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %13)
  store %struct.msm_dsi_pll* %14, %struct.msm_dsi_pll** %3, align 8
  br label %125

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dsi_pll_14nm* @devm_kzalloc(i32* %17, i32 88, i32 %18)
  store %struct.dsi_pll_14nm* %19, %struct.dsi_pll_14nm** %6, align 8
  %20 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %21 = icmp ne %struct.dsi_pll_14nm* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %24)
  store %struct.msm_dsi_pll* %25, %struct.msm_dsi_pll** %3, align 8
  br label %125

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %31 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %30, i32 0, i32 6
  store %struct.platform_device* %29, %struct.platform_device** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %34 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %36 = load %struct.dsi_pll_14nm**, %struct.dsi_pll_14nm*** @pll_14nm_list, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %36, i64 %38
  store %struct.dsi_pll_14nm* %35, %struct.dsi_pll_14nm** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = call i8* @msm_ioremap(%struct.platform_device* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %43 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %45 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR_OR_NULL(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %26
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %54)
  store %struct.msm_dsi_pll* %55, %struct.msm_dsi_pll** %3, align 8
  br label %125

56:                                               ; preds = %26
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = call i8* @msm_ioremap(%struct.platform_device* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %60 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %62 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR_OR_NULL(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %71)
  store %struct.msm_dsi_pll* %72, %struct.msm_dsi_pll** %3, align 8
  br label %125

73:                                               ; preds = %56
  %74 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %75 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %74, i32 0, i32 3
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %78 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %77, i32 0, i32 2
  store %struct.msm_dsi_pll* %78, %struct.msm_dsi_pll** %7, align 8
  %79 = load i32, i32* @VCO_MIN_RATE, align 4
  %80 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %81 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @VCO_MAX_RATE, align 4
  %83 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %84 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @dsi_pll_14nm_get_provider, align 4
  %86 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %87 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @dsi_pll_14nm_destroy, align 4
  %89 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %90 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @dsi_pll_14nm_disable_seq, align 4
  %92 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %93 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @dsi_pll_14nm_save_state, align 4
  %95 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %96 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @dsi_pll_14nm_restore_state, align 4
  %98 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %99 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @dsi_pll_14nm_set_usecase, align 4
  %101 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %102 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %104 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %106 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* @dsi_pll_14nm_enable_seq, align 4
  %108 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %109 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %6, align 8
  %113 = call i32 @pll_14nm_register(%struct.dsi_pll_14nm* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %73
  %117 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %121)
  store %struct.msm_dsi_pll* %122, %struct.msm_dsi_pll** %3, align 8
  br label %125

123:                                              ; preds = %73
  %124 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  store %struct.msm_dsi_pll* %124, %struct.msm_dsi_pll** %3, align 8
  br label %125

125:                                              ; preds = %123, %116, %66, %49, %22, %11
  %126 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  ret %struct.msm_dsi_pll* %126
}

declare dso_local %struct.msm_dsi_pll* @ERR_PTR(i32) #1

declare dso_local %struct.dsi_pll_14nm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pll_14nm_register(%struct.dsi_pll_14nm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
