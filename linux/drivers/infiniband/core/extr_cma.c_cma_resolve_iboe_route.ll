; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_iboe_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_iboe_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_5__, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, %struct.rdma_route }
%struct.rdma_route = type { i32, %struct.cma_work*, %struct.rdma_addr }
%struct.cma_work = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.rdma_addr = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.net_device = type { i32 }
%struct.sockaddr = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i64 0, align 8
@IB_SA_EQ = common dso_local global i8* null, align 8
@CMA_IBOE_PACKET_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_iboe_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_iboe_route(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca %struct.rdma_addr*, align 8
  %6 = alloca %struct.cma_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.rdma_route* %13, %struct.rdma_route** %4, align 8
  %14 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %14, i32 0, i32 2
  store %struct.rdma_addr* %15, %struct.rdma_addr** %5, align 8
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %26 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @rdma_start_port(i32 %29)
  %31 = sub i64 %24, %30
  %32 = getelementptr inbounds i32, i32* %20, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %41, %38 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 80, i32 %46)
  %48 = bitcast i8* %47 to %struct.cma_work*
  store %struct.cma_work* %48, %struct.cma_work** %6, align 8
  %49 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %50 = icmp ne %struct.cma_work* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %210

54:                                               ; preds = %44
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 80, i32 %55)
  %57 = bitcast i8* %56 to %struct.cma_work*
  %58 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %59 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %58, i32 0, i32 1
  store %struct.cma_work* %57, %struct.cma_work** %59, align 8
  %60 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %61 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %60, i32 0, i32 1
  %62 = load %struct.cma_work*, %struct.cma_work** %61, align 8
  %63 = icmp ne %struct.cma_work* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %206

67:                                               ; preds = %54
  %68 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %69 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %71 = call %struct.net_device* @cma_iboe_set_path_rec_l2_fields(%struct.rdma_id_private* %70)
  store %struct.net_device* %71, %struct.net_device** %8, align 8
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = icmp ne %struct.net_device* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %199

77:                                               ; preds = %67
  %78 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %79 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %81, i32 0, i32 2
  %83 = bitcast i32* %82 to %struct.sockaddr*
  %84 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %85 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %84, i32 0, i32 1
  %86 = load %struct.cma_work*, %struct.cma_work** %85, align 8
  %87 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %86, i32 0, i32 13
  %88 = call i32 @rdma_ip2gid(%struct.sockaddr* %83, i32* %87)
  %89 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %90 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %92, i32 0, i32 1
  %94 = bitcast i32* %93 to %struct.sockaddr*
  %95 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %96 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %95, i32 0, i32 1
  %97 = load %struct.cma_work*, %struct.cma_work** %96, align 8
  %98 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %97, i32 0, i32 12
  %99 = call i32 @rdma_ip2gid(%struct.sockaddr* %94, i32* %98)
  %100 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %101 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %103, i32 0, i32 1
  %105 = bitcast i32* %104 to %struct.sockaddr*
  %106 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 4
  %108 = load i64, i64* @AF_IB, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %77
  %111 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %112 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %116 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %115, i32 0, i32 1
  %117 = load %struct.cma_work*, %struct.cma_work** %116, align 8
  %118 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  br label %124

119:                                              ; preds = %77
  %120 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %121 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %120, i32 0, i32 1
  %122 = load %struct.cma_work*, %struct.cma_work** %121, align 8
  %123 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %110
  %125 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %126 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %125, i32 0, i32 1
  %127 = load %struct.cma_work*, %struct.cma_work** %126, align 8
  %128 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = call i32 @cpu_to_be16(i32 65535)
  %130 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %131 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %130, i32 0, i32 1
  %132 = load %struct.cma_work*, %struct.cma_work** %131, align 8
  %133 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %132, i32 0, i32 11
  store i32 %129, i32* %133, align 8
  %134 = load i8*, i8** @IB_SA_EQ, align 8
  %135 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %136 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %135, i32 0, i32 1
  %137 = load %struct.cma_work*, %struct.cma_work** %136, align 8
  %138 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %137, i32 0, i32 10
  store i8* %134, i8** %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %8, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @iboe_tos_to_sl(%struct.net_device* %139, i32 %140)
  %142 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %143 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %142, i32 0, i32 1
  %144 = load %struct.cma_work*, %struct.cma_work** %143, align 8
  %145 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %144, i32 0, i32 9
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %148 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %147, i32 0, i32 1
  %149 = load %struct.cma_work*, %struct.cma_work** %148, align 8
  %150 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %149, i32 0, i32 8
  store i32 %146, i32* %150, align 8
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @iboe_get_mtu(i32 %153)
  %155 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %156 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %155, i32 0, i32 1
  %157 = load %struct.cma_work*, %struct.cma_work** %156, align 8
  %158 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %157, i32 0, i32 3
  store i32 %154, i32* %158, align 4
  %159 = load i8*, i8** @IB_SA_EQ, align 8
  %160 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %161 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %160, i32 0, i32 1
  %162 = load %struct.cma_work*, %struct.cma_work** %161, align 8
  %163 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %162, i32 0, i32 7
  store i8* %159, i8** %163, align 8
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = call i32 @iboe_get_rate(%struct.net_device* %164)
  %166 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %167 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %166, i32 0, i32 1
  %168 = load %struct.cma_work*, %struct.cma_work** %167, align 8
  %169 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %168, i32 0, i32 6
  store i32 %165, i32* %169, align 8
  %170 = load %struct.net_device*, %struct.net_device** %8, align 8
  %171 = call i32 @dev_put(%struct.net_device* %170)
  %172 = load i8*, i8** @IB_SA_EQ, align 8
  %173 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %174 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %173, i32 0, i32 1
  %175 = load %struct.cma_work*, %struct.cma_work** %174, align 8
  %176 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %175, i32 0, i32 5
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* @CMA_IBOE_PACKET_LIFETIME, align 4
  %178 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %179 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %178, i32 0, i32 1
  %180 = load %struct.cma_work*, %struct.cma_work** %179, align 8
  %181 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %180, i32 0, i32 4
  store i32 %177, i32* %181, align 8
  %182 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %183 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %182, i32 0, i32 1
  %184 = load %struct.cma_work*, %struct.cma_work** %183, align 8
  %185 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %124
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %7, align 4
  br label %199

191:                                              ; preds = %124
  %192 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %193 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %194 = call i32 @cma_init_resolve_route_work(%struct.cma_work* %192, %struct.rdma_id_private* %193)
  %195 = load i32, i32* @cma_wq, align 4
  %196 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %197 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %196, i32 0, i32 2
  %198 = call i32 @queue_work(i32 %195, i32* %197)
  store i32 0, i32* %2, align 4
  br label %210

199:                                              ; preds = %188, %74
  %200 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %201 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %200, i32 0, i32 1
  %202 = load %struct.cma_work*, %struct.cma_work** %201, align 8
  %203 = call i32 @kfree(%struct.cma_work* %202)
  %204 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %205 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %204, i32 0, i32 1
  store %struct.cma_work* null, %struct.cma_work** %205, align 8
  br label %206

206:                                              ; preds = %199, %64
  %207 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %208 = call i32 @kfree(%struct.cma_work* %207)
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %206, %191, %51
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i64 @rdma_start_port(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.net_device* @cma_iboe_set_path_rec_l2_fields(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @iboe_tos_to_sl(%struct.net_device*, i32) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @cma_init_resolve_route_work(%struct.cma_work*, %struct.rdma_id_private*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
