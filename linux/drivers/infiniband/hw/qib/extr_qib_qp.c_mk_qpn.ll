; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_mk_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_mk_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qpn_table = type { %struct.rvt_qpn_map* }
%struct.rvt_qpn_map = type { i32 }

@RVT_BITS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qpn_table*, %struct.rvt_qpn_map*, i32)* @mk_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_qpn(%struct.rvt_qpn_table* %0, %struct.rvt_qpn_map* %1, i32 %2) #0 {
  %4 = alloca %struct.rvt_qpn_table*, align 8
  %5 = alloca %struct.rvt_qpn_map*, align 8
  %6 = alloca i32, align 4
  store %struct.rvt_qpn_table* %0, %struct.rvt_qpn_table** %4, align 8
  store %struct.rvt_qpn_map* %1, %struct.rvt_qpn_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %5, align 8
  %8 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %4, align 8
  %9 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %8, i32 0, i32 0
  %10 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %9, align 8
  %11 = ptrtoint %struct.rvt_qpn_map* %7 to i64
  %12 = ptrtoint %struct.rvt_qpn_map* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = load i32, i32* @RVT_BITS_PER_PAGE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
