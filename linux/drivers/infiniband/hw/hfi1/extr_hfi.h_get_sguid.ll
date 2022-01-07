; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_get_sguid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_get_sguid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32* }

@HFI1_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, i32)* @get_sguid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sguid(%struct.hfi1_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %7 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %6)
  store %struct.hfi1_pportdata* %7, %struct.hfi1_pportdata** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @HFI1_GUIDS_PER_PORT, align 4
  %10 = icmp uge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %14 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_be64(i32 %19)
  ret i32 %20
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
