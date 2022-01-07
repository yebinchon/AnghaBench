; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_ip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ib_cm_event = type { %struct.cma_hdr* }
%struct.cma_hdr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@CMA_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.ib_cm_event*, i32)* @cma_save_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_save_ip_info(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.ib_cm_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ib_cm_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cma_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.ib_cm_event* %2, %struct.ib_cm_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_cm_event*, %struct.ib_cm_event** %8, align 8
  %13 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %12, i32 0, i32 0
  %14 = load %struct.cma_hdr*, %struct.cma_hdr** %13, align 8
  store %struct.cma_hdr* %14, %struct.cma_hdr** %10, align 8
  %15 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %16 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CMA_VERSION, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @cma_port_from_service_id(i32 %24)
  %26 = call i32 @htons(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %28 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %27)
  switch i32 %28, label %45 [
    i32 4, label %29
    i32 6, label %37
  ]

29:                                               ; preds = %23
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in*
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_in*
  %34 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cma_save_ip4_info(%struct.sockaddr_in* %31, %struct.sockaddr_in* %33, %struct.cma_hdr* %34, i32 %35)
  br label %48

37:                                               ; preds = %23
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in6*
  %40 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in6*
  %42 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @cma_save_ip6_info(%struct.sockaddr_in6* %39, %struct.sockaddr_in6* %41, %struct.cma_hdr* %42, i32 %43)
  br label %48

45:                                               ; preds = %23
  %46 = load i32, i32* @EAFNOSUPPORT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %37, %29
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cma_port_from_service_id(i32) #1

declare dso_local i32 @cma_get_ip_ver(%struct.cma_hdr*) #1

declare dso_local i32 @cma_save_ip4_info(%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.cma_hdr*, i32) #1

declare dso_local i32 @cma_save_ip6_info(%struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.cma_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
