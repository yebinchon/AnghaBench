; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_resolve_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_resolve_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32 }
%struct.resolve_cb_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, %struct.rdma_dev_addr*, i8*)* @resolve_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_cb(i32 %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.resolve_cb_context*
  %12 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.resolve_cb_context*
  %15 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %14, i32 0, i32 1
  %16 = call i32 @complete(i32* %15)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
