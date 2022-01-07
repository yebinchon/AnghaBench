; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_uar_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_uar_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mlx5_ib_ucontext = type { i32, %struct.mlx5_bfreg_info }
%struct.mlx5_bfreg_info = type { i32, i32, i64, i64*, i32, i64*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid uar index %lu, max=%d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@MLX5_NON_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid bfreg_dyn_idx %u, max=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"wrong offset, idx %lu is busy, bfregn=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"UAR alloc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"uar idx 0x%lx, pfn %pa\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"rdma_user_mmap_io failed with error=%d, mmap_cmd=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, %struct.vm_area_struct*, %struct.mlx5_ib_ucontext*)* @uar_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uar_mmap(%struct.mlx5_ib_dev* %0, i32 %1, %struct.vm_area_struct* %2, %struct.mlx5_ib_ucontext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.mlx5_ib_ucontext*, align 8
  %10 = alloca %struct.mlx5_bfreg_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store %struct.mlx5_ib_ucontext* %3, %struct.mlx5_ib_ucontext** %9, align 8
  %20 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %9, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %20, i32 0, i32 1
  store %struct.mlx5_bfreg_info* %21, %struct.mlx5_bfreg_info** %10, align 8
  store i64 0, i64* %15, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 131
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %33 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  store i32 %36, i32* %18, align 4
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %225

49:                                               ; preds = %35
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @get_extended_index(i32 %55)
  %57 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %58 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %56, %60
  store i64 %61, i64* %12, align 8
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @get_index(i32 %65)
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %62, %52
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp uge i64 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %225

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %94 [
    i32 128, label %81
    i32 131, label %81
    i32 129, label %84
    i32 130, label %89
  ]

81:                                               ; preds = %79, %79
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %225

84:                                               ; preds = %79
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pgprot_writecombine(i32 %87)
  store i32 %88, i32* %14, align 4
  br label %97

89:                                               ; preds = %79
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pgprot_noncached(i32 %92)
  store i32 %93, i32* %14, align 4
  br label %97

94:                                               ; preds = %79
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %225

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %168

100:                                              ; preds = %97
  %101 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %102 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %103 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev* %101, i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i64, i64* %12, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = mul i64 %106, %110
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %114 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp uge i64 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %100
  %118 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %121 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %225

126:                                              ; preds = %100
  %127 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %128 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %127, i32 0, i32 4
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %131 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %130, i32 0, i32 5
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %126
  %138 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %139, i64 %140)
  %142 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %143 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %142, i32 0, i32 4
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %225

147:                                              ; preds = %126
  %148 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %149 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %148, i32 0, i32 5
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %156 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %155, i32 0, i32 4
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %159 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @mlx5_cmd_alloc_uar(i32 %160, i64* %16)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %147
  %165 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %166 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %219

167:                                              ; preds = %147
  br label %175

168:                                              ; preds = %97
  %169 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %170 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %16, align 8
  br label %175

175:                                              ; preds = %168, %167
  %176 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %177 = load i64, i64* %16, align 8
  %178 = call i32 @uar_index2pfn(%struct.mlx5_ib_dev* %176, i64 %177)
  store i32 %178, i32* %13, align 4
  %179 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %180 = load i64, i64* %12, align 8
  %181 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %180, i32* %13)
  %182 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %9, align 8
  %183 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %182, i32 0, i32 0
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i64, i64* @PAGE_SIZE, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @rdma_user_mmap_io(i32* %183, %struct.vm_area_struct* %184, i32 %185, i64 %186, i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %175
  %192 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @mmap_cmd2str(i32 %194)
  %196 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %192, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %195)
  br label %208

197:                                              ; preds = %175
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i64, i64* %16, align 8
  %202 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %203 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %202, i32 0, i32 3
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* %12, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  store i64 %201, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %197
  store i32 0, i32* %5, align 4
  br label %225

208:                                              ; preds = %191
  %209 = load i32, i32* %17, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %5, align 4
  br label %225

213:                                              ; preds = %208
  %214 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %215 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i64, i64* %12, align 8
  %218 = call i32 @mlx5_cmd_free_uar(i32 %216, i64 %217)
  br label %219

219:                                              ; preds = %213, %164
  %220 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %221 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %10, align 8
  %222 = load i64, i64* %15, align 8
  %223 = call i32 @mlx5_ib_free_bfreg(%struct.mlx5_ib_dev* %220, %struct.mlx5_bfreg_info* %221, i64 %222)
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %219, %211, %207, %137, %117, %94, %81, %72, %46
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i64 @get_extended_index(i32) #1

declare dso_local i64 @get_index(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_cmd_alloc_uar(i32, i64*) #1

declare dso_local i32 @uar_index2pfn(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64, i32*) #1

declare dso_local i32 @rdma_user_mmap_io(i32*, %struct.vm_area_struct*, i32, i64, i32) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @mmap_cmd2str(i32) #1

declare dso_local i32 @mlx5_cmd_free_uar(i32, i64) #1

declare dso_local i32 @mlx5_ib_free_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
