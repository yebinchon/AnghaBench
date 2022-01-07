; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32*, i32, i32 }
%struct.tegra_drm_client = type { i32 }
%struct.drm_device = type { i32 }
%struct.gr2d = type { i32, i32 }

@HOST1X_SYNCPT_HAS_BASE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to request syncpoint: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @gr2d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_init(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gr2d*, align 8
  %8 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %9 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %10 = call %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client* %9)
  store %struct.tegra_drm_client* %10, %struct.tegra_drm_client** %4, align 8
  %11 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_device* @dev_get_drvdata(i32 %13)
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load i64, i64* @HOST1X_SYNCPT_HAS_BASE, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %17 = call %struct.gr2d* @to_gr2d(%struct.tegra_drm_client* %16)
  store %struct.gr2d* %17, %struct.gr2d** %7, align 8
  %18 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %19 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @host1x_channel_request(i32 %20)
  %22 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %23 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %25 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %107

31:                                               ; preds = %1
  %32 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @host1x_syncpt_request(%struct.host1x_client* %32, i64 %33)
  %35 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %36 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %40 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %49 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %101

53:                                               ; preds = %31
  %54 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %55 = call i32 @host1x_client_iommu_attach(%struct.host1x_client* %54, i32 0)
  %56 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %57 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %59 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %65 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %69 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %94

73:                                               ; preds = %53
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %78 = call i32 @tegra_drm_register_client(i32 %76, %struct.tegra_drm_client* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %83 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %107

88:                                               ; preds = %81
  %89 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %90 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %91 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @host1x_client_iommu_detach(%struct.host1x_client* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %63
  %95 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %96 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @host1x_syncpt_free(i32 %99)
  br label %101

101:                                              ; preds = %94, %45
  %102 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %103 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @host1x_channel_put(i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %101, %87, %28
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.gr2d* @to_gr2d(%struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_channel_request(i32) #1

declare dso_local i32 @host1x_syncpt_request(%struct.host1x_client*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @host1x_client_iommu_attach(%struct.host1x_client*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tegra_drm_register_client(i32, %struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_client_iommu_detach(%struct.host1x_client*, i32) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
