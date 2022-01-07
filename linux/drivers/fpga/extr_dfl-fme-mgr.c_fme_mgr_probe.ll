; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-mgr.c_fme_mgr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-mgr.c_fme_mgr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dfl_fme_mgr_pdata = type { i64 }
%struct.fpga_compat_id = type { i32 }
%struct.fme_mgr_priv = type { i64 }
%struct.fpga_manager = type { %struct.fpga_compat_id* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DFL FME FPGA Manager\00", align 1
@fme_mgr_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fme_mgr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_mgr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_fme_mgr_pdata*, align 8
  %5 = alloca %struct.fpga_compat_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fme_mgr_priv*, align 8
  %8 = alloca %struct.fpga_manager*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.dfl_fme_mgr_pdata* @dev_get_platdata(%struct.device* %11)
  store %struct.dfl_fme_mgr_pdata* %12, %struct.dfl_fme_mgr_pdata** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 8, i32 %16)
  %18 = bitcast i8* %17 to %struct.fme_mgr_priv*
  store %struct.fme_mgr_priv* %18, %struct.fme_mgr_priv** %7, align 8
  %19 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %20 = icmp ne %struct.fme_mgr_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %1
  %25 = load %struct.dfl_fme_mgr_pdata*, %struct.dfl_fme_mgr_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.dfl_fme_mgr_pdata, %struct.dfl_fme_mgr_pdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.dfl_fme_mgr_pdata*, %struct.dfl_fme_mgr_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.dfl_fme_mgr_pdata, %struct.dfl_fme_mgr_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %34 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %37 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %9, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.resource*, %struct.resource** %9, align 8
  %46 = call i64 @devm_ioremap_resource(%struct.device* %44, %struct.resource* %45)
  %47 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %48 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %50 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @IS_ERR(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %56 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @PTR_ERR(i64 %57)
  store i32 %58, i32* %2, align 4
  br label %93

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @devm_kzalloc(%struct.device* %61, i32 4, i32 %62)
  %64 = bitcast i8* %63 to %struct.fpga_compat_id*
  store %struct.fpga_compat_id* %64, %struct.fpga_compat_id** %5, align 8
  %65 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %5, align 8
  %66 = icmp ne %struct.fpga_compat_id* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %93

70:                                               ; preds = %60
  %71 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %72 = getelementptr inbounds %struct.fme_mgr_priv, %struct.fme_mgr_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %5, align 8
  %75 = call i32 @fme_mgr_get_compat_id(i64 %73, %struct.fpga_compat_id* %74)
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.fme_mgr_priv*, %struct.fme_mgr_priv** %7, align 8
  %78 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* @fme_mgr_ops, %struct.fme_mgr_priv* %77)
  store %struct.fpga_manager* %78, %struct.fpga_manager** %8, align 8
  %79 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %80 = icmp ne %struct.fpga_manager* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %93

84:                                               ; preds = %70
  %85 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %5, align 8
  %86 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %87 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %86, i32 0, i32 0
  store %struct.fpga_compat_id* %85, %struct.fpga_compat_id** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.fpga_manager* %89)
  %91 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %92 = call i32 @fpga_mgr_register(%struct.fpga_manager* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %84, %81, %67, %54, %21
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.dfl_fme_mgr_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @fme_mgr_get_compat_id(i64, %struct.fpga_compat_id*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.fme_mgr_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
