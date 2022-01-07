; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_id_from_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_id_from_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_cm_event = type { i32 }
%struct.cma_req_info = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.rdma_bind_list = type { i32 }
%struct.sockaddr = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_id_private* (%struct.ib_cm_id*, %struct.ib_cm_event*, %struct.cma_req_info*, %struct.net_device**)* @cma_ib_id_from_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_id_private* @cma_ib_id_from_event(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1, %struct.cma_req_info* %2, %struct.net_device** %3) #0 {
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.ib_cm_event*, align 8
  %8 = alloca %struct.cma_req_info*, align 8
  %9 = alloca %struct.net_device**, align 8
  %10 = alloca %struct.rdma_bind_list*, align 8
  %11 = alloca %struct.rdma_id_private*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %6, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %7, align 8
  store %struct.cma_req_info* %2, %struct.cma_req_info** %8, align 8
  store %struct.net_device** %3, %struct.net_device*** %9, align 8
  %13 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %14 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %15 = call i32 @cma_save_req_info(%struct.ib_cm_event* %13, %struct.cma_req_info* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.rdma_id_private* @ERR_PTR(i32 %19)
  store %struct.rdma_id_private* %20, %struct.rdma_id_private** %5, align 8
  br label %128

21:                                               ; preds = %4
  %22 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %23 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %24 = call %struct.rdma_id_private* @cma_get_net_dev(%struct.ib_cm_event* %22, %struct.cma_req_info* %23)
  %25 = bitcast %struct.rdma_id_private* %24 to %struct.net_device*
  %26 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* %25, %struct.net_device** %26, align 8
  %27 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = bitcast %struct.net_device* %28 to %struct.rdma_id_private*
  %30 = call i64 @IS_ERR(%struct.rdma_id_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = bitcast %struct.net_device* %34 to %struct.rdma_id_private*
  %36 = call i32 @PTR_ERR(%struct.rdma_id_private* %35)
  %37 = load i32, i32* @EAFNOSUPPORT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* null, %struct.net_device** %41, align 8
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  %45 = bitcast %struct.net_device* %44 to %struct.rdma_id_private*
  %46 = call %struct.rdma_id_private* @ERR_CAST(%struct.rdma_id_private* %45)
  store %struct.rdma_id_private* %46, %struct.rdma_id_private** %5, align 8
  br label %128

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %21
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_UP, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @EHOSTUNREACH, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.rdma_id_private* @ERR_PTR(i32 %63)
  store %struct.rdma_id_private* %64, %struct.rdma_id_private** %11, align 8
  br label %111

65:                                               ; preds = %53
  %66 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = bitcast %struct.net_device* %67 to %struct.rdma_id_private*
  %69 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %70 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %69, i32 0, i32 2
  %71 = bitcast i32* %70 to %struct.sockaddr*
  %72 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %73 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %72, i32 0, i32 1
  %74 = bitcast i32* %73 to %struct.sockaddr*
  %75 = call i32 @validate_net_dev(%struct.rdma_id_private* %68, %struct.sockaddr* %71, %struct.sockaddr* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @EHOSTUNREACH, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.rdma_id_private* @ERR_PTR(i32 %79)
  store %struct.rdma_id_private* %80, %struct.rdma_id_private** %11, align 8
  br label %111

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %84 = load %struct.net_device*, %struct.net_device** %83, align 8
  %85 = icmp ne %struct.net_device* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %88 = load %struct.net_device*, %struct.net_device** %87, align 8
  %89 = bitcast %struct.net_device* %88 to %struct.rdma_id_private*
  %90 = call i32* @dev_net(%struct.rdma_id_private* %89)
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i32* [ %90, %86 ], [ @init_net, %91 ]
  %94 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %95 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rdma_ps_from_service_id(i32 %96)
  %98 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %99 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cma_port_from_service_id(i32 %100)
  %102 = call %struct.rdma_bind_list* @cma_ps_find(i32* %93, i32 %97, i32 %101)
  store %struct.rdma_bind_list* %102, %struct.rdma_bind_list** %10, align 8
  %103 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %10, align 8
  %104 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %105 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %106 = load %struct.cma_req_info*, %struct.cma_req_info** %8, align 8
  %107 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = bitcast %struct.net_device* %108 to %struct.rdma_id_private*
  %110 = call %struct.rdma_id_private* @cma_find_listener(%struct.rdma_bind_list* %103, %struct.ib_cm_id* %104, %struct.ib_cm_event* %105, %struct.cma_req_info* %106, %struct.rdma_id_private* %109)
  store %struct.rdma_id_private* %110, %struct.rdma_id_private** %11, align 8
  br label %111

111:                                              ; preds = %92, %77, %61
  %112 = call i32 (...) @rcu_read_unlock()
  %113 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  %114 = call i64 @IS_ERR(%struct.rdma_id_private* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = icmp ne %struct.net_device* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %122 = load %struct.net_device*, %struct.net_device** %121, align 8
  %123 = bitcast %struct.net_device* %122 to %struct.rdma_id_private*
  %124 = call i32 @dev_put(%struct.rdma_id_private* %123)
  %125 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* null, %struct.net_device** %125, align 8
  br label %126

126:                                              ; preds = %120, %116, %111
  %127 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  store %struct.rdma_id_private* %127, %struct.rdma_id_private** %5, align 8
  br label %128

128:                                              ; preds = %126, %42, %18
  %129 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  ret %struct.rdma_id_private* %129
}

declare dso_local i32 @cma_save_req_info(%struct.ib_cm_event*, %struct.cma_req_info*) #1

declare dso_local %struct.rdma_id_private* @ERR_PTR(i32) #1

declare dso_local %struct.rdma_id_private* @cma_get_net_dev(%struct.ib_cm_event*, %struct.cma_req_info*) #1

declare dso_local i64 @IS_ERR(%struct.rdma_id_private*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_id_private*) #1

declare dso_local %struct.rdma_id_private* @ERR_CAST(%struct.rdma_id_private*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @validate_net_dev(%struct.rdma_id_private*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local %struct.rdma_bind_list* @cma_ps_find(i32*, i32, i32) #1

declare dso_local i32* @dev_net(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_ps_from_service_id(i32) #1

declare dso_local i32 @cma_port_from_service_id(i32) #1

declare dso_local %struct.rdma_id_private* @cma_find_listener(%struct.rdma_bind_list*, %struct.ib_cm_id*, %struct.ib_cm_event*, %struct.cma_req_info*, %struct.rdma_id_private*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_put(%struct.rdma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
