; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_dealloc_lkey = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_DEALLOC_LKEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_dealloc_lkey(%struct.ocrdma_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_dealloc_lkey*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @OCRDMA_CMD_DEALLOC_LKEY, align 4
  %11 = call %struct.ocrdma_dealloc_lkey* @ocrdma_init_emb_mqe(i32 %10, i32 8)
  store %struct.ocrdma_dealloc_lkey* %11, %struct.ocrdma_dealloc_lkey** %9, align 8
  %12 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %13 = icmp ne %struct.ocrdma_dealloc_lkey* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dealloc_lkey, %struct.ocrdma_dealloc_lkey* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %26 = getelementptr inbounds %struct.ocrdma_dealloc_lkey, %struct.ocrdma_dealloc_lkey* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %28 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %29 = bitcast %struct.ocrdma_dealloc_lkey* %28 to %struct.ocrdma_mqe*
  %30 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %27, %struct.ocrdma_mqe* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %32 = call i32 @kfree(%struct.ocrdma_dealloc_lkey* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.ocrdma_dealloc_lkey* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_dealloc_lkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
