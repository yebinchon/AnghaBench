; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_find_route4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_find_route4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.in_addr = type { i32 }
%struct.rtable = type { %struct.dst_entry }
%struct.flowi4 = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no route to %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net_device*, %struct.in_addr*, %struct.in_addr*)* @rxe_find_route4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @rxe_find_route4(%struct.net_device* %0, %struct.in_addr* %1, %struct.in_addr* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.flowi4, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  %10 = bitcast %struct.flowi4* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = call i32 @memset(%struct.flowi4* %9, i32 0, i32 20)
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 2
  %17 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.in_addr* %17, i32 4)
  %19 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 1
  %20 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.in_addr* %20, i32 4)
  %22 = load i32, i32* @IPPROTO_UDP, align 4
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call %struct.rtable* @ip_route_output_key(i32* @init_net, %struct.flowi4* %9)
  store %struct.rtable* %24, %struct.rtable** %8, align 8
  %25 = load %struct.rtable*, %struct.rtable** %8, align 8
  %26 = call i64 @IS_ERR(%struct.rtable* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %29, i32 0, i32 0
  %31 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %30)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.rtable*, %struct.rtable** %8, align 8
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 0
  store %struct.dst_entry* %34, %struct.dst_entry** %4, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #2

declare dso_local %struct.rtable* @ip_route_output_key(i32*, %struct.flowi4*) #2

declare dso_local i64 @IS_ERR(%struct.rtable*) #2

declare dso_local i32 @pr_err_ratelimited(i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
