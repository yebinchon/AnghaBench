; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_dump_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_dump_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"- DSS -\0A\00", align 1
@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dss_device*, %struct.seq_file*)* @dss_dump_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_dump_clocks(%struct.dss_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %8 = call i64 @dss_runtime_get(%struct.dss_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %15 = call i8* @dss_get_clk_source_name(i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %17 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %21, i64 %22)
  %24 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %25 = call i32 @dss_runtime_put(%struct.dss_device* %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @dss_runtime_get(%struct.dss_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i8* @dss_get_clk_source_name(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dss_runtime_put(%struct.dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
