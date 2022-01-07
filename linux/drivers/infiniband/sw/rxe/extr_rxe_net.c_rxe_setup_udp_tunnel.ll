; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_setup_udp_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_setup_udp_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.net = type { i32 }
%struct.udp_port_cfg = type { i32, i32, i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to create udp socket. err = %d\0A\00", align 1
@rxe_udp_encap_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.net*, i32, i32)* @rxe_setup_udp_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @rxe_setup_udp_tunnel(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.udp_port_cfg, align 4
  %11 = alloca %struct.udp_tunnel_sock_cfg, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.udp_port_cfg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = bitcast %struct.udp_tunnel_sock_cfg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %10, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %10, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @AF_INET, align 4
  %22 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %10, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %10, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = call i32 @udp_sock_create(%struct.net* %26, %struct.udp_port_cfg* %10, %struct.socket** %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.socket* @ERR_PTR(i32 %33)
  store %struct.socket* %34, %struct.socket** %4, align 8
  br label %43

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @rxe_udp_encap_recv, align 4
  %38 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = load %struct.socket*, %struct.socket** %9, align 8
  %41 = call i32 @setup_udp_tunnel_sock(%struct.net* %39, %struct.socket* %40, %struct.udp_tunnel_sock_cfg* %11)
  %42 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %42, %struct.socket** %4, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  ret %struct.socket* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @udp_sock_create(%struct.net*, %struct.udp_port_cfg*, %struct.socket**) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local %struct.socket* @ERR_PTR(i32) #2

declare dso_local i32 @setup_udp_tunnel_sock(%struct.net*, %struct.socket*, %struct.udp_tunnel_sock_cfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
