; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dss_device = type { i32 }
%struct.dsi_data = type { i32, %struct.TYPE_2__, i32, %struct.dss_device* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@DSI_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OMAP DSI rev %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dsi%u_regs\00", align 1
@dsi_dump_dsi_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dsi%u_clks\00", align 1
@dsi_dump_dsi_clocks = common dso_local global i32 0, align 4
@dsi_dump_dsi_irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dss_device*, align 8
  %9 = alloca %struct.dsi_data*, align 8
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.dss_device* @dss_get_device(%struct.device* %13)
  store %struct.dss_device* %14, %struct.dss_device** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.dsi_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.dsi_data* %16, %struct.dsi_data** %9, align 8
  %17 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 3
  store %struct.dss_device* %17, %struct.dss_device** %19, align 8
  %20 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %21 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %22 = call i32 @dsi_init_pll_data(%struct.dss_device* %20, %struct.dsi_data* %21)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %24 = call i32 @dsi_runtime_get(%struct.dsi_data* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %3
  %30 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %31 = load i32, i32* @DSI_REVISION, align 4
  %32 = call i32 @dsi_read_reg(%struct.dsi_data* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @FLD_GET(i32 %34, i32 7, i32 4)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @FLD_GET(i32 %36, i32 3, i32 0)
  %38 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %40 = call i32 @dsi_get_line_buf_size(%struct.dsi_data* %39)
  %41 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %42 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %44 = call i32 @dsi_runtime_put(%struct.dsi_data* %43)
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %46 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %47 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = call i32 @snprintf(i8* %45, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %53 = load i32, i32* @dsi_dump_dsi_regs, align 4
  %54 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %55 = call i8* @dss_debugfs_create_file(%struct.dss_device* %51, i8* %52, i32 %53, %struct.dsi_data* %54)
  %56 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %57 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %60 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %61 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = call i32 @snprintf(i8* %59, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* @dsi_dump_dsi_clocks, align 4
  %68 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %69 = call i8* @dss_debugfs_create_file(%struct.dss_device* %65, i8* %66, i32 %67, %struct.dsi_data* %68)
  %70 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %71 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %29, %27
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.dss_device* @dss_get_device(%struct.device*) #1

declare dso_local %struct.dsi_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dsi_init_pll_data(%struct.dss_device*, %struct.dsi_data*) #1

declare dso_local i32 @dsi_runtime_get(%struct.dsi_data*) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_get_line_buf_size(%struct.dsi_data*) #1

declare dso_local i32 @dsi_runtime_put(%struct.dsi_data*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @dss_debugfs_create_file(%struct.dss_device*, i8*, i32, %struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
