; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_couple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_couple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.device_link = type { i32 }
%struct.device = type { i32 }

@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@DL_FLAG_AUTOREMOVE_CONSUMER = common dso_local global i32 0, align 4
@tegra_dc_match_by_pipe = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to link controllers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"coupled to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dc*)* @tegra_dc_couple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_couple(%struct.tegra_dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_link*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  %7 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %20 = load i32, i32* @DL_FLAG_AUTOREMOVE_CONSUMER, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @tegra_dc_match_by_pipe, align 4
  %28 = call %struct.device* @driver_find_device(i32 %26, i32* null, i32* null, i32 %27)
  store %struct.device* %28, %struct.device** %6, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = icmp ne %struct.device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %18
  %35 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.device_link* @device_link_add(%struct.TYPE_6__* %37, %struct.device* %38, i32 %39)
  store %struct.device_link* %40, %struct.device_link** %5, align 8
  %41 = load %struct.device_link*, %struct.device_link** %5, align 8
  %42 = icmp ne %struct.device_link* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @dev_err(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 @dev_name(%struct.device* %54)
  %56 = call i32 @dev_dbg(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %13, %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %43, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.device* @driver_find_device(i32, i32*, i32*, i32) #1

declare dso_local %struct.device_link* @device_link_add(%struct.TYPE_6__*, %struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
