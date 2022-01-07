; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.pvrdma_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_query_port }
%struct.pvrdma_cmd_query_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_query_port_resp }
%struct.pvrdma_cmd_query_port_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PVRDMA_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@PVRDMA_CMD_QUERY_PORT_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not query port, error: %d\0A\00", align 1
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.pvrdma_dev*, align 8
  %9 = alloca %union.pvrdma_cmd_req, align 4
  %10 = alloca %union.pvrdma_cmd_resp, align 4
  %11 = alloca %struct.pvrdma_cmd_query_port*, align 8
  %12 = alloca %struct.pvrdma_cmd_query_port_resp*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.pvrdma_dev* @to_vdev(%struct.ib_device* %14)
  store %struct.pvrdma_dev* %15, %struct.pvrdma_dev** %8, align 8
  %16 = bitcast %union.pvrdma_cmd_req* %9 to %struct.pvrdma_cmd_query_port*
  store %struct.pvrdma_cmd_query_port* %16, %struct.pvrdma_cmd_query_port** %11, align 8
  %17 = bitcast %union.pvrdma_cmd_resp* %10 to %struct.pvrdma_cmd_query_port_resp*
  store %struct.pvrdma_cmd_query_port_resp* %17, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %18 = load %struct.pvrdma_cmd_query_port*, %struct.pvrdma_cmd_query_port** %11, align 8
  %19 = call i32 @memset(%struct.pvrdma_cmd_query_port* %18, i32 0, i32 8)
  %20 = load i32, i32* @PVRDMA_CMD_QUERY_PORT, align 4
  %21 = load %struct.pvrdma_cmd_query_port*, %struct.pvrdma_cmd_query_port** %11, align 8
  %22 = getelementptr inbounds %struct.pvrdma_cmd_query_port, %struct.pvrdma_cmd_query_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pvrdma_cmd_query_port*, %struct.pvrdma_cmd_query_port** %11, align 8
  %26 = getelementptr inbounds %struct.pvrdma_cmd_query_port, %struct.pvrdma_cmd_query_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %28 = load i32, i32* @PVRDMA_CMD_QUERY_PORT_RESP, align 4
  %29 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %27, %union.pvrdma_cmd_req* %9, %union.pvrdma_cmd_resp* %10, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %4, align 4
  br label %168

40:                                               ; preds = %3
  %41 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %42 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pvrdma_port_state_to_ib(i32 %44)
  %46 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %46, i32 0, i32 19
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %49 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 17
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @pvrdma_mtu_to_ib(i32 %51)
  %53 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %53, i32 0, i32 18
  store i8* %52, i8** %54, align 8
  %55 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %56 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 16
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @pvrdma_mtu_to_ib(i32 %58)
  %60 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %60, i32 0, i32 17
  store i8* %59, i8** %61, align 8
  %62 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %63 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 16
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %69 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pvrdma_port_cap_flags_to_ib(i32 %71)
  %73 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %74 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %73, i32 0, i32 15
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %76 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %77 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %83 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %87 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %86, i32 0, i32 14
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %89 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 13
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %95 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %101 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %105 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %104, i32 0, i32 11
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %107 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 8
  %112 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %113 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %117 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %116, i32 0, i32 9
  store i32 %115, i32* %117, align 4
  %118 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %119 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %123 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  %124 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %125 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %129 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %131 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %135 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %137 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %141 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %143 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %147 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %149 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pvrdma_port_width_to_ib(i32 %151)
  %153 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %154 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %156 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pvrdma_port_speed_to_ib(i32 %158)
  %160 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %161 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.pvrdma_cmd_query_port_resp*, %struct.pvrdma_cmd_query_port_resp** %12, align 8
  %163 = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, %struct.pvrdma_cmd_query_port_resp* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %167 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %40, %32
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.pvrdma_dev* @to_vdev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_query_port*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pvrdma_port_state_to_ib(i32) #1

declare dso_local i8* @pvrdma_mtu_to_ib(i32) #1

declare dso_local i32 @pvrdma_port_cap_flags_to_ib(i32) #1

declare dso_local i32 @pvrdma_port_width_to_ib(i32) #1

declare dso_local i32 @pvrdma_port_speed_to_ib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
