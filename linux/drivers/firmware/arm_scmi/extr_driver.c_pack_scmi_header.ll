; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_pack_scmi_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_pack_scmi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_msg_hdr = type { i32, i32, i32 }

@MSG_ID_MASK = common dso_local global i32 0, align 4
@MSG_TOKEN_ID_MASK = common dso_local global i32 0, align 4
@MSG_PROTOCOL_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_msg_hdr*)* @pack_scmi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_scmi_header(%struct.scmi_msg_hdr* %0) #0 {
  %2 = alloca %struct.scmi_msg_hdr*, align 8
  store %struct.scmi_msg_hdr* %0, %struct.scmi_msg_hdr** %2, align 8
  %3 = load i32, i32* @MSG_ID_MASK, align 4
  %4 = load %struct.scmi_msg_hdr*, %struct.scmi_msg_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.scmi_msg_hdr, %struct.scmi_msg_hdr* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @FIELD_PREP(i32 %3, i32 %6)
  %8 = load i32, i32* @MSG_TOKEN_ID_MASK, align 4
  %9 = load %struct.scmi_msg_hdr*, %struct.scmi_msg_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.scmi_msg_hdr, %struct.scmi_msg_hdr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @FIELD_PREP(i32 %8, i32 %11)
  %13 = or i32 %7, %12
  %14 = load i32, i32* @MSG_PROTOCOL_ID_MASK, align 4
  %15 = load %struct.scmi_msg_hdr*, %struct.scmi_msg_hdr** %2, align 8
  %16 = getelementptr inbounds %struct.scmi_msg_hdr, %struct.scmi_msg_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @FIELD_PREP(i32 %14, i32 %17)
  %19 = or i32 %13, %18
  ret i32 %19
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
