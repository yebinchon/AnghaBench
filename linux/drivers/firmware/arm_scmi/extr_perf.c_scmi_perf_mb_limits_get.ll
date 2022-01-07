; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_limits_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_limits_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.scmi_perf_get_limits* }
%struct.scmi_perf_get_limits = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PERF_LIMITS_GET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32*, i32*)* @scmi_perf_mb_limits_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_mb_limits_get(%struct.scmi_handle* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scmi_xfer*, align 8
  %12 = alloca %struct.scmi_perf_get_limits*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %14 = load i32, i32* @PERF_LIMITS_GET, align 4
  %15 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %16 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %13, i32 %14, i32 %15, i32 4, i32 0, %struct.scmi_xfer** %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %24 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @put_unaligned_le32(i32 %22, i32 %26)
  %28 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %29 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %30 = call i32 @scmi_do_xfer(%struct.scmi_handle* %28, %struct.scmi_xfer* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %21
  %34 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %35 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.scmi_perf_get_limits*, %struct.scmi_perf_get_limits** %36, align 8
  store %struct.scmi_perf_get_limits* %37, %struct.scmi_perf_get_limits** %12, align 8
  %38 = load %struct.scmi_perf_get_limits*, %struct.scmi_perf_get_limits** %12, align 8
  %39 = getelementptr inbounds %struct.scmi_perf_get_limits, %struct.scmi_perf_get_limits* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.scmi_perf_get_limits*, %struct.scmi_perf_get_limits** %12, align 8
  %44 = getelementptr inbounds %struct.scmi_perf_get_limits, %struct.scmi_perf_get_limits* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %33, %21
  %49 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %50 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %51 = call i32 @scmi_xfer_put(%struct.scmi_handle* %49, %struct.scmi_xfer* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
