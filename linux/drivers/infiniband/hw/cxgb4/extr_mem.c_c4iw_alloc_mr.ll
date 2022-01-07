; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.c4iw_dev = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.c4iw_pd = type { i32, %struct.c4iw_dev* }
%struct.c4iw_mr = type { i32, i32, i32, i32, %struct.c4iw_dev*, %struct.TYPE_7__, i32, %struct.ib_mr }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@use_dsgl = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_RI_STAG_NSMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mmid 0x%x mhp %p stag 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @c4iw_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.c4iw_dev*, align 8
  %11 = alloca %struct.c4iw_pd*, align 8
  %12 = alloca %struct.c4iw_mr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @roundup(i32 %20, i32 32)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %23 = call %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd* %22)
  store %struct.c4iw_pd* %23, %struct.c4iw_pd** %11, align 8
  %24 = load %struct.c4iw_pd*, %struct.c4iw_pd** %11, align 8
  %25 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %24, i32 0, i32 1
  %26 = load %struct.c4iw_dev*, %struct.c4iw_dev** %25, align 8
  store %struct.c4iw_dev* %26, %struct.c4iw_dev** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %33 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* @use_dsgl, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i1 [ false, %30 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @t4_max_fr_depth(i32 %43)
  %45 = icmp sgt i32 %31, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ib_mr* @ERR_PTR(i32 %48)
  store %struct.ib_mr* %49, %struct.ib_mr** %5, align 8
  br label %241

50:                                               ; preds = %41
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.c4iw_mr* @kzalloc(i32 72, i32 %51)
  store %struct.c4iw_mr* %52, %struct.c4iw_mr** %12, align 8
  %53 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %54 = icmp ne %struct.c4iw_mr* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %238

58:                                               ; preds = %50
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @c4iw_alloc_wr_wait(i32 %59)
  %61 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %62 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %64 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %235

70:                                               ; preds = %58
  %71 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %72 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @c4iw_init_wr_wait(i32 %73)
  %75 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %76 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %83 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %82, i32 0, i32 2
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @dma_alloc_coherent(i32* %80, i32 %81, i32* %83, i32 %84)
  %86 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %87 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %89 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %70
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %230

95:                                               ; preds = %70
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %98 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %100 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %101 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %100, i32 0, i32 4
  store %struct.c4iw_dev* %99, %struct.c4iw_dev** %101, align 8
  %102 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @alloc_pbl(%struct.c4iw_mr* %102, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %211

108:                                              ; preds = %95
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %111 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %114 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %113, i32 0, i32 0
  %115 = load %struct.c4iw_pd*, %struct.c4iw_pd** %11, align 8
  %116 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %119 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %123 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %127 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @allocate_stag(%struct.TYPE_10__* %114, i32* %14, i32 %117, i32 %121, i32 %125, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %108
  br label %196

133:                                              ; preds = %108
  %134 = load %struct.c4iw_pd*, %struct.c4iw_pd** %11, align 8
  %135 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %138 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @FW_RI_STAG_NSMR, align 4
  %141 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %142 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %146 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %149 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* %14, align 4
  %152 = ashr i32 %151, 8
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %155 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %158 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %158, i32 0, i32 0
  store i32 %153, i32* %159, align 4
  %160 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %161 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %160, i32 0, i32 1
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i64 @xa_insert_irq(i32* %161, i32 %162, %struct.c4iw_mr* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %133
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %15, align 4
  br label %177

170:                                              ; preds = %133
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %171, %struct.c4iw_mr* %172, i32 %173)
  %175 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %176 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %175, i32 0, i32 7
  store %struct.ib_mr* %176, %struct.ib_mr** %5, align 8
  br label %241

177:                                              ; preds = %167
  %178 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  %179 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %178, i32 0, i32 0
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %182 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %186 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %190 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %193 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dereg_mem(%struct.TYPE_10__* %179, i32 %180, i32 %184, i32 %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %177, %132
  %197 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %198 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %197, i32 0, i32 4
  %199 = load %struct.c4iw_dev*, %struct.c4iw_dev** %198, align 8
  %200 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %199, i32 0, i32 0
  %201 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %202 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %206 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = shl i32 %208, 3
  %210 = call i32 @c4iw_pblpool_free(%struct.TYPE_10__* %200, i32 %204, i32 %209)
  br label %211

211:                                              ; preds = %196, %107
  %212 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %213 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %212, i32 0, i32 4
  %214 = load %struct.c4iw_dev*, %struct.c4iw_dev** %213, align 8
  %215 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %221 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %224 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %227 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dma_free_coherent(i32* %219, i32 %222, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %211, %92
  %231 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %232 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @c4iw_put_wr_wait(i32 %233)
  br label %235

235:                                              ; preds = %230, %67
  %236 = load %struct.c4iw_mr*, %struct.c4iw_mr** %12, align 8
  %237 = call i32 @kfree(%struct.c4iw_mr* %236)
  br label %238

238:                                              ; preds = %235, %55
  %239 = load i32, i32* %15, align 4
  %240 = call %struct.ib_mr* @ERR_PTR(i32 %239)
  store %struct.ib_mr* %240, %struct.ib_mr** %5, align 8
  br label %241

241:                                              ; preds = %238, %170, %46
  %242 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %242
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd*) #1

declare dso_local i32 @t4_max_fr_depth(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.c4iw_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @c4iw_alloc_wr_wait(i32) #1

declare dso_local i32 @c4iw_init_wr_wait(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @alloc_pbl(%struct.c4iw_mr*, i32) #1

declare dso_local i32 @allocate_stag(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @xa_insert_irq(i32*, i32, %struct.c4iw_mr*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.c4iw_mr*, i32) #1

declare dso_local i32 @dereg_mem(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @c4iw_pblpool_free(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @c4iw_put_wr_wait(i32) #1

declare dso_local i32 @kfree(%struct.c4iw_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
