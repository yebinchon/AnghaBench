; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_motion_send_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_motion_send_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, i32, i32*, i64, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.motion_output_report_02 = type { i32, i32, i32, i32, i32 }

@MOTION_REPORT_0x02_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*)* @motion_send_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @motion_send_output_report(%struct.sony_sc* %0) #0 {
  %2 = alloca %struct.sony_sc*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.motion_output_report_02*, align 8
  store %struct.sony_sc* %0, %struct.sony_sc** %2, align 8
  %5 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %6 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %5, i32 0, i32 4
  %7 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  store %struct.hid_device* %7, %struct.hid_device** %3, align 8
  %8 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %9 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.motion_output_report_02*
  store %struct.motion_output_report_02* %11, %struct.motion_output_report_02** %4, align 8
  %12 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %13 = load i32, i32* @MOTION_REPORT_0x02_SIZE, align 4
  %14 = call i32 @memset(%struct.motion_output_report_02* %12, i32 0, i32 %13)
  %15 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %16 = getelementptr inbounds %struct.motion_output_report_02, %struct.motion_output_report_02* %15, i32 0, i32 0
  store i32 2, i32* %16, align 4
  %17 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %18 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %23 = getelementptr inbounds %struct.motion_output_report_02, %struct.motion_output_report_02* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %25 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %30 = getelementptr inbounds %struct.motion_output_report_02, %struct.motion_output_report_02* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %32 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %37 = getelementptr inbounds %struct.motion_output_report_02, %struct.motion_output_report_02* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %39 = load %struct.motion_output_report_02*, %struct.motion_output_report_02** %4, align 8
  %40 = bitcast %struct.motion_output_report_02* %39 to i32*
  %41 = load i32, i32* @MOTION_REPORT_0x02_SIZE, align 4
  %42 = call i32 @hid_hw_output_report(%struct.hid_device* %38, i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @memset(%struct.motion_output_report_02*, i32, i32) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
