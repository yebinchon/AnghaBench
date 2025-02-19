; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_wp_data = type { i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_wp_init(%struct.platform_device* %0, %struct.hdmi_wp_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.hdmi_wp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.hdmi_wp_data* %1, %struct.hdmi_wp_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %11, %struct.resource** %8, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %8, align 8
  %15 = call i32 @devm_ioremap_resource(i32* %13, %struct.resource* %14)
  %16 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %17 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %25 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %33 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
