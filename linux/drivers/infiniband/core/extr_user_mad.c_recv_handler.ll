; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_recv_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, %struct.ib_umad_file* }
%struct.ib_umad_file = type { i32 }
%struct.ib_mad_send_buf = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_5__, %struct.TYPE_8__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_umad_packet = type { %struct.TYPE_7__, %struct.ib_mad_recv_wc*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_recv_wc*)* @recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_umad_file*, align 8
  %8 = alloca %struct.ib_umad_packet*, align 8
  %9 = alloca %struct.rdma_ah_attr, align 4
  %10 = alloca %struct.ib_global_route*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %6, align 8
  %12 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %13 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %12, i32 0, i32 2
  %14 = load %struct.ib_umad_file*, %struct.ib_umad_file** %13, align 8
  store %struct.ib_umad_file* %14, %struct.ib_umad_file** %7, align 8
  %15 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %16 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_WC_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %211

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ib_umad_packet* @kzalloc(i32 96, i32 %24)
  store %struct.ib_umad_packet* %25, %struct.ib_umad_packet** %8, align 8
  %26 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %27 = icmp ne %struct.ib_umad_packet* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %211

29:                                               ; preds = %23
  %30 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %31 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %34 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %36 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %37 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %36, i32 0, i32 1
  store %struct.ib_mad_recv_wc* %35, %struct.ib_mad_recv_wc** %37, align 8
  %38 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %39 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 12
  store i64 0, i64* %41, align 8
  %42 = load %struct.ib_umad_file*, %struct.ib_umad_file** %7, align 8
  %43 = call i64 @hdr_size(%struct.ib_umad_file* %42)
  %44 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %45 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %49 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 11
  store i64 %47, i64* %51, align 8
  %52 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %53 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %59 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  store i8* %57, i8** %61, align 8
  %62 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %63 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %66 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @rdma_cap_opa_mad(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %29
  %71 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %72 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 65535, %75
  %77 = call i8* @ib_lid_be16(i32 %76)
  %78 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %79 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 9
  store i8* %77, i8** %81, align 8
  br label %93

82:                                               ; preds = %29
  %83 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %84 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @ib_lid_be16(i32 %87)
  %89 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %90 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 9
  store i8* %88, i8** %92, align 8
  br label %93

93:                                               ; preds = %82, %70
  %94 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %95 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %100 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  store i32 %98, i32* %102, align 8
  %103 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %104 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %109 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  store i32 %107, i32* %111, align 4
  %112 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %113 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %118 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  store i32 %116, i32* %120, align 8
  %121 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %122 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IB_WC_GRH, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %133 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %137 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %200

142:                                              ; preds = %93
  %143 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %144 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %147 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %150 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %153 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ib_init_ah_attr_from_wc(i32 %145, i32 %148, %struct.TYPE_8__* %151, i32 %155, %struct.rdma_ah_attr* %9)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  br label %208

160:                                              ; preds = %142
  %161 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %9)
  store %struct.ib_global_route* %161, %struct.ib_global_route** %10, align 8
  %162 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %163 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %166 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 5
  store i32 %164, i32* %168, align 4
  %169 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %170 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %173 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  store i32 %171, i32* %175, align 8
  %176 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %177 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %180 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  store i32 %178, i32* %182, align 4
  %183 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %184 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %189 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %188, i32 0, i32 1
  %190 = call i32 @memcpy(i32 %187, i32* %189, i32 16)
  %191 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %192 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %196 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i8* %194, i8** %198, align 8
  %199 = call i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr* %9)
  br label %200

200:                                              ; preds = %160, %93
  %201 = load %struct.ib_umad_file*, %struct.ib_umad_file** %7, align 8
  %202 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %203 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %204 = call i64 @queue_packet(%struct.ib_umad_file* %201, %struct.ib_mad_agent* %202, %struct.ib_umad_packet* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %208

207:                                              ; preds = %200
  br label %214

208:                                              ; preds = %206, %159
  %209 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %210 = call i32 @kfree(%struct.ib_umad_packet* %209)
  br label %211

211:                                              ; preds = %208, %28, %22
  %212 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %213 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %212)
  br label %214

214:                                              ; preds = %211, %207
  ret void
}

declare dso_local %struct.ib_umad_packet* @kzalloc(i32, i32) #1

declare dso_local i64 @hdr_size(%struct.ib_umad_file*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @rdma_cap_opa_mad(i32, i32) #1

declare dso_local i8* @ib_lid_be16(i32) #1

declare dso_local i32 @ib_init_ah_attr_from_wc(i32, i32, %struct.TYPE_8__*, i32, %struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr*) #1

declare dso_local i64 @queue_packet(%struct.ib_umad_file*, %struct.ib_mad_agent*, %struct.ib_umad_packet*) #1

declare dso_local i32 @kfree(%struct.ib_umad_packet*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
