; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_pll.c_hdmi_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_pll.c_hdmi_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.hdmi_pll_data = type { i32, %struct.hdmi_wp_data*, %struct.platform_device* }
%struct.hdmi_wp_data = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to init HDMI PLL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_pll_init(%struct.dss_device* %0, %struct.platform_device* %1, %struct.hdmi_pll_data* %2, %struct.hdmi_wp_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dss_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hdmi_pll_data*, align 8
  %9 = alloca %struct.hdmi_wp_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  store %struct.dss_device* %0, %struct.dss_device** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store %struct.hdmi_pll_data* %2, %struct.hdmi_pll_data** %8, align 8
  store %struct.hdmi_wp_data* %3, %struct.hdmi_wp_data** %9, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %13 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %14 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %13, i32 0, i32 2
  store %struct.platform_device* %12, %struct.platform_device** %14, align 8
  %15 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %9, align 8
  %16 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %17 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %16, i32 0, i32 1
  store %struct.hdmi_wp_data* %15, %struct.hdmi_wp_data** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %20, %struct.resource** %11, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %11, align 8
  %24 = call i32 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %26 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %28 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %34 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %4
  %38 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %40 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %8, align 8
  %41 = call i32 @hdmi_init_pll_data(%struct.dss_device* %38, %struct.platform_device* %39, %struct.hdmi_pll_data* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44, %32
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hdmi_init_pll_data(%struct.dss_device*, %struct.platform_device*, %struct.hdmi_pll_data*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
