; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc358764 = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no reset GPIO pin provided\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot find panel (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc358764*)* @tc358764_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_parse_dt(%struct.tc358764* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc358764*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.tc358764* %0, %struct.tc358764** %3, align 8
  %6 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %7 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %11 = call i32 @devm_gpiod_get(%struct.device* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %13 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %15 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %23 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %28 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %27, i32 0, i32 1
  %29 = load %struct.device*, %struct.device** %28, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %33 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %32, i32 0, i32 0
  %34 = call i32 @drm_of_find_panel_or_bridge(i32 %31, i32 1, i32 0, i32* %33, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %26
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
