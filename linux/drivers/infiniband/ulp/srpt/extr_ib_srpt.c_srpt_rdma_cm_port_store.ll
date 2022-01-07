; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_rdma_cm_port_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_rdma_cm_port_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.sockaddr_in = type { i8*, i32 }
%struct.sockaddr_in6 = type { i8*, i32 }
%struct.rdma_cm_id = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@rdma_cm_port = common dso_local global i64 0, align 8
@rdma_cm_mutex = common dso_local global i32 0, align 4
@rdma_cm_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @srpt_rdma_cm_port_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_rdma_cm_port_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.rdma_cm_id*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %15 = load i32, i32* @AF_INET, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %18 = load i32, i32* @AF_INET6, align 4
  store i32 %18, i32* %17, align 8
  store %struct.rdma_cm_id* null, %struct.rdma_cm_id** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @kstrtou16(i8* %19, i32 0, i64* %11)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* @rdma_cm_port, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %73

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = call i8* @cpu_to_be16(i64 %36)
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %40 = call %struct.rdma_cm_id* @srpt_create_rdma_id(%struct.sockaddr* %39)
  store %struct.rdma_cm_id* %40, %struct.rdma_cm_id** %10, align 8
  %41 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %42 = call i64 @IS_ERR(%struct.rdma_cm_id* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load i64, i64* %11, align 8
  %46 = call i8* @cpu_to_be16(i64 %45)
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %49 = call %struct.rdma_cm_id* @srpt_create_rdma_id(%struct.sockaddr* %48)
  store %struct.rdma_cm_id* %49, %struct.rdma_cm_id** %10, align 8
  %50 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %51 = call i64 @IS_ERR(%struct.rdma_cm_id* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %55 = call i32 @PTR_ERR(%struct.rdma_cm_id* %54)
  store i32 %55, i32* %12, align 4
  br label %73

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %32
  %59 = call i32 @mutex_lock(i32* @rdma_cm_mutex)
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* @rdma_cm_port, align 8
  %61 = load i32, i32* @rdma_cm_id, align 4
  %62 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %63 = call i32 @swap(i32 %61, %struct.rdma_cm_id* %62)
  %64 = call i32 @mutex_unlock(i32* @rdma_cm_mutex)
  %65 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %66 = icmp ne %struct.rdma_cm_id* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  %69 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %53, %31
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @kstrtou16(i8*, i32, i64*) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local %struct.rdma_cm_id* @srpt_create_rdma_id(%struct.sockaddr*) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @swap(i32, %struct.rdma_cm_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
