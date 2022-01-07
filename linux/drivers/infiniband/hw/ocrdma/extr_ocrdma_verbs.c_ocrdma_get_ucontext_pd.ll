; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_get_ucontext_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_get_ucontext_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_pd = type { i32 }
%struct.ocrdma_ucontext = type { i32, i32, %struct.ocrdma_pd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocrdma_pd* (%struct.ocrdma_ucontext*)* @ocrdma_get_ucontext_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocrdma_pd* @ocrdma_get_ucontext_pd(%struct.ocrdma_ucontext* %0) #0 {
  %2 = alloca %struct.ocrdma_ucontext*, align 8
  %3 = alloca %struct.ocrdma_pd*, align 8
  store %struct.ocrdma_ucontext* %0, %struct.ocrdma_ucontext** %2, align 8
  store %struct.ocrdma_pd* null, %struct.ocrdma_pd** %3, align 8
  %4 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %2, align 8
  %13 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %2, align 8
  %15 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %14, i32 0, i32 2
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %15, align 8
  store %struct.ocrdma_pd* %16, %struct.ocrdma_pd** %3, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %2, align 8
  %19 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  ret %struct.ocrdma_pd* %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
