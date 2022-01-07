; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_scmi_pm_domain.c_scmi_pm_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_scmi_pm_domain.c_scmi_pm_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_device = type { %struct.scmi_handle*, %struct.device }
%struct.scmi_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scmi_handle*)*, i64 (%struct.scmi_handle*, i32, i64*)*, i32 (%struct.scmi_handle*, i32)* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.scmi_pm_domain = type { i32, %struct.generic_pm_domain, i32, %struct.scmi_handle* }
%struct.generic_pm_domain = type { i32, i32, i32 }
%struct.genpd_onecell_data = type { i32, %struct.generic_pm_domain** }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"number of domains not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scmi_pd_power_off = common dso_local global i32 0, align 4
@scmi_pd_power_on = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to get state for domain %d\0A\00", align 1
@SCMI_POWER_STATE_GENERIC_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_device*)* @scmi_pm_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_pm_domain_probe(%struct.scmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.scmi_pm_domain*, align 8
  %9 = alloca %struct.genpd_onecell_data*, align 8
  %10 = alloca %struct.generic_pm_domain**, align 8
  %11 = alloca %struct.scmi_handle*, align 8
  %12 = alloca i64, align 8
  store %struct.scmi_device* %0, %struct.scmi_device** %3, align 8
  %13 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %18, i32 0, i32 0
  %20 = load %struct.scmi_handle*, %struct.scmi_handle** %19, align 8
  store %struct.scmi_handle* %20, %struct.scmi_handle** %11, align 8
  %21 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %22 = icmp ne %struct.scmi_handle* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %25 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %154

31:                                               ; preds = %23
  %32 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %33 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.scmi_handle*)*, i32 (%struct.scmi_handle*)** %35, align 8
  %37 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %38 = call i32 %36(%struct.scmi_handle* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %154

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @devm_kcalloc(%struct.device* %46, i32 %47, i32 32, i32 %48)
  %50 = bitcast i8* %49 to %struct.scmi_pm_domain*
  store %struct.scmi_pm_domain* %50, %struct.scmi_pm_domain** %8, align 8
  %51 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %52 = icmp ne %struct.scmi_pm_domain* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %154

56:                                               ; preds = %45
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %57, i32 16, i32 %58)
  store %struct.genpd_onecell_data* %59, %struct.genpd_onecell_data** %9, align 8
  %60 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %9, align 8
  %61 = icmp ne %struct.genpd_onecell_data* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %154

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @devm_kcalloc(%struct.device* %66, i32 %67, i32 8, i32 %68)
  %70 = bitcast i8* %69 to %struct.generic_pm_domain**
  store %struct.generic_pm_domain** %70, %struct.generic_pm_domain*** %10, align 8
  %71 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %10, align 8
  %72 = icmp ne %struct.generic_pm_domain** %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %154

76:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %139, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %144

81:                                               ; preds = %77
  %82 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %83 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %82, i32 0, i32 1
  %84 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %10, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %84, i64 %86
  store %struct.generic_pm_domain* %83, %struct.generic_pm_domain** %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %90 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %92 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %93 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %92, i32 0, i32 3
  store %struct.scmi_handle* %91, %struct.scmi_handle** %93, align 8
  %94 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %95 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32 (%struct.scmi_handle*, i32)*, i32 (%struct.scmi_handle*, i32)** %97, align 8
  %99 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 %98(%struct.scmi_handle* %99, i32 %100)
  %102 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %103 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %105 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %108 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @scmi_pd_power_off, align 4
  %111 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %112 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @scmi_pd_power_on, align 4
  %115 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %116 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %119 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64 (%struct.scmi_handle*, i32, i64*)*, i64 (%struct.scmi_handle*, i32, i64*)** %121, align 8
  %123 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i64 %122(%struct.scmi_handle* %123, i32 %124, i64* %12)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %81
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dev_warn(%struct.device* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %139

131:                                              ; preds = %81
  %132 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %133 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %132, i32 0, i32 1
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @SCMI_POWER_STATE_GENERIC_OFF, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %133, i32* null, i32 %137)
  br label %139

139:                                              ; preds = %131, %127
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  %142 = load %struct.scmi_pm_domain*, %struct.scmi_pm_domain** %8, align 8
  %143 = getelementptr inbounds %struct.scmi_pm_domain, %struct.scmi_pm_domain* %142, i32 1
  store %struct.scmi_pm_domain* %143, %struct.scmi_pm_domain** %8, align 8
  br label %77

144:                                              ; preds = %77
  %145 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %10, align 8
  %146 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %9, align 8
  %147 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %146, i32 0, i32 1
  store %struct.generic_pm_domain** %145, %struct.generic_pm_domain*** %147, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %9, align 8
  %150 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.device_node*, %struct.device_node** %7, align 8
  %152 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %9, align 8
  %153 = call i32 @of_genpd_add_provider_onecell(%struct.device_node* %151, %struct.genpd_onecell_data* %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %144, %73, %62, %53, %41, %28
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(%struct.device_node*, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
