; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_vl_arb_match_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_vl_arb_match_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vl_arb_cache = type { i32 }
%struct.ib_vl_weight_elem = type { i32 }

@VL_ARB_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl_arb_cache*, %struct.ib_vl_weight_elem*)* @vl_arb_match_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl_arb_match_cache(%struct.vl_arb_cache* %0, %struct.ib_vl_weight_elem* %1) #0 {
  %3 = alloca %struct.vl_arb_cache*, align 8
  %4 = alloca %struct.ib_vl_weight_elem*, align 8
  store %struct.vl_arb_cache* %0, %struct.vl_arb_cache** %3, align 8
  store %struct.ib_vl_weight_elem* %1, %struct.ib_vl_weight_elem** %4, align 8
  %5 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %3, align 8
  %6 = getelementptr inbounds %struct.vl_arb_cache, %struct.vl_arb_cache* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %4, align 8
  %9 = load i32, i32* @VL_ARB_TABLE_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memcmp(i32 %7, %struct.ib_vl_weight_elem* %8, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @memcmp(i32, %struct.ib_vl_weight_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
