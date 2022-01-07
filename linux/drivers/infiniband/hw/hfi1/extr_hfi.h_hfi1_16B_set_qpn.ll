; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_16B_set_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_16B_set_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_16b_mgmt = type { i8*, i8* }

@OPA_16B_MGMT_QPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_16b_mgmt*, i32, i32)* @hfi1_16B_set_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_16B_set_qpn(%struct.opa_16b_mgmt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.opa_16b_mgmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.opa_16b_mgmt* %0, %struct.opa_16b_mgmt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OPA_16B_MGMT_QPN_MASK, align 4
  %9 = and i32 %7, %8
  %10 = call i8* @cpu_to_be32(i32 %9)
  %11 = load %struct.opa_16b_mgmt*, %struct.opa_16b_mgmt** %4, align 8
  %12 = getelementptr inbounds %struct.opa_16b_mgmt, %struct.opa_16b_mgmt* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @OPA_16B_MGMT_QPN_MASK, align 4
  %15 = and i32 %13, %14
  %16 = call i8* @cpu_to_be32(i32 %15)
  %17 = load %struct.opa_16b_mgmt*, %struct.opa_16b_mgmt** %4, align 8
  %18 = getelementptr inbounds %struct.opa_16b_mgmt, %struct.opa_16b_mgmt* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
