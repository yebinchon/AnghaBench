; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_probe_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_probe_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i8**, i8*, i8**, i32, i32 }

@DSS_CONTROL = common dso_local global i32 0, align 4
@DSS_CLK_SRC_FCK = common dso_local global i8* null, align 8
@DSS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OMAP DSS rev %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*)* @dss_probe_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_probe_hardware(%struct.dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  %6 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %7 = call i32 @dss_runtime_get(%struct.dss_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %14 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_get_rate(i32 %15)
  %17 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %18 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %20 = load i32, i32* @DSS_CONTROL, align 4
  %21 = call i32 @REG_FLD_MOD(%struct.dss_device* %19, i32 %20, i32 0, i32 0, i32 0)
  %22 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %23 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %24 = call i32 @dss_select_dispc_clk_source(%struct.dss_device* %22, i8* %23)
  %25 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %26 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %27 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %31 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %32 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %36 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %37 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %39 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %40 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** @DSS_CLK_SRC_FCK, align 8
  %44 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %45 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %49 = load i32, i32* @DSS_REVISION, align 4
  %50 = call i32 @dss_read_reg(%struct.dss_device* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @FLD_GET(i32 %51, i32 7, i32 4)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @FLD_GET(i32 %53, i32 3, i32 0)
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %57 = call i32 @dss_runtime_put(%struct.dss_device* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %12, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dss_runtime_get(%struct.dss_device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dss_select_dispc_clk_source(%struct.dss_device*, i8*) #1

declare dso_local i32 @dss_read_reg(%struct.dss_device*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dss_runtime_put(%struct.dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
