; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_ib = type { i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @cma_addr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_addr_cmp(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %66 [
    i32 129, label %21
    i32 128, label %34
  ]

21:                                               ; preds = %17
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %26, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %17
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %36, %struct.sockaddr_in6** %6, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %38, %struct.sockaddr_in6** %7, align 8
  %39 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 1
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 1
  %43 = call i32 @ipv6_addr_cmp(i32* %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %74

46:                                               ; preds = %34
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 1
  %49 = call i32 @ipv6_addr_type(i32* %48)
  %50 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  %62 = zext i1 %61 to i32
  br label %64

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %54
  %65 = phi i32 [ %62, %54 ], [ 0, %63 ]
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %17
  %67 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %68 = bitcast %struct.sockaddr* %67 to %struct.sockaddr_ib*
  %69 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %68, i32 0, i32 0
  %70 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %71 = bitcast %struct.sockaddr* %70 to %struct.sockaddr_ib*
  %72 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %71, i32 0, i32 0
  %73 = call i32 @ib_addr_cmp(i32* %69, i32* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %64, %45, %21, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ipv6_addr_cmp(i32*, i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @ib_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
