; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32, i32 }
%struct.siw_mr = type { %struct.siw_mem*, %struct.ib_mr }
%struct.siw_mem = type { i32, i32 }
%struct.siw_umem = type { i32 }
%struct.siw_ureq_reg_mr = type { i32 }
%struct.siw_device = type { i32 }
%struct.siw_uresp_reg_mr = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"start: 0x%pK, va: 0x%pK, len: %llu\0A\00", align 1
@SIW_MAX_MR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"too many mr's\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"pages req %lu, max %lu, lock %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"getting user memory failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @siw_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.siw_mr*, align 8
  %15 = alloca %struct.siw_umem*, align 8
  %16 = alloca %struct.siw_ureq_reg_mr, align 4
  %17 = alloca %struct.siw_device*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.siw_uresp_reg_mr, align 4
  %22 = alloca %struct.siw_mem*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  store %struct.siw_mr* null, %struct.siw_mr** %14, align 8
  store %struct.siw_umem* null, %struct.siw_umem** %15, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.siw_device* @to_siw_dev(i32 %25)
  store %struct.siw_device* %26, %struct.siw_device** %17, align 8
  %27 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %28 = call i64 @rlimit(i32 %27)
  store i64 %28, i64* %18, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %35, i64 %37)
  %39 = load %struct.siw_device*, %struct.siw_device** %17, align 8
  %40 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %39, i32 0, i32 0
  %41 = call i64 @atomic_inc_return(i32* %40)
  %42 = load i64, i64* @SIW_MAX_MR, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %6
  %45 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %46 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %19, align 4
  br label %197

49:                                               ; preds = %6
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %19, align 4
  br label %197

55:                                               ; preds = %49
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* @RLIM_INFINITY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PAGE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = add nsw i32 %60, %64
  %66 = call i64 @PAGE_ALIGN(i32 %65)
  %67 = load i64, i64* @PAGE_SHIFT, align 8
  %68 = lshr i64 %66, %67
  store i64 %68, i64* %20, align 8
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = load i64, i64* %18, align 8
  %71 = lshr i64 %70, %69
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %20, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %73, %78
  %80 = icmp ugt i64 %72, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %59
  %82 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %83, i64 %84, i64 %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %19, align 4
  br label %197

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @ib_access_writable(i32 %97)
  %99 = call %struct.siw_umem* @siw_umem_get(i32 %95, i32 %96, i32 %98)
  store %struct.siw_umem* %99, %struct.siw_umem** %15, align 8
  %100 = load %struct.siw_umem*, %struct.siw_umem** %15, align 8
  %101 = call i64 @IS_ERR(%struct.siw_umem* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.siw_umem*, %struct.siw_umem** %15, align 8
  %105 = call i32 @PTR_ERR(%struct.siw_umem* %104)
  store i32 %105, i32* %19, align 4
  %106 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %107 = load i32, i32* %19, align 4
  %108 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  store %struct.siw_umem* null, %struct.siw_umem** %15, align 8
  br label %197

109:                                              ; preds = %94
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.siw_mr* @kzalloc(i32 16, i32 %110)
  store %struct.siw_mr* %111, %struct.siw_mr** %14, align 8
  %112 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %113 = icmp ne %struct.siw_mr* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %19, align 4
  br label %197

117:                                              ; preds = %109
  %118 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %119 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %120 = load %struct.siw_umem*, %struct.siw_umem** %15, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @siw_mr_add_mem(%struct.siw_mr* %118, %struct.ib_pd* %119, %struct.siw_umem* %120, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %197

128:                                              ; preds = %117
  %129 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %130 = icmp ne %struct.ib_udata* %129, null
  br i1 %130, label %131, label %190

131:                                              ; preds = %128
  %132 = bitcast %struct.siw_uresp_reg_mr* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %132, i8 0, i64 4, i1 false)
  %133 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %134 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %133, i32 0, i32 0
  %135 = load %struct.siw_mem*, %struct.siw_mem** %134, align 8
  store %struct.siw_mem* %135, %struct.siw_mem** %22, align 8
  %136 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %137 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ult i64 %139, 4
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %19, align 4
  br label %197

144:                                              ; preds = %131
  %145 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %146 = call i32 @ib_copy_from_udata(%struct.siw_ureq_reg_mr* %16, %struct.ib_udata* %145, i32 4)
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %197

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.siw_ureq_reg_mr, %struct.siw_ureq_reg_mr* %16, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %154 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = getelementptr inbounds %struct.siw_ureq_reg_mr, %struct.siw_ureq_reg_mr* %16, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %161 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 8
  %165 = getelementptr inbounds %struct.siw_ureq_reg_mr, %struct.siw_ureq_reg_mr* %16, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.siw_mem*, %struct.siw_mem** %22, align 8
  %168 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.siw_mem*, %struct.siw_mem** %22, align 8
  %172 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.siw_uresp_reg_mr, %struct.siw_uresp_reg_mr* %21, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %176 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp ult i64 %178, 4
  br i1 %179, label %180, label %183

180:                                              ; preds = %150
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %19, align 4
  br label %197

183:                                              ; preds = %150
  %184 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %185 = call i32 @ib_copy_to_udata(%struct.ib_udata* %184, %struct.siw_uresp_reg_mr* %21, i32 4)
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %197

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %128
  %191 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %192 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %191, i32 0, i32 0
  %193 = load %struct.siw_mem*, %struct.siw_mem** %192, align 8
  %194 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %193, i32 0, i32 0
  store i32 1, i32* %194, align 4
  %195 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %196 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %195, i32 0, i32 1
  store %struct.ib_mr* %196, %struct.ib_mr** %7, align 8
  br label %225

197:                                              ; preds = %188, %180, %149, %141, %127, %114, %103, %81, %52, %44
  %198 = load %struct.siw_device*, %struct.siw_device** %17, align 8
  %199 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %198, i32 0, i32 0
  %200 = call i32 @atomic_dec(i32* %199)
  %201 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %202 = icmp ne %struct.siw_mr* %201, null
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %205 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %204, i32 0, i32 0
  %206 = load %struct.siw_mem*, %struct.siw_mem** %205, align 8
  %207 = icmp ne %struct.siw_mem* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %210 = call i32 @siw_mr_drop_mem(%struct.siw_mr* %209)
  br label %211

211:                                              ; preds = %208, %203
  %212 = load %struct.siw_mr*, %struct.siw_mr** %14, align 8
  %213 = load i32, i32* @rcu, align 4
  %214 = call i32 @kfree_rcu(%struct.siw_mr* %212, i32 %213)
  br label %222

215:                                              ; preds = %197
  %216 = load %struct.siw_umem*, %struct.siw_umem** %15, align 8
  %217 = icmp ne %struct.siw_umem* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.siw_umem*, %struct.siw_umem** %15, align 8
  %220 = call i32 @siw_umem_release(%struct.siw_umem* %219, i32 0)
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %211
  %223 = load i32, i32* %19, align 4
  %224 = call %struct.ib_mr* @ERR_PTR(i32 %223)
  store %struct.ib_mr* %224, %struct.ib_mr** %7, align 8
  br label %225

225:                                              ; preds = %222, %190
  %226 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %226
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*, ...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.siw_umem* @siw_umem_get(i32, i32, i32) #1

declare dso_local i32 @ib_access_writable(i32) #1

declare dso_local i64 @IS_ERR(%struct.siw_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.siw_umem*) #1

declare dso_local %struct.siw_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @siw_mr_add_mem(%struct.siw_mr*, %struct.ib_pd*, %struct.siw_umem*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_copy_from_udata(%struct.siw_ureq_reg_mr*, %struct.ib_udata*, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.siw_uresp_reg_mr*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @siw_mr_drop_mem(%struct.siw_mr*) #1

declare dso_local i32 @kfree_rcu(%struct.siw_mr*, i32) #1

declare dso_local i32 @siw_umem_release(%struct.siw_umem*, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
