; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_dump_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_dump_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"- DISPC -\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dispc fclk source = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fck\09\09%-16lu\0A\00", align 1
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"- DISPC-CORE-CLK -\0A\00", align 1
@DISPC_DIVISOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"lck\09\09%-16lulck div\09%u\0A\00", align 1
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_dump_clocks(%struct.dispc_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.dispc_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %9 = call i64 @dispc_runtime_get(%struct.dispc_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %16 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dss_get_dispc_clk_source(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dss_get_clk_source_name(i32 %20)
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %25 = call i32 @dispc_fclk_rate(%struct.dispc_device* %24)
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %28 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %29 = call i64 @dispc_has_feature(%struct.dispc_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %12
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %35 = load i32, i32* @DISPC_DIVISOR, align 4
  %36 = call i32 @dispc_read_reg(%struct.dispc_device* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @FLD_GET(i32 %37, i32 23, i32 16)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %41 = call i32 @dispc_fclk_rate(%struct.dispc_device* %40)
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %31, %12
  %47 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %50 = call i32 @dispc_dump_clocks_channel(%struct.dispc_device* %47, %struct.seq_file* %48, i32 %49)
  %51 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %52 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %53 = call i64 @dispc_has_feature(%struct.dispc_device* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %59 = call i32 @dispc_dump_clocks_channel(%struct.dispc_device* %56, %struct.seq_file* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %62 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %63 = call i64 @dispc_has_feature(%struct.dispc_device* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  %69 = call i32 @dispc_dump_clocks_channel(%struct.dispc_device* %66, %struct.seq_file* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %72 = call i32 @dispc_runtime_put(%struct.dispc_device* %71)
  br label %73

73:                                               ; preds = %70, %11
  ret void
}

declare dso_local i64 @dispc_runtime_get(%struct.dispc_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @dss_get_dispc_clk_source(i32) #1

declare dso_local i32 @dss_get_clk_source_name(i32) #1

declare dso_local i32 @dispc_fclk_rate(%struct.dispc_device*) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dispc_dump_clocks_channel(%struct.dispc_device*, %struct.seq_file*, i32) #1

declare dso_local i32 @dispc_runtime_put(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
