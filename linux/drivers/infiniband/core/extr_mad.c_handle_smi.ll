; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_handle_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_handle_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { i32 }
%struct.ib_mad_qp_info = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_mad_private = type { i64 }
%struct.ib_mad_hdr = type { i64, i64 }

@OPA_MGMT_BASE_VERSION = common dso_local global i64 0, align 8
@OPA_SM_CLASS_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*, %struct.ib_wc*, i32, %struct.ib_mad_private*, %struct.ib_mad_private*, i32)* @handle_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_smi(%struct.ib_mad_port_private* %0, %struct.ib_mad_qp_info* %1, %struct.ib_wc* %2, i32 %3, %struct.ib_mad_private* %4, %struct.ib_mad_private* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mad_port_private*, align 8
  %10 = alloca %struct.ib_mad_qp_info*, align 8
  %11 = alloca %struct.ib_wc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_mad_private*, align 8
  %14 = alloca %struct.ib_mad_private*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %9, align 8
  store %struct.ib_mad_qp_info* %1, %struct.ib_mad_qp_info** %10, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ib_mad_private* %4, %struct.ib_mad_private** %13, align 8
  store %struct.ib_mad_private* %5, %struct.ib_mad_private** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %18 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ib_mad_hdr*
  store %struct.ib_mad_hdr* %20, %struct.ib_mad_hdr** %16, align 8
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %7
  %24 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %16, align 8
  %25 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OPA_MGMT_BASE_VERSION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %16, align 8
  %31 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OPA_SM_CLASS_VERSION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %9, align 8
  %37 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %10, align 8
  %38 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %41 = load %struct.ib_mad_private*, %struct.ib_mad_private** %14, align 8
  %42 = call i32 @handle_opa_smi(%struct.ib_mad_port_private* %36, %struct.ib_mad_qp_info* %37, %struct.ib_wc* %38, i32 %39, %struct.ib_mad_private* %40, %struct.ib_mad_private* %41)
  store i32 %42, i32* %8, align 4
  br label %51

43:                                               ; preds = %29, %23, %7
  %44 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %9, align 8
  %45 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %10, align 8
  %46 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %49 = load %struct.ib_mad_private*, %struct.ib_mad_private** %14, align 8
  %50 = call i32 @handle_ib_smi(%struct.ib_mad_port_private* %44, %struct.ib_mad_qp_info* %45, %struct.ib_wc* %46, i32 %47, %struct.ib_mad_private* %48, %struct.ib_mad_private* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @handle_opa_smi(%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*, %struct.ib_wc*, i32, %struct.ib_mad_private*, %struct.ib_mad_private*) #1

declare dso_local i32 @handle_ib_smi(%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*, %struct.ib_wc*, i32, %struct.ib_mad_private*, %struct.ib_mad_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
