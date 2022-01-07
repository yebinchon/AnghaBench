; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_update_tcpseg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_update_tcpseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_iwarp_tx = type { i64, i32 }
%struct.socket = type { i32 }
%struct.tcp_sock = type { i32, i32 }

@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_iwarp_tx*, %struct.socket*)* @siw_update_tcpseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_update_tcpseg(%struct.siw_iwarp_tx* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.siw_iwarp_tx*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.siw_iwarp_tx* %0, %struct.siw_iwarp_tx** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %4, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.tcp_sock* @tcp_sk(i32 %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %16 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %28 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %44

29:                                               ; preds = %14
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @u16, align 4
  %34 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %35 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min_t(i32 %33, i64 %36, i32 %39)
  %41 = mul nsw i32 %32, %40
  %42 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %43 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %29, %19
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %50 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %44
  %52 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %53 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -8
  store i32 %55, i32* %53, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
