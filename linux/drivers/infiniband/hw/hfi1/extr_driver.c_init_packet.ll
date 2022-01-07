; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_init_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_init_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i32 }
%struct.hfi1_packet = type { i32, i32, i32, i64, i32, i32, i32, i64, %struct.hfi1_ctxtdata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*, %struct.hfi1_packet*)* @init_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_packet(%struct.hfi1_ctxtdata* %0, %struct.hfi1_packet* %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %4, align 8
  %5 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %9 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %14 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %20 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %20, i32 0, i32 8
  store %struct.hfi1_ctxtdata* %19, %struct.hfi1_ctxtdata** %21, align 8
  %22 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %25 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 8
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = call i32 @get_rhf_addr(%struct.hfi1_ctxtdata* %26)
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %29 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %31 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rhf_to_cpu(i32 %32)
  %34 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %35 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %40 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %42 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @get_rhf_addr(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @rhf_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
