; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_event = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_dev = type { i32, i32, %struct.mlx4_dev*, i32 }
%struct.mlx4_eqe = type { i32 }
%struct.ib_event_work = type { i32, %struct.mlx4_ib_dev*, i32 }
%struct.ib_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@MLX4_FLAG_SECURE_HOST = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i8*, i32, i64)* @mlx4_ib_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_event(%struct.mlx4_dev* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_event, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_eqe*, align 8
  %12 = alloca %struct.ib_event_work*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ib_device*
  %18 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %10, align 8
  store %struct.mlx4_eqe* null, %struct.mlx4_eqe** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 132
  br i1 %27, label %28, label %45

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.ib_event_work* @kmalloc(i32 24, i32 %29)
  store %struct.ib_event_work* %30, %struct.ib_event_work** %12, align 8
  %31 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %32 = icmp ne %struct.ib_event_work* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %237

34:                                               ; preds = %28
  %35 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %36 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %35, i32 0, i32 0
  %37 = call i32 @INIT_WORK(i32* %36, i32 (i32*)* @handle_bonded_port_state_event)
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %39 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %40 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %39, i32 0, i32 1
  store %struct.mlx4_ib_dev* %38, %struct.mlx4_ib_dev** %40, align 8
  %41 = load i32, i32* @wq, align 4
  %42 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %43 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %237

45:                                               ; preds = %25, %4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 131
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = inttoptr i64 %49 to %struct.mlx4_eqe*
  store %struct.mlx4_eqe* %50, %struct.mlx4_eqe** %11, align 8
  br label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %7, align 4
  switch i32 %55, label %220 [
    i32 130, label %56
    i32 132, label %109
    i32 133, label %119
    i32 131, label %126
    i32 129, label %156
    i32 128, label %188
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %237

63:                                               ; preds = %56
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %65 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %106, label %67

67:                                               ; preds = %63
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @rdma_port_get_link_layer(i32* %69, i32 %70)
  %72 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %67
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %76 = call i32 @mlx4_is_master(%struct.mlx4_dev* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %83, i32 0, i32 2
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %84, align 8
  %86 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MLX4_FLAG_SECURE_HOST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 2
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %93, align 8
  %95 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %91
  %102 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @mlx4_sched_ib_sl2vl_update_work(%struct.mlx4_ib_dev* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %91, %82
  br label %106

106:                                              ; preds = %105, %67, %63
  %107 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %108 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  br label %221

109:                                              ; preds = %54
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %237

116:                                              ; preds = %109
  %117 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %118 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  br label %221

119:                                              ; preds = %54
  %120 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %123 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %125 = call i32 @mlx4_ib_handle_catas_error(%struct.mlx4_ib_dev* %124)
  br label %221

126:                                              ; preds = %54
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call %struct.ib_event_work* @kmalloc(i32 24, i32 %127)
  store %struct.ib_event_work* %128, %struct.ib_event_work** %12, align 8
  %129 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %130 = icmp ne %struct.ib_event_work* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %221

132:                                              ; preds = %126
  %133 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %134 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %133, i32 0, i32 0
  %135 = call i32 @INIT_WORK(i32* %134, i32 (i32*)* @handle_port_mgmt_change_event)
  %136 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %137 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %136, i32 0, i32 2
  %138 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %11, align 8
  %139 = call i32 @memcpy(i32* %137, %struct.mlx4_eqe* %138, i32 4)
  %140 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %141 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %142 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %141, i32 0, i32 1
  store %struct.mlx4_ib_dev* %140, %struct.mlx4_ib_dev** %142, align 8
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %144 = call i32 @mlx4_is_master(%struct.mlx4_dev* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load i32, i32* @wq, align 4
  %148 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %149 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %148, i32 0, i32 0
  %150 = call i32 @queue_work(i32 %147, i32* %149)
  br label %155

151:                                              ; preds = %132
  %152 = load %struct.ib_event_work*, %struct.ib_event_work** %12, align 8
  %153 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %152, i32 0, i32 0
  %154 = call i32 @handle_port_mgmt_change_event(i32* %153)
  br label %155

155:                                              ; preds = %151, %146
  br label %237

156:                                              ; preds = %54
  %157 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @do_slave_init(%struct.mlx4_ib_dev* %157, i32 %158, i32 1)
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %161 = call i32 @mlx4_is_master(%struct.mlx4_dev* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %156
  store i32 1, i32* %14, align 4
  br label %164

164:                                              ; preds = %183, %163
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %167 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %165, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @rdma_port_get_link_layer(i32* %172, i32 %173)
  %175 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @mlx4_ib_slave_alias_guid_event(%struct.mlx4_ib_dev* %178, i32 %179, i32 %180, i32 1)
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %164

186:                                              ; preds = %164
  br label %187

187:                                              ; preds = %186, %156
  br label %237

188:                                              ; preds = %54
  %189 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %190 = call i32 @mlx4_is_master(%struct.mlx4_dev* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %216

192:                                              ; preds = %188
  store i32 1, i32* %15, align 4
  br label %193

193:                                              ; preds = %212, %192
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sle i32 %194, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %193
  %200 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %200, i32 0, i32 3
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @rdma_port_get_link_layer(i32* %201, i32 %202)
  %204 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @mlx4_ib_slave_alias_guid_event(%struct.mlx4_ib_dev* %207, i32 %208, i32 %209, i32 0)
  br label %211

211:                                              ; preds = %206, %199
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %193

215:                                              ; preds = %193
  br label %216

216:                                              ; preds = %215, %188
  %217 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @do_slave_init(%struct.mlx4_ib_dev* %217, i32 %218, i32 0)
  br label %237

220:                                              ; preds = %54
  br label %237

221:                                              ; preds = %131, %119, %116, %106
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i8* %222, i8** %223, align 8
  %224 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %224, i32 0, i32 2
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %225, align 8
  %227 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  br label %232

230:                                              ; preds = %221
  %231 = load i32, i32* %13, align 4
  br label %232

232:                                              ; preds = %230, %229
  %233 = phi i32 [ 1, %229 ], [ %231, %230 ]
  %234 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %237

237:                                              ; preds = %232, %220, %216, %187, %155, %115, %62, %34, %33
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local %struct.ib_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @handle_bonded_port_state_event(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_sched_ib_sl2vl_update_work(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_handle_catas_error(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @handle_port_mgmt_change_event(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx4_eqe*, i32) #1

declare dso_local i32 @do_slave_init(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx4_ib_slave_alias_guid_event(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
