; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.regulator*, %struct.TYPE_2__* }
%struct.regulator = type { i32 }
%struct.TYPE_2__ = type { i32 }

@dpi_soc_devices = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vdds_dsi\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't get VDDS_DSI regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*)* @dpi_init_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_init_regulator(%struct.dpi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.regulator*, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %3, align 8
  %5 = load i32, i32* @dpi_soc_devices, align 4
  %6 = call i32 @soc_device_match(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %11 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.regulator* @devm_regulator_get(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %14, %struct.regulator** %4, align 8
  %15 = load %struct.regulator*, %struct.regulator** %4, align 8
  %16 = call i64 @IS_ERR(%struct.regulator* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.regulator*, %struct.regulator** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.regulator* %19)
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.regulator*, %struct.regulator** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.regulator* %27)
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %9
  %30 = load %struct.regulator*, %struct.regulator** %4, align 8
  %31 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %32 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %31, i32 0, i32 0
  store %struct.regulator* %30, %struct.regulator** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %26, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @soc_device_match(i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
