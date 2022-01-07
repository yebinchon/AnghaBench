; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_is_ucontext_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_is_ucontext_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_ucontext = type { %struct.ocrdma_pd* }
%struct.ocrdma_pd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_ucontext*, %struct.ocrdma_pd*)* @is_ucontext_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ucontext_pd(%struct.ocrdma_ucontext* %0, %struct.ocrdma_pd* %1) #0 {
  %3 = alloca %struct.ocrdma_ucontext*, align 8
  %4 = alloca %struct.ocrdma_pd*, align 8
  store %struct.ocrdma_ucontext* %0, %struct.ocrdma_ucontext** %3, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %4, align 8
  %5 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %3, align 8
  %6 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %5, i32 0, i32 0
  %7 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %8 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %9 = icmp eq %struct.ocrdma_pd* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
