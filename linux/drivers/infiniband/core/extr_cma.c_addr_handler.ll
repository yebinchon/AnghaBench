; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_addr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.rdma_dev_addr = type { i32 }
%struct.rdma_id_private = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)* }
%struct.rdma_cm_event = type opaque
%struct.rdma_cm_event.0 = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@RDMA_CM_ADDR_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"RDMA CM: ADDR_ERROR: failed to acquire device. status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"RDMA CM: ADDR_ERROR: failed to resolve IP. status %d\0A\00", align 1
@RDMA_CM_ADDR_BOUND = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_ERROR = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, %struct.rdma_dev_addr*, i8*)* @addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_handler(i32 %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rdma_id_private*, align 8
  %10 = alloca %struct.rdma_cm_event.0, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.rdma_id_private*
  store %struct.rdma_id_private* %14, %struct.rdma_id_private** %9, align 8
  %15 = bitcast %struct.rdma_cm_event.0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %20 = load i32, i32* @RDMA_CM_ADDR_QUERY, align 4
  %21 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %22 = call i32 @cma_comp_exch(%struct.rdma_id_private* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %111

25:                                               ; preds = %4
  %26 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %27 = call %struct.sockaddr_storage* @cma_src_addr(%struct.rdma_id_private* %26)
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %11, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_storage*
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_storage*
  %33 = call i32 @rdma_addr_size(%struct.sockaddr_storage* %32)
  %34 = call i32 @memcpy(%struct.sockaddr_storage* %12, %struct.sockaddr_storage* %30, i32 %33)
  %35 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_storage*
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_storage*
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = bitcast %struct.sockaddr* %39 to %struct.sockaddr_storage*
  %41 = call i32 @rdma_addr_size(%struct.sockaddr_storage* %40)
  %42 = call i32 @memcpy(%struct.sockaddr_storage* %36, %struct.sockaddr_storage* %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %25
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %52 = call i32 @cma_acquire_dev_by_src_ip(%struct.rdma_id_private* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  br label %66

59:                                               ; preds = %45, %25
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %71 = bitcast %struct.sockaddr* %70 to %struct.sockaddr_storage*
  %72 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %73 = bitcast %struct.sockaddr* %72 to %struct.sockaddr_storage*
  %74 = call i32 @rdma_addr_size(%struct.sockaddr_storage* %73)
  %75 = call i32 @memcpy(%struct.sockaddr_storage* %71, %struct.sockaddr_storage* %12, i32 %74)
  %76 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %77 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %78 = load i32, i32* @RDMA_CM_ADDR_BOUND, align 4
  %79 = call i32 @cma_comp_exch(%struct.rdma_id_private* %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  br label %111

82:                                               ; preds = %69
  %83 = load i32, i32* @RDMA_CM_EVENT_ADDR_ERROR, align 4
  %84 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  br label %90

87:                                               ; preds = %66
  %88 = load i32, i32* @RDMA_CM_EVENT_ADDR_RESOLVED, align 4
  %89 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %92 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)*, i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)** %93, align 8
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %96 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %95, i32 0, i32 1
  %97 = bitcast %struct.rdma_cm_event.0* %10 to %struct.rdma_cm_event*
  %98 = call i64 %94(%struct.TYPE_3__* %96, %struct.rdma_cm_event* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %90
  %101 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %102 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %103 = call i32 @cma_exch(%struct.rdma_id_private* %101, i32 %102)
  %104 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %105 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %108 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %107, i32 0, i32 1
  %109 = call i32 @rdma_destroy_id(%struct.TYPE_3__* %108)
  br label %115

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110, %81, %24
  %112 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %113 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  br label %115

115:                                              ; preds = %111, %100
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cma_comp_exch(%struct.rdma_id_private*, i32, i32) #2

declare dso_local %struct.sockaddr_storage* @cma_src_addr(%struct.rdma_id_private*) #2

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #2

declare dso_local i32 @rdma_addr_size(%struct.sockaddr_storage*) #2

declare dso_local i32 @cma_acquire_dev_by_src_ip(%struct.rdma_id_private*) #2

declare dso_local i32 @pr_debug_ratelimited(i8*, i32) #2

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
