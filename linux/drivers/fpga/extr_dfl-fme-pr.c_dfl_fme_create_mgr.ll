; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_mgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_create_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.dfl_feature_platform_data = type { %struct.platform_device* }
%struct.dfl_feature = type { i64 }
%struct.dfl_fme_mgr_pdata = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DFL_FPGA_FME_MGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.dfl_feature_platform_data*, %struct.dfl_feature*)* @dfl_fme_create_mgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @dfl_fme_create_mgr(%struct.dfl_feature_platform_data* %0, %struct.dfl_feature* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca %struct.dfl_feature*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dfl_fme_mgr_pdata, align 8
  %9 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %4, align 8
  store %struct.dfl_feature* %1, %struct.dfl_feature** %5, align 8
  %10 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %10, i32 0, i32 0
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dfl_feature*, %struct.dfl_feature** %5, align 8
  %16 = getelementptr inbounds %struct.dfl_feature, %struct.dfl_feature* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.platform_device* @ERR_PTR(i32 %21)
  store %struct.platform_device* %22, %struct.platform_device** %3, align 8
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.dfl_feature*, %struct.dfl_feature** %5, align 8
  %25 = getelementptr inbounds %struct.dfl_feature, %struct.dfl_feature* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.dfl_fme_mgr_pdata, %struct.dfl_fme_mgr_pdata* %8, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @DFL_FPGA_FME_MGR, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.platform_device* @platform_device_alloc(i32 %28, i32 %31)
  store %struct.platform_device* %32, %struct.platform_device** %6, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = icmp ne %struct.platform_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.platform_device* @ERR_PTR(i32 %36)
  store %struct.platform_device* %37, %struct.platform_device** %3, align 8
  br label %62

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %45 = call i32 @platform_device_add_data(%struct.platform_device* %44, %struct.dfl_fme_mgr_pdata* %8, i32 8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %57

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %51 = call i32 @platform_device_add(%struct.platform_device* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %56, %struct.platform_device** %3, align 8
  br label %62

57:                                               ; preds = %54, %48
  %58 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %59 = call i32 @platform_device_put(%struct.platform_device* %58)
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.platform_device* @ERR_PTR(i32 %60)
  store %struct.platform_device* %61, %struct.platform_device** %3, align 8
  br label %62

62:                                               ; preds = %57, %55, %35, %19
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  ret %struct.platform_device* %63
}

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.dfl_fme_mgr_pdata*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
