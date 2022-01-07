; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_ib = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @cma_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_port(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_ib*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %31 [
    i32 129, label %8
    i32 128, label %13
    i32 130, label %18
  ]

8:                                                ; preds = %1
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in6*
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %20, %struct.sockaddr_ib** %4, align 8
  %21 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be64_to_cpu(i32 %23)
  %25 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be64_to_cpu(i32 %27)
  %29 = and i32 %24, %28
  %30 = call i32 @htons(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %18, %13, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
