; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i32, i32, i32, i32 }

@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_handle_dr_smp_send(%struct.ib_smp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %9, i32 0, i32 5
  %11 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %15 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %21 = call i32 @ib_get_smp_direction(%struct.ib_smp* %20)
  %22 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %23 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @__smi_handle_dr_smp_send(i32 %7, i32 %8, i32* %10, i32 %13, i32 %16, i32 %19, i32 %21, i32 %27, i32 %33)
  ret i32 %34
}

declare dso_local i32 @__smi_handle_dr_smp_send(i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
