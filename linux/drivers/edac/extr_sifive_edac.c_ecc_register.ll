; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sifive_edac.c_ecc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sifive_edac.c_ecc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sifive_edac_priv = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i32*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ecc_err_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sifive_ecc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Sifive ECC Manager\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register with EDAC core\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ecc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecc_register(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sifive_edac_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.sifive_edac_priv* @devm_kzalloc(i32* %6, i32 16, i32 %7)
  store %struct.sifive_edac_priv* %8, %struct.sifive_edac_priv** %4, align 8
  %9 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %10 = icmp ne %struct.sifive_edac_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load i32, i32* @ecc_err_event, align 4
  %16 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %17 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.sifive_edac_priv* %20)
  %22 = call i32 (...) @edac_device_alloc_index()
  %23 = call %struct.TYPE_8__* @edac_device_alloc_ctl_info(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32* null, i32 0, i32 %22)
  %24 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_8__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_8__* %34)
  store i32 %35, i32* %2, align 4
  br label %84

36:                                               ; preds = %14
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %40 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32* %38, i32** %42, align 8
  %43 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i8* @dev_name(i32* %48)
  %50 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %51 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  store i8* %49, i8** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i8* @dev_name(i32* %55)
  %57 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %58 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i8* %56, i8** %60, align 8
  %61 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %62 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i64 @edac_device_add_device(%struct.TYPE_8__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %36
  %67 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %68 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %77

73:                                               ; preds = %36
  %74 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %75 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %74, i32 0, i32 1
  %76 = call i32 @register_sifive_l2_error_notifier(%struct.TYPE_7__* %75)
  store i32 0, i32* %2, align 4
  br label %84

77:                                               ; preds = %66
  %78 = load %struct.sifive_edac_priv*, %struct.sifive_edac_priv** %4, align 8
  %79 = getelementptr inbounds %struct.sifive_edac_priv, %struct.sifive_edac_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @edac_device_free_ctl_info(%struct.TYPE_8__* %80)
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %73, %31, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.sifive_edac_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sifive_edac_priv*) #1

declare dso_local %struct.TYPE_8__* @edac_device_alloc_ctl_info(i32, i8*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @edac_device_alloc_index(...) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @edac_device_add_device(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @register_sifive_l2_error_notifier(%struct.TYPE_7__*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
