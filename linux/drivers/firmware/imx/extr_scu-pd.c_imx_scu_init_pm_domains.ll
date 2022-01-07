; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_scu_init_pm_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_scu_init_pm_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imx_sc_pd_soc = type { i32, %struct.imx_sc_pd_range* }
%struct.imx_sc_pd_range = type { i32 }
%struct.generic_pm_domain = type { i32 }
%struct.genpd_onecell_data = type { i32, i64, %struct.generic_pm_domain** }
%struct.imx_sc_pm_domain = type { %struct.generic_pm_domain }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"added power domain %s\0A\00", align 1
@imx_scu_pd_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.imx_sc_pd_soc*)* @imx_scu_init_pm_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_init_pm_domains(%struct.device* %0, %struct.imx_sc_pd_soc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imx_sc_pd_soc*, align 8
  %6 = alloca %struct.imx_sc_pd_range*, align 8
  %7 = alloca %struct.generic_pm_domain**, align 8
  %8 = alloca %struct.genpd_onecell_data*, align 8
  %9 = alloca %struct.imx_sc_pm_domain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.imx_sc_pd_soc* %1, %struct.imx_sc_pd_soc** %5, align 8
  %13 = load %struct.imx_sc_pd_soc*, %struct.imx_sc_pd_soc** %5, align 8
  %14 = getelementptr inbounds %struct.imx_sc_pd_soc, %struct.imx_sc_pd_soc* %13, i32 0, i32 1
  %15 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %14, align 8
  store %struct.imx_sc_pd_range* %15, %struct.imx_sc_pd_range** %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.imx_sc_pd_soc*, %struct.imx_sc_pd_soc** %5, align 8
  %19 = getelementptr inbounds %struct.imx_sc_pd_soc, %struct.imx_sc_pd_soc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %23, i64 %25
  %27 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.generic_pm_domain** @devm_kcalloc(%struct.device* %36, i64 %37, i32 8, i32 %38)
  store %struct.generic_pm_domain** %39, %struct.generic_pm_domain*** %7, align 8
  %40 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %7, align 8
  %41 = icmp ne %struct.generic_pm_domain** %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %118

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %46, i32 24, i32 %47)
  store %struct.genpd_onecell_data* %48, %struct.genpd_onecell_data** %8, align 8
  %49 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %50 = icmp ne %struct.genpd_onecell_data* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %118

54:                                               ; preds = %45
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %100, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.imx_sc_pd_soc*, %struct.imx_sc_pd_soc** %5, align 8
  %58 = getelementptr inbounds %struct.imx_sc_pd_soc, %struct.imx_sc_pd_soc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %96, %61
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %64, i64 %66
  %68 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %63, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %62
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.imx_sc_pd_range*, %struct.imx_sc_pd_range** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.imx_sc_pd_range, %struct.imx_sc_pd_range* %74, i64 %76
  %78 = call %struct.imx_sc_pm_domain* @imx_scu_add_pm_domain(%struct.device* %72, i32 %73, %struct.imx_sc_pd_range* %77)
  store %struct.imx_sc_pm_domain* %78, %struct.imx_sc_pm_domain** %9, align 8
  %79 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %9, align 8
  %80 = call i64 @IS_ERR_OR_NULL(%struct.imx_sc_pm_domain* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %96

83:                                               ; preds = %71
  %84 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %9, align 8
  %85 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %84, i32 0, i32 0
  %86 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %7, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  %89 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %86, i64 %87
  store %struct.generic_pm_domain* %85, %struct.generic_pm_domain** %89, align 8
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %9, align 8
  %92 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %62

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %55

103:                                              ; preds = %55
  %104 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %7, align 8
  %105 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %106 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %105, i32 0, i32 2
  store %struct.generic_pm_domain** %104, %struct.generic_pm_domain*** %106, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %109 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @imx_scu_pd_xlate, align 4
  %111 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %112 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %117 = call i32 @of_genpd_add_provider_onecell(i32 %115, %struct.genpd_onecell_data* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %103, %51, %42
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.generic_pm_domain** @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_sc_pm_domain* @imx_scu_add_pm_domain(%struct.device*, i32, %struct.imx_sc_pd_range*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.imx_sc_pm_domain*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
