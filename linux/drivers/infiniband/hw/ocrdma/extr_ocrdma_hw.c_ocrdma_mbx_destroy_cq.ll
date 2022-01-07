; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_cq = type { i32, i32, i32, i32, i32 }
%struct.ocrdma_destroy_cq = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_DELETE_CQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_DESTROY_CQ_QID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DESTROY_CQ_QID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev* %0, %struct.ocrdma_cq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca %struct.ocrdma_destroy_cq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_cq* %1, %struct.ocrdma_cq** %4, align 8
  %6 = load i32, i32* @OCRDMA_CMD_DELETE_CQ, align 4
  %7 = call %struct.ocrdma_destroy_cq* @ocrdma_init_emb_mqe(i32 %6, i32 8)
  store %struct.ocrdma_destroy_cq* %7, %struct.ocrdma_destroy_cq** %5, align 8
  %8 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %5, align 8
  %9 = icmp ne %struct.ocrdma_destroy_cq* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %5, align 8
  %13 = getelementptr inbounds %struct.ocrdma_destroy_cq, %struct.ocrdma_destroy_cq* %12, i32 0, i32 1
  %14 = load i32, i32* @OCRDMA_CMD_DELETE_CQ, align 4
  %15 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %16 = call i32 @ocrdma_init_mch(i32* %13, i32 %14, i32 %15, i32 8)
  %17 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCRDMA_DESTROY_CQ_QID_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @OCRDMA_DESTROY_CQ_QID_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %5, align 8
  %25 = getelementptr inbounds %struct.ocrdma_destroy_cq, %struct.ocrdma_destroy_cq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %29 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %5, align 8
  %30 = bitcast %struct.ocrdma_destroy_cq* %29 to %struct.ocrdma_mqe*
  %31 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %28, %struct.ocrdma_mqe* %30)
  %32 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %33 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %34 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ocrdma_unbind_eq(%struct.ocrdma_dev* %32, i32 %35)
  %37 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %38 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %43 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %46 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %49 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(i32* %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %5, align 8
  %53 = call i32 @kfree(%struct.ocrdma_destroy_cq* %52)
  br label %54

54:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.ocrdma_destroy_cq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(i32*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @ocrdma_unbind_eq(%struct.ocrdma_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_destroy_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
