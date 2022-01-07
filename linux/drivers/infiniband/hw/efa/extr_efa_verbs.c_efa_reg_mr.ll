; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i64 }
%struct.efa_dev = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.efa_com_reg_mr_params = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.efa_com_reg_mr_result = type { i32, i32 }
%struct.pbl_context = type { i32 }
%struct.efa_mr = type { i32, %struct.ib_mr }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Incompatible ABI params, udata not cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFA_SUPPORTED_ACCESS_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unsupported access flags[%#x], supported[%#x]\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to pin and map user space memory[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Failed to find a suitable page size in page_size_cap %#llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"start %#llx length %#llx params.page_shift %u params.page_num %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Registered mr[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @efa_reg_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.efa_dev*, align 8
  %15 = alloca %struct.efa_com_reg_mr_params, align 4
  %16 = alloca %struct.efa_com_reg_mr_result, align 4
  %17 = alloca %struct.pbl_context, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.efa_mr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %23 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.efa_dev* @to_edev(i32 %24)
  store %struct.efa_dev* %25, %struct.efa_dev** %14, align 8
  %26 = bitcast %struct.efa_com_reg_mr_params* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 28, i1 false)
  %27 = bitcast %struct.efa_com_reg_mr_result* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  %28 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %29 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %6
  %33 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %34 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %33, i32 0, i32 8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %38 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %37, i32 0, i32 1
  %39 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %21, align 4
  br label %214

42:                                               ; preds = %32, %6
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @EFA_SUPPORTED_ACCESS_FLAGS, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %50 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @EFA_SUPPORTED_ACCESS_FLAGS, align 4
  %53 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %21, align 4
  br label %214

56:                                               ; preds = %42
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.efa_mr* @kzalloc(i32 16, i32 %57)
  store %struct.efa_mr* %58, %struct.efa_mr** %19, align 8
  %59 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %60 = icmp ne %struct.efa_mr* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %21, align 4
  br label %214

64:                                               ; preds = %56
  %65 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ib_umem_get(%struct.ib_udata* %65, i32 %66, i32 %67, i32 %68, i32 0)
  %70 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %71 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %73 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %64
  %78 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %79 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %21, align 4
  %82 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %83 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %21, align 4
  %85 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %211

86:                                               ; preds = %64
  %87 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %88 = call %struct.TYPE_10__* @to_epd(%struct.ib_pd* %87)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 6
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 1
  %98 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %100 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %103 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ib_umem_find_best_pgsz(i32 %101, i32 %105, i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %86
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %21, align 4
  %113 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %114 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %113, i32 0, i32 1
  %115 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %116 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %114, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %206

120:                                              ; preds = %86
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @__ffs(i32 %121)
  %123 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 5
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub i32 %126, 1
  %128 = and i32 %125, %127
  %129 = add i32 %124, %128
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @DIV_ROUND_UP(i32 %129, i32 %130)
  %132 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  %133 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %134 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %134, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136, i32 %138, i32 %140)
  %142 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  store i32 %145, i32* %20, align 4
  %146 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %20, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %120
  %151 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %152 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %153 = call i32 @efa_create_inline_pbl(%struct.efa_dev* %151, %struct.efa_mr* %152, %struct.efa_com_reg_mr_params* %15)
  store i32 %153, i32* %21, align 4
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %206

157:                                              ; preds = %150
  %158 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %159 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %158, i32 0, i32 2
  %160 = call i32 @efa_com_register_mr(i32* %159, %struct.efa_com_reg_mr_params* %15, %struct.efa_com_reg_mr_result* %16)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %206

164:                                              ; preds = %157
  br label %182

165:                                              ; preds = %120
  %166 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %167 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %168 = call i32 @efa_create_pbl(%struct.efa_dev* %166, %struct.pbl_context* %17, %struct.efa_mr* %167, %struct.efa_com_reg_mr_params* %15)
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %21, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %206

172:                                              ; preds = %165
  %173 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %174 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %173, i32 0, i32 2
  %175 = call i32 @efa_com_register_mr(i32* %174, %struct.efa_com_reg_mr_params* %15, %struct.efa_com_reg_mr_result* %16)
  store i32 %175, i32* %21, align 4
  %176 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %177 = call i32 @pbl_destroy(%struct.efa_dev* %176, %struct.pbl_context* %17)
  %178 = load i32, i32* %21, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %206

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %164
  %183 = getelementptr inbounds %struct.efa_com_reg_mr_result, %struct.efa_com_reg_mr_result* %16, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %186 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  %188 = getelementptr inbounds %struct.efa_com_reg_mr_result, %struct.efa_com_reg_mr_result* %16, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %191 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %195 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  %197 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %198 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %197, i32 0, i32 1
  %199 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %200 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %198, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  %204 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %205 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %204, i32 0, i32 1
  store %struct.ib_mr* %205, %struct.ib_mr** %7, align 8
  br label %222

206:                                              ; preds = %180, %171, %163, %156, %110
  %207 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %208 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @ib_umem_release(i32 %209)
  br label %211

211:                                              ; preds = %206, %77
  %212 = load %struct.efa_mr*, %struct.efa_mr** %19, align 8
  %213 = call i32 @kfree(%struct.efa_mr* %212)
  br label %214

214:                                              ; preds = %211, %61, %48, %36
  %215 = load %struct.efa_dev*, %struct.efa_dev** %14, align 8
  %216 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = call i32 @atomic64_inc(i32* %218)
  %220 = load i32, i32* %21, align 4
  %221 = call %struct.ib_mr* @ERR_PTR(i32 %220)
  store %struct.ib_mr* %221, %struct.ib_mr** %7, align 8
  br label %222

222:                                              ; preds = %214, %182
  %223 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %223
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i32) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.efa_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_10__* @to_epd(%struct.ib_pd*) #1

declare dso_local i32 @ib_umem_find_best_pgsz(i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @efa_create_inline_pbl(%struct.efa_dev*, %struct.efa_mr*, %struct.efa_com_reg_mr_params*) #1

declare dso_local i32 @efa_com_register_mr(i32*, %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_result*) #1

declare dso_local i32 @efa_create_pbl(%struct.efa_dev*, %struct.pbl_context*, %struct.efa_mr*, %struct.efa_com_reg_mr_params*) #1

declare dso_local i32 @pbl_destroy(%struct.efa_dev*, %struct.pbl_context*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.efa_mr*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
