; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_connect_iw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_connect_iw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }

@cma_iw_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_connect_iw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_connect_iw(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iw_cm_conn_param, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @cma_iw_handler, align 4
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %15 = call %struct.iw_cm_id* @iw_create_cm_id(i32 %12, i32 %13, %struct.rdma_id_private* %14)
  store %struct.iw_cm_id* %15, %struct.iw_cm_id** %6, align 8
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %17 = call i64 @IS_ERR(%struct.iw_cm_id* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.iw_cm_id* %20)
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %27 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %32 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.iw_cm_id* %33, %struct.iw_cm_id** %36, align 8
  %37 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %38 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %37, i32 0, i32 1
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %40 = call i32 @cma_src_addr(%struct.rdma_id_private* %39)
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %42 = call i32 @cma_src_addr(%struct.rdma_id_private* %41)
  %43 = call i32 @rdma_addr_size(i32 %42)
  %44 = call i32 @memcpy(i32* %38, i32 %40, i32 %43)
  %45 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %46 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %45, i32 0, i32 0
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = call i32 @cma_dst_addr(%struct.rdma_id_private* %47)
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %50 = call i32 @cma_dst_addr(%struct.rdma_id_private* %49)
  %51 = call i32 @rdma_addr_size(i32 %50)
  %52 = call i32 @memcpy(i32* %46, i32 %48, i32 %51)
  %53 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %54 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %55 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %53, %struct.rdma_conn_param* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %22
  br label %104

59:                                               ; preds = %22
  %60 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %61 = icmp ne %struct.rdma_conn_param* %60, null
  br i1 %61, label %62, label %95

62:                                               ; preds = %59
  %63 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %64 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %72 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %76 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %80 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %86 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  br label %92

88:                                               ; preds = %62
  %89 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %90 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %87, %84 ], [ %91, %88 ]
  %94 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  br label %101

95:                                               ; preds = %59
  %96 = call i32 @memset(%struct.iw_cm_conn_param* %8, i32 0, i32 20)
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %92
  %102 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %103 = call i32 @iw_cm_connect(%struct.iw_cm_id* %102, %struct.iw_cm_conn_param* %8)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %58
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %109 = call i32 @iw_destroy_cm_id(%struct.iw_cm_id* %108)
  %110 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %111 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %112, align 8
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.iw_cm_id* @iw_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_size(i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @memset(%struct.iw_cm_conn_param*, i32, i32) #1

declare dso_local i32 @iw_cm_connect(%struct.iw_cm_id*, %struct.iw_cm_conn_param*) #1

declare dso_local i32 @iw_destroy_cm_id(%struct.iw_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
