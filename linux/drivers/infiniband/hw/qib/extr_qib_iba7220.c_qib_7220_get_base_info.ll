; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_get_base_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_get_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_base_info = type { i32 }

@QIB_RUNTIME_PCIE = common dso_local global i32 0, align 4
@QIB_RUNTIME_NODMA_RTAIL = common dso_local global i32 0, align 4
@QIB_RUNTIME_SDMA = common dso_local global i32 0, align 4
@QIB_USE_SPCL_TRIG = common dso_local global i32 0, align 4
@QIB_RUNTIME_SPECIAL_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.qib_base_info*)* @qib_7220_get_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7220_get_base_info(%struct.qib_ctxtdata* %0, %struct.qib_base_info* %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca %struct.qib_base_info*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store %struct.qib_base_info* %1, %struct.qib_base_info** %4, align 8
  %5 = load i32, i32* @QIB_RUNTIME_PCIE, align 4
  %6 = load i32, i32* @QIB_RUNTIME_NODMA_RTAIL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @QIB_RUNTIME_SDMA, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %11 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QIB_USE_SPCL_TRIG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @QIB_RUNTIME_SPECIAL_TRIGGER, align 4
  %24 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %25 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
