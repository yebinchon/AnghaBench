; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_reg_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_reg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, %struct.TYPE_6__, %struct.mlx5_ib_dev*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.ib_pd* }
%struct.ib_mr = type { i32 }
%struct.ib_umem = type { i32 }
%struct.TYPE_5__ = type { i32 }

@pg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@create_mkey_in = common dso_local global i8* null, align 8
@klm_pas_mtt = common dso_local global i32 0, align 4
@IB_ACCESS_ON_DEMAND = common dso_local global i32 0, align 4
@MLX5_IB_MTT_PRESENT = common dso_local global i32 0, align 4
@pg_access = common dso_local global %struct.ib_pd* null, align 8
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@free = common dso_local global %struct.ib_pd* null, align 8
@access_mode_1_0 = common dso_local global %struct.ib_pd* null, align 8
@MLX5_MKC_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@a = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@rw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@rr = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@lw = common dso_local global %struct.ib_pd* null, align 8
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@lr = common dso_local global %struct.ib_pd* null, align 8
@umr_en = common dso_local global %struct.ib_pd* null, align 8
@start_addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@bsf_octword_size = common dso_local global %struct.ib_pd* null, align 8
@translations_octword_size = common dso_local global %struct.ib_pd* null, align 8
@log_page_size = common dso_local global %struct.ib_pd* null, align 8
@qpn = common dso_local global %struct.ib_pd* null, align 8
@translations_octword_actual_size = common dso_local global %struct.ib_pd* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"create mkey failed\0A\00", align 1
@MLX5_MKEY_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mkey = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_mr* (%struct.ib_mr*, %struct.ib_pd*, i32, i32, %struct.ib_umem*, i32, i32, i32, i32)* @reg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr* %0, %struct.ib_pd* %1, i32 %2, i32 %3, %struct.ib_umem* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mlx5_ib_mr*, align 8
  %11 = alloca %struct.ib_mr*, align 8
  %12 = alloca %struct.ib_pd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_umem*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlx5_ib_dev*, align 8
  %21 = alloca %struct.mlx5_ib_mr*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %11, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.ib_umem* %4, %struct.ib_umem** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %28 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  %29 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mlx5_ib_dev* @to_mdev(i32 %30)
  store %struct.mlx5_ib_dev* %31, %struct.mlx5_ib_dev** %20, align 8
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @pg, align 4
  %36 = call i32 @MLX5_CAP_GEN(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %27, align 4
  %41 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %42 = icmp ne %struct.ib_mr* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %9
  %44 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %45 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %44)
  br label %49

46:                                               ; preds = %9
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.mlx5_ib_mr* @kzalloc(i32 32, i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi %struct.mlx5_ib_mr* [ %45, %43 ], [ %48, %46 ]
  store %struct.mlx5_ib_mr* %50, %struct.mlx5_ib_mr** %21, align 8
  %51 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %52 = icmp ne %struct.mlx5_ib_mr* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %55)
  store %struct.mlx5_ib_mr* %56, %struct.mlx5_ib_mr** %10, align 8
  br label %287

57:                                               ; preds = %49
  %58 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  %59 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.ib_pd* %58, %struct.ib_pd** %61, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** @create_mkey_in, align 8
  %66 = call i32 @MLX5_ST_SZ_BYTES(i8* %65)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %57
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @roundup(i32 %70, i32 2)
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = load i32, i32* %24, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %24, align 4
  br label %78

78:                                               ; preds = %69, %57
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kvzalloc(i32 %79, i32 %80)
  store i8* %81, i8** %25, align 8
  %82 = load i8*, i8** %25, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %26, align 4
  br label %278

87:                                               ; preds = %78
  %88 = load i8*, i8** @create_mkey_in, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = load i32, i32* @klm_pas_mtt, align 4
  %91 = call i8* @MLX5_ADDR_OF(i8* %88, i8* %89, i32 %90)
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %22, align 8
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @IB_ACCESS_ON_DEMAND, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %102 = load %struct.ib_umem*, %struct.ib_umem** %15, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %27, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @MLX5_IB_MTT_PRESENT, align 4
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %101, %struct.ib_umem* %102, i32 %103, i32* %104, i32 %111)
  br label %113

113:                                              ; preds = %110, %95, %87
  %114 = load i8*, i8** @create_mkey_in, align 8
  %115 = load i8*, i8** %25, align 8
  %116 = load %struct.ib_pd*, %struct.ib_pd** @pg_access, align 8
  %117 = load i32, i32* %27, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @MLX5_SET(i8* %114, i8* %115, %struct.ib_pd* %116, i32 %121)
  %123 = load i8*, i8** @create_mkey_in, align 8
  %124 = load i8*, i8** %25, align 8
  %125 = load i32, i32* @memory_key_mkey_entry, align 4
  %126 = call i8* @MLX5_ADDR_OF(i8* %123, i8* %124, i32 %125)
  store i8* %126, i8** %23, align 8
  %127 = load i8*, i8** %23, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = load %struct.ib_pd*, %struct.ib_pd** @free, align 8
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @MLX5_SET(i8* %127, i8* %128, %struct.ib_pd* %129, i32 %133)
  %135 = load i8*, i8** %23, align 8
  %136 = load i8*, i8** %23, align 8
  %137 = load %struct.ib_pd*, %struct.ib_pd** @access_mode_1_0, align 8
  %138 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MTT, align 4
  %139 = call i32 @MLX5_SET(i8* %135, i8* %136, %struct.ib_pd* %137, i32 %138)
  %140 = load i8*, i8** %23, align 8
  %141 = load i8*, i8** %23, align 8
  %142 = load %struct.ib_pd*, %struct.ib_pd** @a, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @MLX5_SET(i8* %140, i8* %141, %struct.ib_pd* %142, i32 %149)
  %151 = load i8*, i8** %23, align 8
  %152 = load i8*, i8** %23, align 8
  %153 = load %struct.ib_pd*, %struct.ib_pd** @rw, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @MLX5_SET(i8* %151, i8* %152, %struct.ib_pd* %153, i32 %160)
  %162 = load i8*, i8** %23, align 8
  %163 = load i8*, i8** %23, align 8
  %164 = load %struct.ib_pd*, %struct.ib_pd** @rr, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 @MLX5_SET(i8* %162, i8* %163, %struct.ib_pd* %164, i32 %171)
  %173 = load i8*, i8** %23, align 8
  %174 = load i8*, i8** %23, align 8
  %175 = load %struct.ib_pd*, %struct.ib_pd** @lw, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @MLX5_SET(i8* %173, i8* %174, %struct.ib_pd* %175, i32 %182)
  %184 = load i8*, i8** %23, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = load %struct.ib_pd*, %struct.ib_pd** @lr, align 8
  %187 = call i32 @MLX5_SET(i8* %184, i8* %185, %struct.ib_pd* %186, i32 1)
  %188 = load i8*, i8** %23, align 8
  %189 = load i8*, i8** %23, align 8
  %190 = load %struct.ib_pd*, %struct.ib_pd** @umr_en, align 8
  %191 = call i32 @MLX5_SET(i8* %188, i8* %189, %struct.ib_pd* %190, i32 1)
  %192 = load i8*, i8** %23, align 8
  %193 = load i8*, i8** %23, align 8
  %194 = load i32, i32* @start_addr, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @MLX5_SET64(i8* %192, i8* %193, i32 %194, i32 %195)
  %197 = load i8*, i8** %23, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = load i32, i32* @len, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @MLX5_SET64(i8* %197, i8* %198, i32 %199, i32 %200)
  %202 = load i8*, i8** %23, align 8
  %203 = load i8*, i8** %23, align 8
  %204 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  %205 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  %206 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %205)
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @MLX5_SET(i8* %202, i8* %203, %struct.ib_pd* %204, i32 %208)
  %210 = load i8*, i8** %23, align 8
  %211 = load i8*, i8** %23, align 8
  %212 = load %struct.ib_pd*, %struct.ib_pd** @bsf_octword_size, align 8
  %213 = call i32 @MLX5_SET(i8* %210, i8* %211, %struct.ib_pd* %212, i32 0)
  %214 = load i8*, i8** %23, align 8
  %215 = load i8*, i8** %23, align 8
  %216 = load %struct.ib_pd*, %struct.ib_pd** @translations_octword_size, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @get_octo_len(i32 %217, i32 %218, i32 %219)
  %221 = call i32 @MLX5_SET(i8* %214, i8* %215, %struct.ib_pd* %216, i32 %220)
  %222 = load i8*, i8** %23, align 8
  %223 = load i8*, i8** %23, align 8
  %224 = load %struct.ib_pd*, %struct.ib_pd** @log_page_size, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @MLX5_SET(i8* %222, i8* %223, %struct.ib_pd* %224, i32 %225)
  %227 = load i8*, i8** %23, align 8
  %228 = load i8*, i8** %23, align 8
  %229 = load %struct.ib_pd*, %struct.ib_pd** @qpn, align 8
  %230 = call i32 @MLX5_SET(i8* %227, i8* %228, %struct.ib_pd* %229, i32 16777215)
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %113
  %234 = load i8*, i8** @create_mkey_in, align 8
  %235 = load i8*, i8** %25, align 8
  %236 = load %struct.ib_pd*, %struct.ib_pd** @translations_octword_actual_size, align 8
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %17, align 4
  %240 = call i32 @get_octo_len(i32 %237, i32 %238, i32 %239)
  %241 = call i32 @MLX5_SET(i8* %234, i8* %235, %struct.ib_pd* %236, i32 %240)
  br label %242

242:                                              ; preds = %233, %113
  %243 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %244 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %247 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %246, i32 0, i32 2
  %248 = load i8*, i8** %25, align 8
  %249 = load i32, i32* %24, align 4
  %250 = call i32 @mlx5_core_create_mkey(i32 %245, %struct.TYPE_6__* %247, i8* %248, i32 %249)
  store i32 %250, i32* %26, align 4
  %251 = load i32, i32* %26, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %242
  %254 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %255 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %254, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %275

256:                                              ; preds = %242
  %257 = load i32, i32* @MLX5_MKEY_MR, align 4
  %258 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %259 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %262 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %261, i32 0, i32 1
  store i32 4, i32* %262, align 4
  %263 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %264 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %265 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %264, i32 0, i32 3
  store %struct.mlx5_ib_dev* %263, %struct.mlx5_ib_dev** %265, align 8
  %266 = load i8*, i8** %25, align 8
  %267 = call i32 @kvfree(i8* %266)
  %268 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %269 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %270 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %268, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %272)
  %274 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  store %struct.mlx5_ib_mr* %274, %struct.mlx5_ib_mr** %10, align 8
  br label %287

275:                                              ; preds = %253
  %276 = load i8*, i8** %25, align 8
  %277 = call i32 @kvfree(i8* %276)
  br label %278

278:                                              ; preds = %275, %84
  %279 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %280 = icmp ne %struct.ib_mr* %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  %283 = call i32 @kfree(%struct.mlx5_ib_mr* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i32, i32* %26, align 4
  %286 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %285)
  store %struct.mlx5_ib_mr* %286, %struct.mlx5_ib_mr** %10, align 8
  br label %287

287:                                              ; preds = %284, %256, %53
  %288 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %10, align 8
  ret %struct.mlx5_ib_mr* %288
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, %struct.ib_umem*, i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @get_octo_len(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(i32, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
