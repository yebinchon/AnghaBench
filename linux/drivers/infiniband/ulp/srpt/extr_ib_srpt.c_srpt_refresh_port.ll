; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_refresh_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_refresh_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_port = type { i32, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.srpt_port* }
%struct.TYPE_6__ = type { %struct.srpt_port* }
%struct.ib_mad_reg_req = type { i8*, i8*, i32, i32, i32 }
%struct.ib_port_modify = type { i8*, i8*, i32, i32, i32 }
%struct.ib_port_attr = type { i32, i32 }

@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"0x%016llx%016llx\00", align 1
@IB_MGMT_CLASS_DEVICE_MGMT = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SET = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@srpt_mad_send_handler = common dso_local global i32 0, align 4
@srpt_mad_recv_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_port*)* @srpt_refresh_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_refresh_port(%struct.srpt_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srpt_port*, align 8
  %4 = alloca %struct.ib_mad_reg_req, align 8
  %5 = alloca %struct.ib_port_modify, align 8
  %6 = alloca %struct.ib_port_attr, align 4
  %7 = alloca i32, align 4
  store %struct.srpt_port* %0, %struct.srpt_port** %3, align 8
  %8 = call i32 @memset(%struct.ib_port_modify* %5, i32 0, i32 32)
  %9 = load i8*, i8** @IB_PORT_DEVICE_MGMT_SUP, align 8
  %10 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %13 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %18 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ib_modify_port(i32 %16, i32 %19, i32 0, %struct.ib_port_modify* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %155

24:                                               ; preds = %1
  %25 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %26 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %31 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ib_query_port(i32 %29, i32 %32, %struct.ib_port_attr* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %142

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %41 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %45 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %47 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %52 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %55 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %54, i32 0, i32 4
  %56 = call i32 @rdma_query_gid(i32 %50, i32 %53, i32 0, %struct.TYPE_10__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  br label %142

60:                                               ; preds = %37
  %61 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %62 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %63 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.srpt_port* %61, %struct.srpt_port** %64, align 8
  %65 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %66 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %69 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @srpt_format_guid(i32 %67, i32 4, i32* %71)
  %73 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %74 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %75 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store %struct.srpt_port* %73, %struct.srpt_port** %76, align 8
  %77 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %78 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %81 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be64_to_cpu(i32 %84)
  %86 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %87 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be64_to_cpu(i32 %90)
  %92 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %91)
  %93 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %94 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %141, label %97

97:                                               ; preds = %60
  %98 = bitcast %struct.ib_mad_reg_req* %4 to %struct.ib_port_modify*
  %99 = call i32 @memset(%struct.ib_port_modify* %98, i32 0, i32 32)
  %100 = load i32, i32* @IB_MGMT_CLASS_DEVICE_MGMT, align 4
  %101 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %4, i32 0, i32 4
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %103 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %4, i32 0, i32 3
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %105 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %4, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set_bit(i32 %104, i32 %106)
  %108 = load i32, i32* @IB_MGMT_METHOD_SET, align 4
  %109 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %4, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @set_bit(i32 %108, i32 %110)
  %112 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %113 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %118 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IB_QPT_GSI, align 4
  %121 = bitcast %struct.ib_mad_reg_req* %4 to %struct.ib_port_modify*
  %122 = load i32, i32* @srpt_mad_send_handler, align 4
  %123 = load i32, i32* @srpt_mad_recv_handler, align 4
  %124 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %125 = call i32* @ib_register_mad_agent(i32 %116, i32 %119, i32 %120, %struct.ib_port_modify* %121, i32 0, i32 %122, i32 %123, %struct.srpt_port* %124, i32 0)
  %126 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %127 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %129 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @IS_ERR(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %97
  %134 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %135 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @PTR_ERR(i32* %136)
  store i32 %137, i32* %7, align 4
  %138 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %139 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  br label %142

140:                                              ; preds = %97
  br label %141

141:                                              ; preds = %140, %60
  store i32 0, i32* %2, align 4
  br label %157

142:                                              ; preds = %133, %59, %36
  %143 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 1
  store i8* null, i8** %143, align 8
  %144 = load i8*, i8** @IB_PORT_DEVICE_MGMT_SUP, align 8
  %145 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %147 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %152 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ib_modify_port(i32 %150, i32 %153, i32 0, %struct.ib_port_modify* %5)
  br label %155

155:                                              ; preds = %142, %23
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %141
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @memset(%struct.ib_port_modify*, i32, i32) #1

declare dso_local i32 @ib_modify_port(i32, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @ib_query_port(i32, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @rdma_query_gid(i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @srpt_format_guid(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32* @ib_register_mad_agent(i32, i32, i32, %struct.ib_port_modify*, i32, i32, i32, %struct.srpt_port*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
