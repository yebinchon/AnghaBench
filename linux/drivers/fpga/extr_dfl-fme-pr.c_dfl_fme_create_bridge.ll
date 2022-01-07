; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_fme_bridge = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dfl_feature_platform_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.dfl_fme_br_pdata = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DFL_FPGA_FME_BRIDGE = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfl_fme_bridge* (%struct.dfl_feature_platform_data*, i32)* @dfl_fme_create_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfl_fme_bridge* @dfl_fme_create_bridge(%struct.dfl_feature_platform_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dfl_fme_bridge*, align 8
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dfl_fme_br_pdata, align 4
  %8 = alloca %struct.dfl_fme_bridge*, align 8
  %9 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.dfl_fme_bridge* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.dfl_fme_bridge* %18, %struct.dfl_fme_bridge** %8, align 8
  %19 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %20 = icmp ne %struct.dfl_fme_bridge* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.dfl_fme_bridge* @ERR_PTR(i32 %22)
  store %struct.dfl_fme_bridge* %23, %struct.dfl_fme_bridge** %3, align 8
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.dfl_fme_br_pdata, %struct.dfl_fme_br_pdata* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.dfl_fme_br_pdata, %struct.dfl_fme_br_pdata* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @DFL_FPGA_FME_BRIDGE, align 4
  %32 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %33 = call %struct.TYPE_9__* @platform_device_alloc(i32 %31, i32 %32)
  %34 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %35 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %34, i32 0, i32 0
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %35, align 8
  %36 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %37 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.dfl_fme_bridge* @ERR_PTR(i32 %41)
  store %struct.dfl_fme_bridge* %42, %struct.dfl_fme_bridge** %3, align 8
  br label %74

43:                                               ; preds = %24
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %46 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.device* %44, %struct.device** %49, align 8
  %50 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %51 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @platform_device_add_data(%struct.TYPE_9__* %52, %struct.dfl_fme_br_pdata* %7, i32 8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %67

57:                                               ; preds = %43
  %58 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %59 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @platform_device_add(%struct.TYPE_9__* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  store %struct.dfl_fme_bridge* %66, %struct.dfl_fme_bridge** %3, align 8
  br label %74

67:                                               ; preds = %64, %56
  %68 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %8, align 8
  %69 = getelementptr inbounds %struct.dfl_fme_bridge, %struct.dfl_fme_bridge* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @platform_device_put(%struct.TYPE_9__* %70)
  %72 = load i32, i32* %9, align 4
  %73 = call %struct.dfl_fme_bridge* @ERR_PTR(i32 %72)
  store %struct.dfl_fme_bridge* %73, %struct.dfl_fme_bridge** %3, align 8
  br label %74

74:                                               ; preds = %67, %65, %40, %21
  %75 = load %struct.dfl_fme_bridge*, %struct.dfl_fme_bridge** %3, align 8
  ret %struct.dfl_fme_bridge* %75
}

declare dso_local %struct.dfl_fme_bridge* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dfl_fme_bridge* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_9__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_9__*, %struct.dfl_fme_br_pdata*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
