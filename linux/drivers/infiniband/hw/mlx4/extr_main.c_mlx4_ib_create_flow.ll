; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow = type { i32 }
%struct.ib_qp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_flow_attr = type { i32, i32, i32 }
%struct.ib_udata = type { i64 }
%struct.mlx4_ib_flow = type { %struct.TYPE_4__*, %struct.ib_flow }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.mlx4_dev* }

@EINVAL = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_DONT_TRAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@MLX4_FS_MC_DEFAULT = common dso_local global i32 0, align 4
@MLX4_FS_MIRROR_RX_PORT = common dso_local global i32 0, align 4
@MLX4_FS_MIRROR_SX_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32, %struct.ib_udata*)* @mlx4_ib_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_flow* @mlx4_ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_flow*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_flow_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_ib_flow*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.mlx4_dev*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %21, align 8
  store %struct.mlx4_dev* %22, %struct.mlx4_dev** %15, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %15, align 8
  %24 = call i32 @mlx4_is_bonded(%struct.mlx4_dev* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %26 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %31 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29, %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.ib_flow* @ERR_PTR(i32 %41)
  store %struct.ib_flow* %42, %struct.ib_flow** %5, align 8
  br label %308

43:                                               ; preds = %29
  %44 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %45 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.ib_flow* @ERR_PTR(i32 %53)
  store %struct.ib_flow* %54, %struct.ib_flow** %5, align 8
  br label %308

55:                                               ; preds = %43
  %56 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 129
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.ib_flow* @ERR_PTR(i32 %69)
  store %struct.ib_flow* %70, %struct.ib_flow** %5, align 8
  br label %308

71:                                               ; preds = %62, %55
  %72 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %73 = icmp ne %struct.ib_udata* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %76 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %81 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %82 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %80, i32 0, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.ib_flow* @ERR_PTR(i32 %88)
  store %struct.ib_flow* %89, %struct.ib_flow** %5, align 8
  br label %308

90:                                               ; preds = %79, %74, %71
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %92 = call i32 @memset(i32* %91, i32 0, i32 8)
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.mlx4_ib_flow* @kzalloc(i32 16, i32 %93)
  store %struct.mlx4_ib_flow* %94, %struct.mlx4_ib_flow** %13, align 8
  %95 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %96 = icmp ne %struct.mlx4_ib_flow* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %303

100:                                              ; preds = %90
  %101 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %136 [
    i32 129, label %104
    i32 131, label %125
    i32 130, label %128
    i32 128, label %131
  ]

104:                                              ; preds = %100
  %105 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %106 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @unlikely(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %15, align 8
  %114 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %116 = call i32 @mlx4_ib_add_dont_trap_rule(%struct.mlx4_dev* %113, %struct.ib_flow_attr* %114, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %303

120:                                              ; preds = %112
  br label %124

121:                                              ; preds = %104
  %122 = load i32, i32* @MLX4_FS_REGULAR, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %139

125:                                              ; preds = %100
  %126 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %126, i32* %127, align 4
  br label %139

128:                                              ; preds = %100
  %129 = load i32, i32* @MLX4_FS_MC_DEFAULT, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %129, i32* %130, align 4
  br label %139

131:                                              ; preds = %100
  %132 = load i32, i32* @MLX4_FS_MIRROR_RX_PORT, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @MLX4_FS_MIRROR_SX_PORT, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %100
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %303

139:                                              ; preds = %131, %128, %125, %124
  br label %140

140:                                              ; preds = %201, %139
  %141 = load i32, i32* %11, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %145, %140
  %152 = phi i1 [ false, %140 ], [ %150, %145 ]
  br i1 %152, label %153, label %204

153:                                              ; preds = %151
  %154 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %155 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %162 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = call i32 @__mlx4_ib_create_flow(%struct.ib_qp* %154, %struct.ib_flow_attr* %155, i32 %156, i32 %160, i32* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %153
  br label %258

172:                                              ; preds = %153
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %172
  %176 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %177 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %176, i32 0, i32 0
  store i32 2, i32* %177, align 4
  %178 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %179 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = call i32 @__mlx4_ib_create_flow(%struct.ib_qp* %178, %struct.ib_flow_attr* %179, i32 %180, i32 %184, i32* %191)
  store i32 %192, i32* %10, align 4
  %193 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %194 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %193, i32 0, i32 0
  store i32 1, i32* %194, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %175
  br label %258

198:                                              ; preds = %175
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %198, %172
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %140

204:                                              ; preds = %151
  %205 = load i32, i32* %11, align 4
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %207 = call i32 @ARRAY_SIZE(i32* %206)
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %255

209:                                              ; preds = %204
  %210 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %211 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 129
  br i1 %213, label %214, label %255

214:                                              ; preds = %209
  %215 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %216 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %217 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = call i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp* %215, %struct.ib_flow_attr* %216, i32* %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %214
  br label %258

228:                                              ; preds = %214
  %229 = load i32, i32* %16, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %228
  %232 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %233 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %232, i32 0, i32 0
  store i32 2, i32* %233, align 4
  %234 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %235 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %236 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = call i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp* %234, %struct.ib_flow_attr* %235, i32* %242)
  store i32 %243, i32* %10, align 4
  %244 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %245 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %244, i32 0, i32 0
  store i32 1, i32* %245, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %231
  br label %258

249:                                              ; preds = %231
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %249, %228
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %252, %209, %204
  %256 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %257 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %256, i32 0, i32 1
  store %struct.ib_flow* %257, %struct.ib_flow** %5, align 8
  br label %308

258:                                              ; preds = %248, %227, %197, %171
  br label %259

259:                                              ; preds = %262, %258
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %259
  %263 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %264 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %263, i32 0, i32 0
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %265)
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %267, align 8
  %269 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %270 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %269, i32 0, i32 0
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev* %268, i32 %276)
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %11, align 4
  br label %259

280:                                              ; preds = %259
  br label %281

281:                                              ; preds = %284, %280
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %302

284:                                              ; preds = %281
  %285 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %286 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %285, i32 0, i32 0
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %287)
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load %struct.mlx4_dev*, %struct.mlx4_dev** %289, align 8
  %291 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev* %290, i32 %298)
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %12, align 4
  br label %281

302:                                              ; preds = %281
  br label %303

303:                                              ; preds = %302, %136, %119, %97
  %304 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %13, align 8
  %305 = call i32 @kfree(%struct.mlx4_ib_flow* %304)
  %306 = load i32, i32* %10, align 4
  %307 = call %struct.ib_flow* @ERR_PTR(i32 %306)
  store %struct.ib_flow* %307, %struct.ib_flow** %5, align 8
  br label %308

308:                                              ; preds = %303, %255, %86, %67, %51, %39
  %309 = load %struct.ib_flow*, %struct.ib_flow** %5, align 8
  ret %struct.ib_flow* %309
}

declare dso_local %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local %struct.ib_flow* @ERR_PTR(i32) #1

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.mlx4_ib_flow* @kzalloc(i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @mlx4_ib_add_dont_trap_rule(%struct.mlx4_dev*, %struct.ib_flow_attr*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__mlx4_ib_create_flow(%struct.ib_qp*, %struct.ib_flow_attr*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp*, %struct.ib_flow_attr*, i32*) #1

declare dso_local i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
