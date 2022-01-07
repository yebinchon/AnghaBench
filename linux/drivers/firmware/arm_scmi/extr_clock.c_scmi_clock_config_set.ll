; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_clock_set_config* }
%struct.scmi_clock_set_config = type { i8*, i8* }

@CLOCK_CONFIG_SET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32)* @scmi_clock_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_config_set(%struct.scmi_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_clock_set_config*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %12 = load i32, i32* @CLOCK_CONFIG_SET, align 4
  %13 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %14 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %11, i32 %12, i32 %13, i32 16, i32 0, %struct.scmi_xfer** %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %21 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.scmi_clock_set_config*, %struct.scmi_clock_set_config** %22, align 8
  store %struct.scmi_clock_set_config* %23, %struct.scmi_clock_set_config** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.scmi_clock_set_config*, %struct.scmi_clock_set_config** %10, align 8
  %27 = getelementptr inbounds %struct.scmi_clock_set_config, %struct.scmi_clock_set_config* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.scmi_clock_set_config*, %struct.scmi_clock_set_config** %10, align 8
  %31 = getelementptr inbounds %struct.scmi_clock_set_config, %struct.scmi_clock_set_config* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %33 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %34 = call i32 @scmi_do_xfer(%struct.scmi_handle* %32, %struct.scmi_xfer* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %36 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %37 = call i32 @scmi_xfer_put(%struct.scmi_handle* %35, %struct.scmi_xfer* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %19, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
