; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_fill_sockaddr6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_fill_sockaddr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, i32, i32 }
%struct.iw_cm_event = type { i32, i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.iw_cm_event*)* @i40iw_fill_sockaddr6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_fill_sockaddr6(%struct.i40iw_cm_node* %0, %struct.iw_cm_event* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.iw_cm_event*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.iw_cm_event* %1, %struct.iw_cm_event** %4, align 8
  %7 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %8 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %9, %struct.sockaddr_in6** %5, align 8
  %10 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %11 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %6, align 8
  %13 = load i8*, i8** @AF_INET6, align 8
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @AF_INET6, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %20 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @htons(i32 %21)
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @i40iw_copy_ip_htonl(i32 %35, i32 %38)
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %46 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i40iw_copy_ip_htonl(i32 %44, i32 %47)
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @i40iw_copy_ip_htonl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
