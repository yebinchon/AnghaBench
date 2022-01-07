; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_use_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_use_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_bind_list = type { i32 }

@PROT_SOCK = common dso_local global i16 0, align 2
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rdma_id_private*)* @cma_use_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_use_port(i32 %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.rdma_bind_list*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %10 = call i32 @cma_src_addr(%struct.rdma_id_private* %9)
  %11 = call i32 @cma_port(i32 %10)
  %12 = call zeroext i16 @ntohs(i32 %11)
  store i16 %12, i16* %7, align 2
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @PROT_SOCK, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %18, %2
  %26 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %27 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i16, i16* %7, align 2
  %35 = call %struct.rdma_bind_list* @cma_ps_find(i32 %32, i32 %33, i16 zeroext %34)
  store %struct.rdma_bind_list* %35, %struct.rdma_bind_list** %6, align 8
  %36 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %37 = icmp ne %struct.rdma_bind_list* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %41 = load i16, i16* %7, align 2
  %42 = call i32 @cma_alloc_port(i32 %39, %struct.rdma_id_private* %40, i16 zeroext %41)
  store i32 %42, i32* %8, align 4
  br label %57

43:                                               ; preds = %25
  %44 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %45 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cma_check_port(%struct.rdma_bind_list* %44, %struct.rdma_id_private* %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %54 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %55 = call i32 @cma_bind_port(%struct.rdma_bind_list* %53, %struct.rdma_id_private* %54)
  br label %56

56:                                               ; preds = %52, %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @cma_port(i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.rdma_bind_list* @cma_ps_find(i32, i32, i16 zeroext) #1

declare dso_local i32 @cma_alloc_port(i32, %struct.rdma_id_private*, i16 zeroext) #1

declare dso_local i32 @cma_check_port(%struct.rdma_bind_list*, %struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_bind_port(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
