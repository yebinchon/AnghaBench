; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_zero_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_zero_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @cma_zero_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_zero_addr(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %4 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %5 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %24 [
    i32 129, label %7
    i32 128, label %14
    i32 130, label %19
  ]

7:                                                ; preds = %1
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %9 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ipv4_is_zeronet(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in6*
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  %18 = call i32 @ipv6_addr_any(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_ib*
  %22 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %21, i32 0, i32 0
  %23 = call i32 @ib_addr_any(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19, %14, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ipv4_is_zeronet(i32) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ib_addr_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
