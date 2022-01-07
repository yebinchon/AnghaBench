; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_smi.c_opa_smi_handle_dr_smp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_smi.c_opa_smi_handle_dr_smp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@OPA_LID_PERMISSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opa_smi_handle_dr_smp_recv(%struct.opa_smp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.opa_smp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %13 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %12, i32 0, i32 2
  %14 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %15 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %18 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %23 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %28 = call i32 @opa_get_smp_direction(%struct.opa_smp* %27)
  %29 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %30 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OPA_LID_PERMISSIVE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.opa_smp*, %struct.opa_smp** %5, align 8
  %38 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OPA_LID_PERMISSIVE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @__smi_handle_dr_smp_recv(i32 %9, i32 %10, i32 %11, i32* %13, i32 %16, i32 %21, i32 %26, i32 %28, i32 %36, i32 %44)
  ret i32 %45
}

declare dso_local i32 @__smi_handle_dr_smp_recv(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @opa_get_smp_direction(%struct.opa_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
