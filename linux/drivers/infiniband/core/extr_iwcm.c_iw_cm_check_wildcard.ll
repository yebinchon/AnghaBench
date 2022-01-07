; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_cm_check_wildcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_cm_check_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_storage*, %struct.sockaddr_storage*, %struct.sockaddr_storage*)* @iw_cm_check_wildcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iw_cm_check_wildcard(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %6, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %20 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %7, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @INADDR_ANY, align 4
  %26 = call i64 @htonl(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %8, align 8
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %32, %struct.sockaddr_in** %9, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_2__* %34 to i8*
  %38 = bitcast %struct.TYPE_2__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %39

39:                                               ; preds = %28, %18
  br label %59

40:                                               ; preds = %3
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %42, %struct.sockaddr_in6** %10, align 8
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = call i64 @ipv6_addr_type(i32* %44)
  %46 = load i64, i64* @IPV6_ADDR_ANY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %50 = bitcast %struct.sockaddr_storage* %49 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %50, %struct.sockaddr_in6** %11, align 8
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %52 = bitcast %struct.sockaddr_storage* %51 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %52, %struct.sockaddr_in6** %12, align 8
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %40
  br label %59

59:                                               ; preds = %58, %39
  ret void
}

declare dso_local i64 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
