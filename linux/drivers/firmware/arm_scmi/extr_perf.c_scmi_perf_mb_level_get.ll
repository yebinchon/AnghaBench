; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_level_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_mb_level_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PERF_LEVEL_GET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32*, i32)* @scmi_perf_mb_level_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_mb_level_get(%struct.scmi_handle* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scmi_xfer*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %13 = load i32, i32* @PERF_LEVEL_GET, align 4
  %14 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %15 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %12, i32 %13, i32 %14, i32 4, i32 4, %struct.scmi_xfer** %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %23 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %27 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_unaligned_le32(i32 %25, i32 %29)
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %32 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %33 = call i32 @scmi_do_xfer(%struct.scmi_handle* %31, %struct.scmi_xfer* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %20
  %37 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %38 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_unaligned_le32(i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %20
  %44 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %45 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %46 = call i32 @scmi_xfer_put(%struct.scmi_handle* %44, %struct.scmi_xfer* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
