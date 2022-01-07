; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocrdma_pd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_pd*)* @_ocrdma_dealloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ocrdma_dealloc_pd(%struct.ocrdma_dev* %0, %struct.ocrdma_pd* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_pd*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %4, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ocrdma_put_pd_num(%struct.ocrdma_dev* %12, i32 %15, i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %22 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %23 = call i32 @ocrdma_mbx_dealloc_pd(%struct.ocrdma_dev* %21, %struct.ocrdma_pd* %22)
  br label %24

24:                                               ; preds = %20, %11
  ret void
}

declare dso_local i32 @ocrdma_put_pd_num(%struct.ocrdma_dev*, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_dealloc_pd(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
