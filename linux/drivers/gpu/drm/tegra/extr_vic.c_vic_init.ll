; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32*, i32, i32 }
%struct.tegra_drm_client = type { i32 }
%struct.iommu_group = type { i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { i64 }
%struct.vic = type { i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @vic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_init(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca %struct.vic*, align 8
  %9 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %10 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %11 = call %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client* %10)
  store %struct.tegra_drm_client* %11, %struct.tegra_drm_client** %4, align 8
  %12 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %13 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.iommu_group* @iommu_group_get(i32 %14)
  store %struct.iommu_group* %15, %struct.iommu_group** %5, align 8
  %16 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %17 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_device* @dev_get_drvdata(i32 %18)
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.tegra_drm*, %struct.tegra_drm** %21, align 8
  store %struct.tegra_drm* %22, %struct.tegra_drm** %7, align 8
  %23 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %24 = call %struct.vic* @to_vic(%struct.tegra_drm_client* %23)
  store %struct.vic* %24, %struct.vic** %8, align 8
  %25 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %26 = icmp ne %struct.iommu_group* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %37 = call i32 @iommu_attach_group(i64 %35, %struct.iommu_group* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.vic*, %struct.vic** %8, align 8
  %42 = getelementptr inbounds %struct.vic, %struct.vic* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %119

47:                                               ; preds = %32
  %48 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %49 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vic*, %struct.vic** %8, align 8
  %52 = getelementptr inbounds %struct.vic, %struct.vic* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %27, %1
  %54 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %55 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @host1x_channel_request(i32 %56)
  %58 = load %struct.vic*, %struct.vic** %8, align 8
  %59 = getelementptr inbounds %struct.vic, %struct.vic* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.vic*, %struct.vic** %8, align 8
  %61 = getelementptr inbounds %struct.vic, %struct.vic* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %103

67:                                               ; preds = %53
  %68 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %69 = call i32 @host1x_syncpt_request(%struct.host1x_client* %68, i32 0)
  %70 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %71 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %75 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %98

83:                                               ; preds = %67
  %84 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %85 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %86 = call i32 @tegra_drm_register_client(%struct.tegra_drm* %84, %struct.tegra_drm_client* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %119

91:                                               ; preds = %89
  %92 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %93 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @host1x_syncpt_free(i32 %96)
  br label %98

98:                                               ; preds = %91, %80
  %99 = load %struct.vic*, %struct.vic** %8, align 8
  %100 = getelementptr inbounds %struct.vic, %struct.vic* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @host1x_channel_put(i32 %101)
  br label %103

103:                                              ; preds = %98, %64
  %104 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %105 = icmp ne %struct.iommu_group* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %108 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %113 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %116 = call i32 @iommu_detach_group(i64 %114, %struct.iommu_group* %115)
  br label %117

117:                                              ; preds = %111, %106, %103
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %90, %40
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client*) #1

declare dso_local %struct.iommu_group* @iommu_group_get(i32) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.vic* @to_vic(%struct.tegra_drm_client*) #1

declare dso_local i32 @iommu_attach_group(i64, %struct.iommu_group*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @host1x_channel_request(i32) #1

declare dso_local i32 @host1x_syncpt_request(%struct.host1x_client*, i32) #1

declare dso_local i32 @tegra_drm_register_client(%struct.tegra_drm*, %struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

declare dso_local i32 @iommu_detach_group(i64, %struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
