; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.h_usnic_fwd_init_usnic_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.h_usnic_fwd_init_usnic_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FILTER_USNIC_ID = common dso_local global i32 0, align 4
@ETH_P_IBOE = common dso_local global i32 0, align 4
@FILTER_FIELD_USNIC_ETHTYPE = common dso_local global i32 0, align 4
@FILTER_FIELD_USNIC_ID = common dso_local global i32 0, align 4
@FILTER_FIELD_USNIC_PROTO = common dso_local global i32 0, align 4
@USNIC_ROCE_GRH_VER = common dso_local global i32 0, align 4
@USNIC_ROCE_GRH_VER_SHIFT = common dso_local global i32 0, align 4
@USNIC_PROTO_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter*, i32)* @usnic_fwd_init_usnic_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usnic_fwd_init_usnic_filter(%struct.filter* %0, i32 %1) #0 {
  %3 = alloca %struct.filter*, align 8
  %4 = alloca i32, align 4
  store %struct.filter* %0, %struct.filter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FILTER_USNIC_ID, align 4
  %6 = load %struct.filter*, %struct.filter** %3, align 8
  %7 = getelementptr inbounds %struct.filter, %struct.filter* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @ETH_P_IBOE, align 4
  %9 = load %struct.filter*, %struct.filter** %3, align 8
  %10 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @FILTER_FIELD_USNIC_ETHTYPE, align 4
  %14 = load i32, i32* @FILTER_FIELD_USNIC_ID, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FILTER_FIELD_USNIC_PROTO, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.filter*, %struct.filter** %3, align 8
  %19 = getelementptr inbounds %struct.filter, %struct.filter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @USNIC_ROCE_GRH_VER, align 4
  %23 = load i32, i32* @USNIC_ROCE_GRH_VER_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @USNIC_PROTO_VER, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.filter*, %struct.filter** %3, align 8
  %28 = getelementptr inbounds %struct.filter, %struct.filter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.filter*, %struct.filter** %3, align 8
  %33 = getelementptr inbounds %struct.filter, %struct.filter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
