; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_level_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_level_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.scmi_perf_set_level* }
%struct.scmi_perf_set_level = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@PERF_LEVEL_SET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32, i32)* @scmi_perf_mb_level_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_mb_level_set(%struct.scmi_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scmi_xfer*, align 8
  %12 = alloca %struct.scmi_perf_set_level*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %14 = load i32, i32* @PERF_LEVEL_SET, align 4
  %15 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %16 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %13, i32 %14, i32 %15, i32 16, i32 0, %struct.scmi_xfer** %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %24 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %27 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.scmi_perf_set_level*, %struct.scmi_perf_set_level** %28, align 8
  store %struct.scmi_perf_set_level* %29, %struct.scmi_perf_set_level** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.scmi_perf_set_level*, %struct.scmi_perf_set_level** %12, align 8
  %33 = getelementptr inbounds %struct.scmi_perf_set_level, %struct.scmi_perf_set_level* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.scmi_perf_set_level*, %struct.scmi_perf_set_level** %12, align 8
  %37 = getelementptr inbounds %struct.scmi_perf_set_level, %struct.scmi_perf_set_level* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %39 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %40 = call i32 @scmi_do_xfer(%struct.scmi_handle* %38, %struct.scmi_xfer* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %42 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %43 = call i32 @scmi_xfer_put(%struct.scmi_handle* %41, %struct.scmi_xfer* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %21, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
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
