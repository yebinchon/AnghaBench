; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_setup_ib_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_setup_ib_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.hfi1_ib_message_header*, i64, i32 }
%struct.hfi1_ib_message_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_packet*)* @hfi1_setup_ib_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_setup_ib_header(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %3 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @hfi1_get_msgheader(i32 %5, i64 %8)
  %10 = inttoptr i64 %9 to %struct.hfi1_ib_message_header*
  %11 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %11, i32 0, i32 1
  store %struct.hfi1_ib_message_header* %10, %struct.hfi1_ib_message_header** %12, align 8
  %13 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 1
  %19 = load %struct.hfi1_ib_message_header*, %struct.hfi1_ib_message_header** %18, align 8
  %20 = bitcast %struct.hfi1_ib_message_header* %19 to i32*
  %21 = ptrtoint i32* %16 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local i64 @hfi1_get_msgheader(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
