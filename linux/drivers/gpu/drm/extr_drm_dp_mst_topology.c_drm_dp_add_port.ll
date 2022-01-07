; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_branch = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32)*, i32 (%struct.TYPE_8__*, %struct.drm_dp_mst_port*, i8*)* }
%struct.drm_dp_mst_port = type { i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.drm_dp_mst_branch*, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.drm_dp_link_addr_reply_port = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DPMST\00", align 1
@DP_PEER_DEVICE_DP_LEGACY_CONV = common dso_local global i32 0, align 4
@DP_PEER_DEVICE_SST_SINK = common dso_local global i32 0, align 4
@DP_MST_LOGICAL_PORT_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_branch*, %struct.drm_device*, %struct.drm_dp_link_addr_reply_port*)* @drm_dp_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_add_port(%struct.drm_dp_mst_branch* %0, %struct.drm_device* %1, %struct.drm_dp_link_addr_reply_port* %2) #0 {
  %4 = alloca %struct.drm_dp_mst_branch*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_dp_link_addr_reply_port*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [255 x i8], align 16
  store %struct.drm_dp_mst_branch* %0, %struct.drm_dp_mst_branch** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_dp_link_addr_reply_port* %2, %struct.drm_dp_link_addr_reply_port** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %14 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %15 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.drm_dp_mst_port* @drm_dp_get_port(%struct.drm_dp_mst_branch* %13, i64 %16)
  store %struct.drm_dp_mst_port* %17, %struct.drm_dp_mst_port** %7, align 8
  %18 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %19 = icmp ne %struct.drm_dp_mst_port* %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.drm_dp_mst_port* @kzalloc(i32 120, i32 %21)
  store %struct.drm_dp_mst_port* %22, %struct.drm_dp_mst_port** %7, align 8
  %23 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %24 = icmp ne %struct.drm_dp_mst_port* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %282

26:                                               ; preds = %20
  %27 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %27, i32 0, i32 18
  %29 = call i32 @kref_init(i32* %28)
  %30 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %31 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %30, i32 0, i32 17
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %34 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %35 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %34, i32 0, i32 16
  store %struct.drm_dp_mst_branch* %33, %struct.drm_dp_mst_branch** %35, align 8
  %36 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %37 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %40 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %42 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %45 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %44, i32 0, i32 15
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  %46 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %47 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %53 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %56 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %59 = call i32 @drm_dp_mst_get_mstb_malloc(%struct.drm_dp_mst_branch* %58)
  store i32 1, i32* %9, align 4
  br label %67

60:                                               ; preds = %3
  %61 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %62 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  %64 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %65 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %26
  %68 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %69 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %72 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %74 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %77 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %79 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %82 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 8
  %83 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %84 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %87 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %89 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %92 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 4
  %93 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %94 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %97 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 8
  %98 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %99 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %102 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load %struct.drm_dp_link_addr_reply_port*, %struct.drm_dp_link_addr_reply_port** %6, align 8
  %104 = getelementptr inbounds %struct.drm_dp_link_addr_reply_port, %struct.drm_dp_link_addr_reply_port* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %107 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %67
  %111 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %112 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = call i32 @mutex_lock(i32* %114)
  %116 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %117 = call i32 @drm_dp_mst_topology_get_port(%struct.drm_dp_mst_port* %116)
  %118 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %119 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %118, i32 0, i32 6
  %120 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %121 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %120, i32 0, i32 1
  %122 = call i32 @list_add(i32* %119, i32* %121)
  %123 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %124 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %110, %67
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %131 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %128
  %135 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %136 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %141 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %146 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %149 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %150 = call i32 @drm_dp_send_enum_path_resources(%struct.TYPE_8__* %147, %struct.drm_dp_mst_branch* %148, %struct.drm_dp_mst_port* %149)
  br label %151

151:                                              ; preds = %144, %139
  br label %155

152:                                              ; preds = %134
  %153 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %154 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %153, i32 0, i32 9
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %151
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %159 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %156
  %163 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %164 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %162
  %168 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @drm_dp_port_teardown_pdt(%struct.drm_dp_mst_port* %168, i32 %169)
  %171 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %172 = call i32 @drm_dp_port_setup_pdt(%struct.drm_dp_mst_port* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %183

175:                                              ; preds = %167
  %176 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %177 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %180 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @drm_dp_send_link_address(%struct.TYPE_8__* %178, i32 %181)
  br label %183

183:                                              ; preds = %175, %167
  br label %184

184:                                              ; preds = %183, %162, %156
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %278

187:                                              ; preds = %184
  %188 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %189 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %278, label %192

192:                                              ; preds = %187
  %193 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %194 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %195 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %198 = call i32 @build_mst_prop_path(%struct.drm_dp_mst_branch* %193, i64 %196, i8* %197, i32 255)
  %199 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %200 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32 (%struct.TYPE_8__*, %struct.drm_dp_mst_port*, i8*)*, i32 (%struct.TYPE_8__*, %struct.drm_dp_mst_port*, i8*)** %204, align 8
  %206 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %207 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %210 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %211 = call i32 %205(%struct.TYPE_8__* %208, %struct.drm_dp_mst_port* %209, i8* %210)
  %212 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %213 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %215 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %234, label %218

218:                                              ; preds = %192
  %219 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %220 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %219, i32 0, i32 0
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = call i32 @mutex_lock(i32* %222)
  %224 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %225 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %224, i32 0, i32 6
  %226 = call i32 @list_del(i32* %225)
  %227 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %228 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %227, i32 0, i32 0
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %233 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %232)
  br label %279

234:                                              ; preds = %192
  %235 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %236 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @DP_PEER_DEVICE_DP_LEGACY_CONV, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %234
  %241 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %242 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @DP_PEER_DEVICE_SST_SINK, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %240, %234
  %247 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %248 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DP_MST_LOGICAL_PORT_0, align 8
  %251 = icmp sge i64 %249, %250
  br i1 %251, label %252, label %266

252:                                              ; preds = %246
  %253 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %254 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %257 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = call i32 @drm_get_edid(i32 %255, i32* %258)
  %260 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %261 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 8
  %262 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %263 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @drm_connector_set_tile_property(i32 %264)
  br label %266

266:                                              ; preds = %252, %246, %240
  %267 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %4, align 8
  %268 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %267, i32 0, i32 0
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32 (i32)*, i32 (i32)** %272, align 8
  %274 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %275 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = call i32 %273(i32 %276)
  br label %278

278:                                              ; preds = %266, %187, %184
  br label %279

279:                                              ; preds = %278, %218
  %280 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %281 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %280)
  br label %282

282:                                              ; preds = %279, %25
  ret void
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_get_port(%struct.drm_dp_mst_branch*, i64) #1

declare dso_local %struct.drm_dp_mst_port* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @drm_dp_mst_get_mstb_malloc(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_mst_topology_get_port(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_dp_send_enum_path_resources(%struct.TYPE_8__*, %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_dp_port_teardown_pdt(%struct.drm_dp_mst_port*, i32) #1

declare dso_local i32 @drm_dp_port_setup_pdt(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_dp_send_link_address(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @build_mst_prop_path(%struct.drm_dp_mst_branch*, i64, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_get_edid(i32, i32*) #1

declare dso_local i32 @drm_connector_set_tile_property(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
