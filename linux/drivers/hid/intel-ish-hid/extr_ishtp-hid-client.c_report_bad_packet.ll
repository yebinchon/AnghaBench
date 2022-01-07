; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_report_bad_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_report_bad_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.hostif_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ishtp_cl_data = type { i32, i32 }

@.str = private unnamed_addr constant [126 x i8] c"[hid-ish]: BAD packet %02X\0Atotal_bad=%u cur_pos=%u\0A[%02X %02X %02X %02X]\0Apayload_len=%u\0Amulti_packet_cnt=%u\0Ais_response=%02X\0A\00", align 1
@CMD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_cl*, i8*, i64, i64)* @report_bad_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_bad_packet(%struct.ishtp_cl* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ishtp_cl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hostif_msg*, align 8
  %10 = alloca %struct.ishtp_cl_data*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hostif_msg*
  store %struct.hostif_msg* %12, %struct.hostif_msg** %9, align 8
  %13 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %14 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %13)
  store %struct.ishtp_cl_data* %14, %struct.ishtp_cl_data** %10, align 8
  %15 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %10, align 8
  %16 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %15)
  %17 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %18 = getelementptr inbounds %struct.hostif_msg, %struct.hostif_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %10, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %27 = bitcast %struct.hostif_msg* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %31 = bitcast %struct.hostif_msg* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %35 = bitcast %struct.hostif_msg* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %39 = bitcast %struct.hostif_msg* %38 to i8*
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %10, align 8
  %45 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hostif_msg*, %struct.hostif_msg** %9, align 8
  %48 = getelementptr inbounds %struct.hostif_msg, %struct.hostif_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CMD_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %25, i8 zeroext %29, i8 zeroext %33, i8 zeroext %37, i8 zeroext %41, i32 %43, i32 %46, i32 %53)
  ret void
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
