; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_mr = type { %struct.ib_mr, i32, i32, %struct.ib_umem*, %struct.TYPE_5__ }
%struct.ib_umem = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx5_ib_mr* }

@CONFIG_INFINIBAND_USER_MEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"start 0x%llx, virt_addr 0x%llx, length 0x%llx, access_flags 0x%x\0A\00", align 1
@CONFIG_INFINIBAND_ON_DEMAND_PAGING = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@IB_ACCESS_ON_DEMAND = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_IMPLICIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cache empty for order %d\0A\00", align 1
@umr_extended_translation_offset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Got MR registration for ODP MR > 512MB, not supported for Connect-IB\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mkey 0x%x\0A\00", align 1
@MLX5_IB_UPD_XLT_ENABLE = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ZAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx5_ib_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.mlx5_ib_dev*, align 8
  %15 = alloca %struct.mlx5_ib_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_umem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %25 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlx5_ib_dev* @to_mdev(i32 %26)
  store %struct.mlx5_ib_dev* %27, %struct.mlx5_ib_dev** %14, align 8
  store %struct.mlx5_ib_mr* null, %struct.mlx5_ib_mr** %15, align 8
  %28 = load i32, i32* @CONFIG_INFINIBAND_USER_MEM, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_mr* @ERR_PTR(i32 %33)
  store %struct.ib_mr* %34, %struct.ib_mr** %7, align 8
  br label %246

35:                                               ; preds = %6
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %36, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @CONFIG_INFINIBAND_ON_DEMAND_PAGING, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @U64_MAX, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @IB_ACCESS_ON_DEMAND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IB_ODP_SUPPORT_IMPLICIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.ib_mr* @ERR_PTR(i32 %67)
  store %struct.ib_mr* %68, %struct.ib_mr** %7, align 8
  br label %246

69:                                               ; preds = %57
  %70 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %71 = call i32 @to_mpd(%struct.ib_pd* %70)
  %72 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.mlx5_ib_mr* @mlx5_ib_alloc_implicit_mr(i32 %71, %struct.ib_udata* %72, i32 %73)
  store %struct.mlx5_ib_mr* %74, %struct.mlx5_ib_mr** %15, align 8
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %76 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %80 = call %struct.ib_mr* @ERR_CAST(%struct.mlx5_ib_mr* %79)
  store %struct.ib_mr* %80, %struct.ib_mr** %7, align 8
  br label %246

81:                                               ; preds = %69
  %82 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %82, i32 0, i32 0
  store %struct.ib_mr* %83, %struct.ib_mr** %7, align 8
  br label %246

84:                                               ; preds = %48, %45, %35
  %85 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %86 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @mr_umem_get(%struct.mlx5_ib_dev* %85, %struct.ib_udata* %86, i32 %87, i32 %88, i32 %89, %struct.ib_umem** %17, i32* %19, i32* %18, i32* %20, i32* %21)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* %22, align 4
  %95 = call %struct.ib_mr* @ERR_PTR(i32 %94)
  store %struct.ib_mr* %95, %struct.ib_mr** %7, align 8
  br label %246

96:                                               ; preds = %84
  %97 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %98 = call i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev* %97, i32 1)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %101 = call i32 @mr_cache_max_order(%struct.mlx5_ib_dev* %100)
  %102 = icmp sle i32 %99, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %108 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call %struct.mlx5_ib_mr* @alloc_mr_from_cache(%struct.ib_pd* %107, %struct.ib_umem* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store %struct.mlx5_ib_mr* %115, %struct.mlx5_ib_mr** %15, align 8
  %116 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %117 = call i32 @PTR_ERR(%struct.mlx5_ib_mr* %116)
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %106
  %122 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %123 = load i32, i32* %21, align 4
  %124 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  store %struct.mlx5_ib_mr* null, %struct.mlx5_ib_mr** %15, align 8
  br label %125

125:                                              ; preds = %121, %106
  br label %144

126:                                              ; preds = %103, %96
  %127 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @umr_extended_translation_offset, align 4
  %131 = call i32 @MLX5_CAP_GEN(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @IB_ACCESS_ON_DEMAND, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %22, align 4
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %241

142:                                              ; preds = %133
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %142, %126
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %146 = icmp ne %struct.mlx5_ib_mr* %145, null
  br i1 %146, label %166, label %147

147:                                              ; preds = %144
  %148 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %149 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %148, i32 0, i32 0
  %150 = call i32 @mutex_lock(i32* %149)
  %151 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call %struct.mlx5_ib_mr* @reg_create(i32* null, %struct.ib_pd* %151, i32 %152, i32 %153, %struct.ib_umem* %154, i32 %155, i32 %156, i32 %157, i32 %161)
  store %struct.mlx5_ib_mr* %162, %struct.mlx5_ib_mr** %15, align 8
  %163 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %164 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  br label %166

166:                                              ; preds = %147, %144
  %167 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %168 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %172 = call i32 @PTR_ERR(%struct.mlx5_ib_mr* %171)
  store i32 %172, i32* %22, align 4
  br label %241

173:                                              ; preds = %166
  %174 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %175 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %176 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  %180 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %181 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %182 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %181, i32 0, i32 3
  store %struct.ib_umem* %180, %struct.ib_umem** %182, align 8
  %183 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %184 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @set_mr_fields(%struct.mlx5_ib_dev* %183, %struct.mlx5_ib_mr* %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %173
  %192 = load i32, i32* @MLX5_IB_UPD_XLT_ENABLE, align 4
  store i32 %192, i32* %23, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @IB_ACCESS_ON_DEMAND, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* @MLX5_IB_UPD_XLT_ZAP, align 4
  %199 = load i32, i32* %23, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %23, align 4
  br label %201

201:                                              ; preds = %197, %191
  %202 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr* %202, i32 0, i32 %203, i32 %204, i32 %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %22, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %211 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %212 = call i32 @dereg_mr(%struct.mlx5_ib_dev* %210, %struct.mlx5_ib_mr* %211)
  %213 = load i32, i32* %22, align 4
  %214 = call %struct.ib_mr* @ERR_PTR(i32 %213)
  store %struct.ib_mr* %214, %struct.ib_mr** %7, align 8
  br label %246

215:                                              ; preds = %201
  br label %216

216:                                              ; preds = %215, %173
  %217 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %218 = call i64 @is_odp_mr(%struct.mlx5_ib_mr* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %222 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %223 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %222, i32 0, i32 3
  %224 = load %struct.ib_umem*, %struct.ib_umem** %223, align 8
  %225 = call %struct.TYPE_6__* @to_ib_umem_odp(%struct.ib_umem* %224)
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  store %struct.mlx5_ib_mr* %221, %struct.mlx5_ib_mr** %226, align 8
  %227 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %228 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %227, i32 0, i32 2
  %229 = call i32 @atomic_set(i32* %228, i32 0)
  br label %230

230:                                              ; preds = %220, %216
  %231 = load i32, i32* @CONFIG_INFINIBAND_ON_DEMAND_PAGING, align 4
  %232 = call i64 @IS_ENABLED(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %236 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %235, i32 0, i32 1
  %237 = call i32 @smp_store_release(i32* %236, i32 1)
  br label %238

238:                                              ; preds = %234, %230
  %239 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %240 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %239, i32 0, i32 0
  store %struct.ib_mr* %240, %struct.ib_mr** %7, align 8
  br label %246

241:                                              ; preds = %170, %138
  %242 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %243 = call i32 @ib_umem_release(%struct.ib_umem* %242)
  %244 = load i32, i32* %22, align 4
  %245 = call %struct.ib_mr* @ERR_PTR(i32 %244)
  store %struct.ib_mr* %245, %struct.ib_mr** %7, align 8
  br label %246

246:                                              ; preds = %241, %238, %209, %93, %81, %78, %65, %31
  %247 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %247
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local %struct.mlx5_ib_mr* @mlx5_ib_alloc_implicit_mr(i32, %struct.ib_udata*, i32) #1

declare dso_local i32 @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.ib_mr* @ERR_CAST(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @mr_umem_get(%struct.mlx5_ib_dev*, %struct.ib_udata*, i32, i32, i32, %struct.ib_umem**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mr_cache_max_order(%struct.mlx5_ib_dev*) #1

declare dso_local %struct.mlx5_ib_mr* @alloc_mr_from_cache(%struct.ib_pd*, %struct.ib_umem*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_ib_mr* @reg_create(i32*, %struct.ib_pd*, i32, i32, %struct.ib_umem*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_mr_fields(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*, i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr*, i32, i32, i32, i32) #1

declare dso_local i32 @dereg_mr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i64 @is_odp_mr(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.TYPE_6__* @to_ib_umem_odp(%struct.ib_umem*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
