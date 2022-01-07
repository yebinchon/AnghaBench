; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dss_device = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"omapdrm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dss_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.dss_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.dss_device* %8, %struct.dss_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @component_bind_all(%struct.device* %9, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = call i32 @pm_set_vt_switch(i32 0)
  %17 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %18 = call i32 @omapdss_set_dss(%struct.dss_device* %17)
  %19 = call %struct.platform_device* @platform_device_register_simple(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0)
  store %struct.platform_device* %19, %struct.platform_device** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = call i64 @IS_ERR(%struct.platform_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @component_unbind_all(%struct.device* %24, i32* null)
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.platform_device* %26)
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %15
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %31 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %30, i32 0, i32 0
  store %struct.platform_device* %29, %struct.platform_device** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %23, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.dss_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, i32*) #1

declare dso_local i32 @pm_set_vt_switch(i32) #1

declare dso_local i32 @omapdss_set_dss(%struct.dss_device*) #1

declare dso_local %struct.platform_device* @platform_device_register_simple(i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
