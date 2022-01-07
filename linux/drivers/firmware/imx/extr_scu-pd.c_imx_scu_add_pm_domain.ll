; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_scu_add_pm_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_scu_add_pm_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_pm_domain = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.imx_sc_pd_range = type { i64, i8*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_sc_pd_power_off = common dso_local global i32 0, align 4
@imx_sc_pd_power_on = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%i\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IMX_SC_R_LAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid pd %s rsrc id %d found\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to init pd %s rsrc id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_sc_pm_domain* (%struct.device*, i32, %struct.imx_sc_pd_range*)* @imx_scu_add_pm_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_sc_pm_domain* @imx_scu_add_pm_domain(%struct.device* %0, i32 %1, %struct.imx_sc_pd_range* %2) #0 {
  %4 = alloca %struct.imx_sc_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imx_sc_pd_range*, align 8
  %8 = alloca %struct.imx_sc_pm_domain*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.imx_sc_pd_range* %2, %struct.imx_sc_pd_range** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.imx_sc_pm_domain* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.imx_sc_pm_domain* %12, %struct.imx_sc_pm_domain** %8, align 8
  %13 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %14 = icmp ne %struct.imx_sc_pm_domain* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.imx_sc_pm_domain* @ERR_PTR(i32 %17)
  store %struct.imx_sc_pm_domain* %18, %struct.imx_sc_pm_domain** %4, align 8
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %7, align 8
  %21 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %27 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @imx_sc_pd_power_off, align 4
  %29 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %30 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @imx_sc_pd_power_on, align 4
  %33 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %34 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %7, align 8
  %37 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %19
  %41 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %42 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %7, align 8
  %45 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %7, align 8
  %48 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %46, i64 %52)
  br label %62

54:                                               ; preds = %19
  %55 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %56 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %7, align 8
  %59 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %54, %40
  %63 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %64 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %67 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %70 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IMX_SC_R_LAST, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %77 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %80 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %81)
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %85 = call i32 @devm_kfree(%struct.device* %83, %struct.imx_sc_pm_domain* %84)
  store %struct.imx_sc_pm_domain* null, %struct.imx_sc_pm_domain** %4, align 8
  br label %106

86:                                               ; preds = %62
  %87 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %88 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %87, i32 0, i32 2
  %89 = call i32 @pm_genpd_init(%struct.TYPE_2__* %88, i32* null, i32 1)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %95 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %98 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_warn(%struct.device* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %96, i64 %99)
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  %103 = call i32 @devm_kfree(%struct.device* %101, %struct.imx_sc_pm_domain* %102)
  store %struct.imx_sc_pm_domain* null, %struct.imx_sc_pm_domain** %4, align 8
  br label %106

104:                                              ; preds = %86
  %105 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %8, align 8
  store %struct.imx_sc_pm_domain* %105, %struct.imx_sc_pm_domain** %4, align 8
  br label %106

106:                                              ; preds = %104, %92, %74, %15
  %107 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %4, align 8
  ret %struct.imx_sc_pm_domain* %107
}

declare dso_local %struct.imx_sc_pm_domain* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_sc_pm_domain* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.imx_sc_pm_domain*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
