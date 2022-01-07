; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_ud_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_ud_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i32 }
%struct.ocrdma_hdr_wqe = type { i32 }
%struct.ib_send_wr = type { i32 }
%struct.ocrdma_ewqe_ud_hdr = type { i32, i32, i32, i32 }
%struct.ocrdma_ah = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@OCRDMA_AV_VLAN_VALID = common dso_local global i32 0, align 4
@OCRDMA_FLAG_AH_VLAN_PR = common dso_local global i32 0, align 4
@OCRDMA_WQE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*)* @ocrdma_build_ud_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_ud_hdr(%struct.ocrdma_qp* %0, %struct.ocrdma_hdr_wqe* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ocrdma_ewqe_ud_hdr*, align 8
  %8 = alloca %struct.ocrdma_ah*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_hdr_wqe* %1, %struct.ocrdma_hdr_wqe** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  %9 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %10 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %9, i64 1
  %11 = bitcast %struct.ocrdma_hdr_wqe* %10 to %struct.ocrdma_ewqe_ud_hdr*
  store %struct.ocrdma_ewqe_ud_hdr* %11, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %13 = call %struct.TYPE_4__* @ud_wr(%struct.ib_send_wr* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocrdma_ah* @get_ocrdma_ah(i32 %15)
  store %struct.ocrdma_ah* %16, %struct.ocrdma_ah** %8, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %18 = call %struct.TYPE_4__* @ud_wr(%struct.ib_send_wr* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPT_GSI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %30 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %36 = call %struct.TYPE_4__* @ud_wr(%struct.ib_send_wr* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %40 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %48 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %53 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OCRDMA_AV_VLAN_VALID, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %41
  %61 = load i32, i32* @OCRDMA_FLAG_AH_VLAN_PR, align 4
  %62 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %65 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %41
  ret void
}

declare dso_local %struct.ocrdma_ah* @get_ocrdma_ah(i32) #1

declare dso_local %struct.TYPE_4__* @ud_wr(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
