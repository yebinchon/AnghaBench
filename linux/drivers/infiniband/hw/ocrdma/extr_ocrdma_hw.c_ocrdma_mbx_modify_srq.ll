; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32, %struct.ocrdma_pd* }
%struct.ocrdma_pd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ocrdma_modify_srq = type { i32, i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_MODIFY_SRQ = common dso_local global i32 0, align 4
@OCRDMA_MODIFY_SRQ_LIMIT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_modify_srq*, align 8
  %8 = alloca %struct.ocrdma_pd*, align 8
  %9 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %12, i32 0, i32 1
  %14 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %13, align 8
  store %struct.ocrdma_pd* %14, %struct.ocrdma_pd** %8, align 8
  %15 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %8, align 8
  %16 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %18)
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %9, align 8
  %20 = load i32, i32* @OCRDMA_CMD_MODIFY_SRQ, align 4
  %21 = call %struct.ocrdma_modify_srq* @ocrdma_init_emb_mqe(i32 %20, i32 8)
  store %struct.ocrdma_modify_srq* %21, %struct.ocrdma_modify_srq** %7, align 8
  %22 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %23 = icmp ne %struct.ocrdma_modify_srq* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %31 = getelementptr inbounds %struct.ocrdma_modify_srq, %struct.ocrdma_modify_srq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OCRDMA_MODIFY_SRQ_LIMIT_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %38 = getelementptr inbounds %struct.ocrdma_modify_srq, %struct.ocrdma_modify_srq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %42 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %43 = bitcast %struct.ocrdma_modify_srq* %42 to %struct.ocrdma_mqe*
  %44 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %41, %struct.ocrdma_mqe* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ocrdma_modify_srq*, %struct.ocrdma_modify_srq** %7, align 8
  %46 = call i32 @kfree(%struct.ocrdma_modify_srq* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %26, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local %struct.ocrdma_modify_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_modify_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
