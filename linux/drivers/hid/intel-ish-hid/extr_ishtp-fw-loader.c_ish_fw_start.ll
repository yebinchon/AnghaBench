; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32 }
%struct.loader_start = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.loader_msg_hdr = type { i32 }

@LOADER_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*)* @ish_fw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_fw_start(%struct.ishtp_cl_data* %0) #0 {
  %2 = alloca %struct.ishtp_cl_data*, align 8
  %3 = alloca %struct.loader_start, align 4
  %4 = alloca %struct.loader_msg_hdr, align 4
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %2, align 8
  %5 = call i32 @memset(%struct.loader_start* %3, i32 0, i32 4)
  %6 = load i32, i32* @LOADER_CMD_START, align 4
  %7 = getelementptr inbounds %struct.loader_start, %struct.loader_start* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %2, align 8
  %10 = bitcast %struct.loader_start* %3 to i32*
  %11 = bitcast %struct.loader_msg_hdr* %4 to i32*
  %12 = call i32 @loader_cl_send(%struct.ishtp_cl_data* %9, i32* %10, i32 4, i32* %11, i32 4)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.loader_start*, i32, i32) #1

declare dso_local i32 @loader_cl_send(%struct.ishtp_cl_data*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
