; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_scpi_pm_domain.c_scpi_pm_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_scpi_pm_domain.c_scpi_pm_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.scpi_pm_domain = type { i32, %struct.generic_pm_domain, i32, %struct.scpi_ops* }
%struct.generic_pm_domain = type { i32, i32, i32 }
%struct.scpi_ops = type { i32, i32 }
%struct.genpd_onecell_data = type { i32, %struct.generic_pm_domain** }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device tree node not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"power domains not supported in the firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"num-domains\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"number of domains not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%pOFn.%d\00", align 1
@scpi_pd_power_off = common dso_local global i32 0, align 4
@scpi_pd_power_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scpi_pm_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_pm_domain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.scpi_pm_domain*, align 8
  %7 = alloca %struct.genpd_onecell_data*, align 8
  %8 = alloca %struct.generic_pm_domain**, align 8
  %9 = alloca %struct.scpi_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = call %struct.scpi_ops* (...) @get_scpi_ops()
  store %struct.scpi_ops* %18, %struct.scpi_ops** %9, align 8
  %19 = load %struct.scpi_ops*, %struct.scpi_ops** %9, align 8
  %20 = icmp ne %struct.scpi_ops* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %144

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %144

32:                                               ; preds = %24
  %33 = load %struct.scpi_ops*, %struct.scpi_ops** %9, align 8
  %34 = getelementptr inbounds %struct.scpi_ops, %struct.scpi_ops* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.scpi_ops*, %struct.scpi_ops** %9, align 8
  %39 = getelementptr inbounds %struct.scpi_ops, %struct.scpi_ops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %144

47:                                               ; preds = %37
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i32 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %144

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @devm_kcalloc(%struct.device* %58, i32 %59, i32 32, i32 %60)
  %62 = bitcast i8* %61 to %struct.scpi_pm_domain*
  store %struct.scpi_pm_domain* %62, %struct.scpi_pm_domain** %6, align 8
  %63 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %64 = icmp ne %struct.scpi_pm_domain* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %144

68:                                               ; preds = %57
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %69, i32 16, i32 %70)
  store %struct.genpd_onecell_data* %71, %struct.genpd_onecell_data** %7, align 8
  %72 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %73 = icmp ne %struct.genpd_onecell_data* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %144

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @devm_kcalloc(%struct.device* %78, i32 %79, i32 8, i32 %80)
  %82 = bitcast i8* %81 to %struct.generic_pm_domain**
  store %struct.generic_pm_domain** %82, %struct.generic_pm_domain*** %8, align 8
  %83 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %8, align 8
  %84 = icmp ne %struct.generic_pm_domain** %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %144

88:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %129, %88
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %134

93:                                               ; preds = %89
  %94 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %95 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %94, i32 0, i32 1
  %96 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %96, i64 %98
  store %struct.generic_pm_domain* %95, %struct.generic_pm_domain** %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %102 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.scpi_ops*, %struct.scpi_ops** %9, align 8
  %104 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %105 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %104, i32 0, i32 3
  store %struct.scpi_ops* %103, %struct.scpi_ops** %105, align 8
  %106 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %107 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @sprintf(i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %109, i32 %110)
  %112 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %113 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %116 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @scpi_pd_power_off, align 4
  %119 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %120 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @scpi_pd_power_on, align 4
  %123 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %124 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %127 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %126, i32 0, i32 1
  %128 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %127, i32* null, i32 1)
  br label %129

129:                                              ; preds = %93
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = load %struct.scpi_pm_domain*, %struct.scpi_pm_domain** %6, align 8
  %133 = getelementptr inbounds %struct.scpi_pm_domain, %struct.scpi_pm_domain* %132, i32 1
  store %struct.scpi_pm_domain* %133, %struct.scpi_pm_domain** %6, align 8
  br label %89

134:                                              ; preds = %89
  %135 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %8, align 8
  %136 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %137 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %136, i32 0, i32 1
  store %struct.generic_pm_domain** %135, %struct.generic_pm_domain*** %137, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %140 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.device_node*, %struct.device_node** %5, align 8
  %142 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %143 = call i32 @of_genpd_add_provider_onecell(%struct.device_node* %141, %struct.genpd_onecell_data* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %134, %85, %74, %65, %52, %42, %27, %21
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.scpi_ops* @get_scpi_ops(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, %struct.device_node*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(%struct.device_node*, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
