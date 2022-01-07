; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_rereg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_rereg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.ib_pd*, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i8*, i8* }
%struct.TYPE_11__ = type { %struct.ib_pd* }
%struct.TYPE_13__ = type { i32 }

@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"start 0x%llx, virt_addr 0x%llx, length 0x%llx, access_flags 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ADDR = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_PD = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_rereg_user_mr(%struct.ib_mr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, %struct.ib_pd* %6, %struct.ib_udata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca %struct.ib_udata*, align 8
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.mlx5_ib_mr*, align 8
  %20 = alloca %struct.ib_pd*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ib_pd* %6, %struct.ib_pd** %16, align 8
  store %struct.ib_udata* %7, %struct.ib_udata** %17, align 8
  %30 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %31 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.mlx5_ib_dev* @to_mdev(i32 %32)
  store %struct.mlx5_ib_dev* %33, %struct.mlx5_ib_dev** %18, align 8
  %34 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %35 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %34)
  store %struct.mlx5_ib_mr* %35, %struct.mlx5_ib_mr** %19, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IB_MR_REREG_PD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  br label %46

42:                                               ; preds = %8
  %43 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %44 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %43, i32 0, i32 0
  %45 = load %struct.ib_pd*, %struct.ib_pd** %44, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi %struct.ib_pd* [ %41, %40 ], [ %45, %42 ]
  store %struct.ib_pd* %47, %struct.ib_pd** %20, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i32 [ %53, %52 ], [ %57, %54 ]
  store i32 %59, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %60, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %62, i8* %63, i32 %64)
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i32 @atomic_sub(i32 %68, i32* %73)
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = icmp ne %struct.TYPE_14__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %58
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %270

82:                                               ; preds = %58
  %83 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %84 = call i64 @is_odp_mr(%struct.mlx5_ib_mr* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %270

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %14, align 8
  store i8* %95, i8** %27, align 8
  %96 = load i8*, i8** %13, align 8
  store i8* %96, i8** %28, align 8
  br label %108

97:                                               ; preds = %89
  %98 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %27, align 8
  %103 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %28, align 8
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @IB_MR_REREG_PD, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i32 @ib_umem_release(%struct.TYPE_14__* %118)
  %120 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %120, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %121, align 8
  %122 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %123 = load %struct.ib_udata*, %struct.ib_udata** %17, align 8
  %124 = load i8*, i8** %27, align 8
  %125 = load i8*, i8** %28, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %127, i32 0, i32 1
  %129 = call i32 @mr_umem_get(%struct.mlx5_ib_dev* %122, %struct.ib_udata* %123, i8* %124, i8* %125, i32 %126, %struct.TYPE_14__** %128, i32* %24, i32* %22, i32* %25, i32* %26)
  store i32 %129, i32* %29, align 4
  %130 = load i32, i32* %29, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %112
  br label %259

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133, %108
  %135 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %136 = call i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev* %135, i32 1)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %189

143:                                              ; preds = %138
  %144 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %145 = load i8*, i8** %27, align 8
  %146 = load i8*, i8** %28, align 8
  %147 = call i32 @use_umr_mtt_update(%struct.mlx5_ib_mr* %144, i8* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %189, label %149

149:                                              ; preds = %143, %134
  %150 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %156 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %157 = call i32 @unreg_umr(%struct.mlx5_ib_dev* %155, %struct.mlx5_ib_mr* %156)
  store i32 %157, i32* %29, align 4
  br label %162

158:                                              ; preds = %149
  %159 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %160 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %161 = call i32 @destroy_mkey(%struct.mlx5_ib_dev* %159, %struct.mlx5_ib_mr* %160)
  store i32 %161, i32* %29, align 4
  br label %162

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %29, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %259

166:                                              ; preds = %162
  %167 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %168 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %169 = load i8*, i8** %27, align 8
  %170 = load i8*, i8** %28, align 8
  %171 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %172 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %21, align 4
  %177 = call %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr* %167, %struct.ib_pd* %168, i8* %169, i8* %170, %struct.TYPE_14__* %173, i32 %174, i32 %175, i32 %176, i32 1)
  store %struct.mlx5_ib_mr* %177, %struct.mlx5_ib_mr** %19, align 8
  %178 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %179 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %166
  %182 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %183 = call i32 @PTR_ERR(%struct.mlx5_ib_mr* %182)
  store i32 %183, i32* %29, align 4
  %184 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %185 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %184)
  store %struct.mlx5_ib_mr* %185, %struct.mlx5_ib_mr** %19, align 8
  br label %259

186:                                              ; preds = %166
  %187 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %188 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  br label %252

189:                                              ; preds = %143, %138
  %190 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %191 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %192 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  store %struct.ib_pd* %190, %struct.ib_pd** %193, align 8
  %194 = load i32, i32* %21, align 4
  %195 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %196 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i8*, i8** %27, align 8
  %198 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %199 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  store i8* %197, i8** %200, align 8
  %201 = load i8*, i8** %28, align 8
  %202 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %203 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  store i8* %201, i8** %204, align 8
  %205 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %206 = call %struct.TYPE_13__* @to_mpd(%struct.ib_pd* %205)
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %210 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %241

216:                                              ; preds = %189
  %217 = load i32, i32* @MLX5_IB_UPD_XLT_ADDR, align 4
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @IB_MR_REREG_PD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* @MLX5_IB_UPD_XLT_PD, align 4
  %224 = load i32, i32* %23, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %23, align 4
  br label %226

226:                                              ; preds = %222, %216
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32, i32* @MLX5_IB_UPD_XLT_ACCESS, align 4
  %233 = load i32, i32* %23, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %23, align 4
  br label %235

235:                                              ; preds = %231, %226
  %236 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %237 = load i32, i32* %24, align 4
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %23, align 4
  %240 = call i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr* %236, i32 0, i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %29, align 4
  br label %247

241:                                              ; preds = %189
  %242 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %243 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @rereg_umr(%struct.ib_pd* %242, %struct.mlx5_ib_mr* %243, i32 %244, i32 %245)
  store i32 %246, i32* %29, align 4
  br label %247

247:                                              ; preds = %241, %235
  %248 = load i32, i32* %29, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %259

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %251, %186
  %253 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %254 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %255 = load i32, i32* %24, align 4
  %256 = load i8*, i8** %28, align 8
  %257 = load i32, i32* %21, align 4
  %258 = call i32 @set_mr_fields(%struct.mlx5_ib_dev* %253, %struct.mlx5_ib_mr* %254, i32 %255, i8* %256, i32 %257)
  store i32 0, i32* %9, align 4
  br label %270

259:                                              ; preds = %250, %181, %165, %132
  %260 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %261 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = call i32 @ib_umem_release(%struct.TYPE_14__* %262)
  %264 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %265 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %264, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %265, align 8
  %266 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %267 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %268 = call i32 @clean_mr(%struct.mlx5_ib_dev* %266, %struct.mlx5_ib_mr* %267)
  %269 = load i32, i32* %29, align 4
  store i32 %269, i32* %9, align 4
  br label %270

270:                                              ; preds = %259, %252, %86, %79
  %271 = load i32, i32* %9, align 4
  ret i32 %271
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i64 @is_odp_mr(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_14__*) #1

declare dso_local i32 @mr_umem_get(%struct.mlx5_ib_dev*, %struct.ib_udata*, i8*, i8*, i32, %struct.TYPE_14__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @use_umr_mtt_update(%struct.mlx5_ib_mr*, i8*, i8*) #1

declare dso_local i32 @unreg_umr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @destroy_mkey(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr*, %struct.ib_pd*, i8*, i8*, %struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.TYPE_13__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr*, i32, i32, i32, i32) #1

declare dso_local i32 @rereg_umr(%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32) #1

declare dso_local i32 @set_mr_fields(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*, i32, i8*, i32) #1

declare dso_local i32 @clean_mr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
