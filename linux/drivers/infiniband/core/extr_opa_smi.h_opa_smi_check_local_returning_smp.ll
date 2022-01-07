; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_opa_smi.h_opa_smi_check_local_returning_smp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_opa_smi.h_opa_smi_check_local_returning_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@IB_SMI_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, %struct.ib_device*)* @opa_smi_check_local_returning_smp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_smi_check_local_returning_smp(%struct.opa_smp* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.opa_smp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %6 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.opa_smp*, %struct.opa_smp** %3, align 8
  %12 = call i64 @opa_get_smp_direction(%struct.opa_smp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.opa_smp*, %struct.opa_smp** %3, align 8
  %16 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %23

21:                                               ; preds = %14, %10, %2
  %22 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  ret i32 %24
}

declare dso_local i64 @opa_get_smp_direction(%struct.opa_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
