; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_udp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32 }
%struct.ib_cm_sidr_req_param = type { i32, i32, i32, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_sidr_rep_handler = common dso_local global i32 0, align 4
@CMA_CM_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@CMA_MAX_CM_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_resolve_ib_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_udp(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_param, align 8
  %7 = alloca %struct.ib_cm_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %11 = call i32 @memset(%struct.ib_cm_sidr_req_param* %6, i32 0, i32 32)
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %13 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %23 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %148

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* @kzalloc(i64 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %148

44:                                               ; preds = %33
  br label %46

45:                                               ; preds = %29
  store i8* null, i8** %8, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %62 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %65 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @memcpy(i8* %60, i32 %63, i64 %67)
  br label %69

69:                                               ; preds = %56, %51, %46
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %75 = call i32 @cma_format_hdr(i8* %73, %struct.rdma_id_private* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %144

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 6
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %69
  %83 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %84 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @cma_sidr_rep_handler, align 4
  %88 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %89 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %86, i32 %87, %struct.rdma_id_private* %88)
  store %struct.ib_cm_id* %89, %struct.ib_cm_id** %7, align 8
  %90 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %91 = call i64 @IS_ERR(%struct.ib_cm_id* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %95 = call i32 @PTR_ERR(%struct.ib_cm_id* %94)
  store i32 %95, i32* %10, align 4
  br label %144

96:                                               ; preds = %82
  %97 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %98 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %99 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store %struct.ib_cm_id* %97, %struct.ib_cm_id** %100, align 8
  %101 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %102 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 5
  store i32 %105, i32* %106, align 4
  %107 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 4
  store i32 %113, i32* %114, align 8
  %115 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %116 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %115, i32 0, i32 1
  %117 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %118 = call i32 @cma_dst_addr(%struct.rdma_id_private* %117)
  %119 = call i32 @rdma_get_service_id(%struct.TYPE_10__* %116, i32 %118)
  %120 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @CMA_CM_RESPONSE_TIMEOUT, align 4
  %122 = sub nsw i32 %121, 8
  %123 = shl i32 1, %122
  %124 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @CMA_MAX_CM_RETRIES, align 4
  %126 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  store i32 %125, i32* %126, align 8
  %127 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %128 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.ib_cm_id*, %struct.ib_cm_id** %129, align 8
  %131 = call i32 @ib_send_cm_sidr_req(%struct.ib_cm_id* %130, %struct.ib_cm_sidr_req_param* %6)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %96
  %135 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %136 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.ib_cm_id*, %struct.ib_cm_id** %137, align 8
  %139 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %138)
  %140 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %141 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %142, align 8
  br label %143

143:                                              ; preds = %134, %96
  br label %144

144:                                              ; preds = %143, %93, %78
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @kfree(i8* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %41, %26
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.ib_cm_sidr_req_param*, i32, i32) #1

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @cma_format_hdr(i8*, %struct.rdma_id_private*) #1

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @ib_send_cm_sidr_req(%struct.ib_cm_id*, %struct.ib_cm_sidr_req_param*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
