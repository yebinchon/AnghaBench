; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i64, i64, i64, i64 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64, i64 }
%struct.mlx4_ib_qp = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"qpn 0x%x: invalid attribute mask specified for transition %d to %d. qp_type %d, attr_mask 0x%x\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"qpn 0x%x: RSS QP unsupported transition %d to %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_IB_MODIFY_QP_RSS_SUP_ATTR_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"qpn 0x%x: RSS QP unsupported attribute mask 0x%x for transition %d to %d\0A\00", align 1
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"qpn 0x%x: invalid port number (%d) specified for transition %d to %d. qp_type %d\0A\00", align 1
@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"qpn 0x%x: invalid pkey index (%d) specified for transition %d to %d. qp_type %d\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"qpn 0x%x: max_rd_atomic (%d) too large. Transition %d to %d. qp_type %d\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [78 x i8] c"qpn 0x%x: max_dest_rd_atomic (%d) too large. Transition %d to %d. qp_type %d\0A\00", align 1
@MLX4_IB_QP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_udata*)* @_mlx4_ib_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_ib_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %9, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %20 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %19)
  store %struct.mlx4_ib_qp* %20, %struct.mlx4_ib_qp** %10, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %4
  %35 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IB_QP_STATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ib_modify_qp_is_ok(i32 %52, i32 %53, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %62 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %68, i32 %69)
  br label %413

71:                                               ; preds = %50
  %72 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %73 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @IB_QPS_RESET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @IB_QPS_INIT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %101, label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @IB_QPS_INIT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @IB_QPS_RTR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %94 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %413

101:                                              ; preds = %88, %80
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MLX4_IB_MODIFY_QP_RSS_SUP_ATTR_MSK, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %109 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  br label %413

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %71
  %119 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = call i64 @mlx4_is_bonded(%struct.TYPE_4__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %179

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @IB_QP_PORT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %179

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @IB_QPS_RESET, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @IB_QPS_INIT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %139 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IB_QPT_RC, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %167, label %143

143:                                              ; preds = %137
  %144 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %145 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @IB_QPT_UD, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %167, label %149

149:                                              ; preds = %143
  %150 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %151 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @IB_QPT_UC, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %157 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %163 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IB_QPT_XRC_INI, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161, %155, %149, %143, %137
  %168 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %169 = call i64 @mlx4_ib_bond_next_port(%struct.mlx4_ib_dev* %168)
  %170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %161
  br label %178

173:                                              ; preds = %133, %129
  %174 = load i32, i32* @IB_QP_PORT, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %173, %172
  br label %179

179:                                              ; preds = %178, %124, %118
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @IB_QP_PORT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %184
  %190 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %191 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %192, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %189, %184
  %198 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %199 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %202 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %208 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %204, i32 %205, i32 %206, i32 %209)
  br label %413

211:                                              ; preds = %189, %179
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @IB_QP_PORT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %211
  %217 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %218 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %223, i32 0, i32 2
  %225 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %226 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i64 @rdma_port_get_link_layer(i32* %224, i32 %228)
  %230 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  br label %413

233:                                              ; preds = %222, %216, %211
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %284

238:                                              ; preds = %233
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @IB_QP_PORT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %245 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  br label %252

247:                                              ; preds = %238
  %248 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %249 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  br label %252

252:                                              ; preds = %247, %243
  %253 = phi i64 [ %246, %243 ], [ %251, %247 ]
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %14, align 4
  %255 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %256 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %258, i32 0, i32 1
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = icmp sge i64 %257, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %252
  %270 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %271 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %274 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %280 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %276, i32 %277, i32 %278, i32 %281)
  br label %413

283:                                              ; preds = %252
  br label %284

284:                                              ; preds = %283, %233
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %314

289:                                              ; preds = %284
  %290 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %291 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %293, i32 0, i32 1
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %292, %298
  br i1 %299, label %300, label %314

300:                                              ; preds = %289
  %301 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %302 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %305 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %311 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %303, i32 %307, i32 %308, i32 %309, i32 %312)
  br label %413

314:                                              ; preds = %289, %284
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %344

319:                                              ; preds = %314
  %320 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %321 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %324 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %323, i32 0, i32 1
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = icmp sgt i64 %322, %328
  br i1 %329, label %330, label %344

330:                                              ; preds = %319
  %331 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %332 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %335 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %334, i32 0, i32 5
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %12, align 4
  %340 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %341 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %333, i32 %337, i32 %338, i32 %339, i32 %342)
  br label %413

344:                                              ; preds = %319, %314
  %345 = load i32, i32* %11, align 4
  %346 = load i32, i32* %12, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @IB_QPS_RESET, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  store i32 0, i32* %13, align 4
  br label %413

353:                                              ; preds = %348, %344
  %354 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %355 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %376

358:                                              ; preds = %353
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* @IB_QPS_INIT, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %376

362:                                              ; preds = %358
  %363 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %364 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %367 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %371 = call i32 @bringup_rss_rwqs(i64 %365, i32 %369, %struct.ib_udata* %370)
  store i32 %371, i32* %13, align 4
  %372 = load i32, i32* %13, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %362
  br label %413

375:                                              ; preds = %362
  br label %376

376:                                              ; preds = %375, %358, %353
  %377 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %378 = load i32, i32* @MLX4_IB_QP_SRC, align 4
  %379 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %384 = call i32 @__mlx4_ib_modify_qp(%struct.ib_qp* %377, i32 %378, %struct.ib_qp_attr* %379, i32 %380, i32 %381, i32 %382, %struct.ib_udata* %383)
  store i32 %384, i32* %13, align 4
  %385 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %386 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %376
  %390 = load i32, i32* %13, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %394 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.ib_udata*, %struct.ib_udata** %8, align 8
  %397 = call i32 @bring_down_rss_rwqs(i64 %395, %struct.ib_udata* %396)
  br label %398

398:                                              ; preds = %392, %389, %376
  %399 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %400 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %399, i32 0, i32 1
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = call i64 @mlx4_is_bonded(%struct.TYPE_4__* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %412

404:                                              ; preds = %398
  %405 = load i32, i32* %7, align 4
  %406 = load i32, i32* @IB_QP_PORT, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %411 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %410, i32 0, i32 2
  store i64 1, i64* %411, align 8
  br label %412

412:                                              ; preds = %409, %404, %398
  br label %413

413:                                              ; preds = %412, %374, %352, %330, %300, %269, %232, %197, %107, %92, %60
  %414 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %415 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %414, i32 0, i32 2
  %416 = call i32 @mutex_unlock(i32* %415)
  %417 = load i32, i32* %13, align 4
  ret i32 %417
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @mlx4_is_bonded(%struct.TYPE_4__*) #1

declare dso_local i64 @mlx4_ib_bond_next_port(%struct.mlx4_ib_dev*) #1

declare dso_local i64 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i32 @bringup_rss_rwqs(i64, i32, %struct.ib_udata*) #1

declare dso_local i32 @__mlx4_ib_modify_qp(%struct.ib_qp*, i32, %struct.ib_qp_attr*, i32, i32, i32, %struct.ib_udata*) #1

declare dso_local i32 @bring_down_rss_rwqs(i64, %struct.ib_udata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
