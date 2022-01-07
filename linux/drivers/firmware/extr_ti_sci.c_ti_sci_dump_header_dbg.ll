; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_dump_header_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_dump_header_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_msg_hdr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"MSGHDR:type=0x%04x host=0x%02x seq=0x%02x flags=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ti_sci_msg_hdr*)* @ti_sci_dump_header_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_dump_header_dbg(%struct.device* %0, %struct.ti_sci_msg_hdr* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ti_sci_msg_hdr*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ti_sci_msg_hdr* %1, %struct.ti_sci_msg_hdr** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(%struct.device* %5, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
