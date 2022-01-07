; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_exit_net.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_exit_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cma_pernet = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @cma_exit_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_exit_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.cma_pernet*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = call %struct.cma_pernet* @cma_pernet(%struct.net* %4)
  store %struct.cma_pernet* %5, %struct.cma_pernet** %3, align 8
  %6 = load %struct.cma_pernet*, %struct.cma_pernet** %3, align 8
  %7 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %6, i32 0, i32 3
  %8 = call i32 @xa_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.cma_pernet*, %struct.cma_pernet** %3, align 8
  %14 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %13, i32 0, i32 2
  %15 = call i32 @xa_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.cma_pernet*, %struct.cma_pernet** %3, align 8
  %21 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %20, i32 0, i32 1
  %22 = call i32 @xa_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.cma_pernet*, %struct.cma_pernet** %3, align 8
  %28 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %27, i32 0, i32 0
  %29 = call i32 @xa_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  ret void
}

declare dso_local %struct.cma_pernet* @cma_pernet(%struct.net*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xa_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
