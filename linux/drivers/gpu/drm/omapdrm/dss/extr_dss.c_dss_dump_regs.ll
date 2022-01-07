; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dss_device* }
%struct.dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"%-35s %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DSS_REVISION\00", align 1
@DSS_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DSS_SYSCONFIG\00", align 1
@DSS_SYSCONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"DSS_SYSSTATUS\00", align 1
@DSS_SYSSTATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"DSS_CONTROL\00", align 1
@DSS_CONTROL = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i64 0, align 8
@OMAP_DSS_OUTPUT_SDI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"DSS_SDI_CONTROL\00", align 1
@DSS_SDI_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"DSS_PLL_CONTROL\00", align 1
@DSS_PLL_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"DSS_SDI_STATUS\00", align 1
@DSS_SDI_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dss_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_dump_regs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dss_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  store %struct.dss_device* %9, %struct.dss_device** %6, align 8
  %10 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %11 = call i64 @dss_runtime_get(%struct.dss_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %17 = load i32, i32* @DSS_REVISION, align 4
  %18 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %16, i32 %17)
  %19 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %22 = load i32, i32* @DSS_SYSCONFIG, align 4
  %23 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %21, i32 %22)
  %24 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %27 = load i32, i32* @DSS_SYSSTATUS, align 4
  %28 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %26, i32 %27)
  %29 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %32 = load i32, i32* @DSS_CONTROL, align 4
  %33 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %31, i32 %32)
  %34 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %36 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @OMAP_DSS_CHANNEL_LCD, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OMAP_DSS_OUTPUT_SDI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %14
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %49 = load i32, i32* @DSS_SDI_CONTROL, align 4
  %50 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %48, i32 %49)
  %51 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %54 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %55 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %53, i32 %54)
  %56 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %59 = load i32, i32* @DSS_SDI_STATUS, align 4
  %60 = call i32 (%struct.dss_device*, i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (%struct.dss_device*, i32, ...)*)(%struct.dss_device* %58, i32 %59)
  %61 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %46, %14
  %63 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %64 = call i32 @dss_runtime_put(%struct.dss_device* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @dss_runtime_get(%struct.dss_device*) #1

declare dso_local i32 @seq_printf(...) #1

declare dso_local i32 @dss_read_reg(...) #1

declare dso_local i32 @dss_runtime_put(%struct.dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
