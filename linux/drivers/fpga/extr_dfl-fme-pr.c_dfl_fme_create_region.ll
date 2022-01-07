; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_fme_region = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dfl_feature_platform_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.platform_device = type { i32 }
%struct.dfl_fme_region_pdata = type { %struct.platform_device*, %struct.platform_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DFL_FPGA_FME_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfl_fme_region* (%struct.dfl_feature_platform_data*, %struct.platform_device*, %struct.platform_device*, i32)* @dfl_fme_create_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfl_fme_region* @dfl_fme_create_region(%struct.dfl_feature_platform_data* %0, %struct.platform_device* %1, %struct.platform_device* %2, i32 %3) #0 {
  %5 = alloca %struct.dfl_fme_region*, align 8
  %6 = alloca %struct.dfl_feature_platform_data*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dfl_fme_region_pdata, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.dfl_fme_region*, align 8
  %13 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store %struct.platform_device* %2, %struct.platform_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.device*, %struct.device** %11, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.dfl_fme_region* @devm_kzalloc(%struct.device* %20, i32 16, i32 %21)
  store %struct.dfl_fme_region* %22, %struct.dfl_fme_region** %12, align 8
  %23 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %24 = icmp ne %struct.dfl_fme_region* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = call %struct.dfl_fme_region* @ERR_PTR(i32 %26)
  store %struct.dfl_fme_region* %27, %struct.dfl_fme_region** %5, align 8
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %30 = getelementptr inbounds %struct.dfl_fme_region_pdata, %struct.dfl_fme_region_pdata* %10, i32 0, i32 1
  store %struct.platform_device* %29, %struct.platform_device** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %32 = getelementptr inbounds %struct.dfl_fme_region_pdata, %struct.dfl_fme_region_pdata* %10, i32 0, i32 0
  store %struct.platform_device* %31, %struct.platform_device** %32, align 8
  %33 = load i32, i32* @DFL_FPGA_FME_REGION, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_9__* @platform_device_alloc(i32 %33, i32 %36)
  %38 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %39 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %38, i32 0, i32 1
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %41 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.dfl_fme_region* @ERR_PTR(i32 %45)
  store %struct.dfl_fme_region* %46, %struct.dfl_fme_region** %5, align 8
  br label %81

47:                                               ; preds = %28
  %48 = load %struct.device*, %struct.device** %11, align 8
  %49 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %50 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store %struct.device* %48, %struct.device** %53, align 8
  %54 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %55 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @platform_device_add_data(%struct.TYPE_9__* %56, %struct.dfl_fme_region_pdata* %10, i32 16)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %74

61:                                               ; preds = %47
  %62 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %63 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @platform_device_add(%struct.TYPE_9__* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %74

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %72 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  store %struct.dfl_fme_region* %73, %struct.dfl_fme_region** %5, align 8
  br label %81

74:                                               ; preds = %68, %60
  %75 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %12, align 8
  %76 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = call i32 @platform_device_put(%struct.TYPE_9__* %77)
  %79 = load i32, i32* %13, align 4
  %80 = call %struct.dfl_fme_region* @ERR_PTR(i32 %79)
  store %struct.dfl_fme_region* %80, %struct.dfl_fme_region** %5, align 8
  br label %81

81:                                               ; preds = %74, %69, %44, %25
  %82 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %5, align 8
  ret %struct.dfl_fme_region* %82
}

declare dso_local %struct.dfl_fme_region* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dfl_fme_region* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_9__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_9__*, %struct.dfl_fme_region_pdata*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
