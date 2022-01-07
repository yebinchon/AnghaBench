; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_mg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_mg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.pblk_line_mgmt, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32, i32, i32*, i32*, i32 }
%struct.pblk_line_mgmt = type { i32, %struct.pblk_emeta*, %struct.pblk_emeta*, %struct.pblk_emeta*, %struct.pblk_emeta**, i32, i32, %struct.pblk_emeta**, i32, i32, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32*, i32 }
%struct.pblk_emeta = type { i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32 }

@PBLK_DATA_LINES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pblk_lm_bitmap\00", align 1
@EMPTY_ENTRY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_line_mg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_mg_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca %struct.pblk_line_mgmt*, align 8
  %7 = alloca %struct.pblk_line_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pblk_emeta*, align 8
  %11 = alloca %struct.pblk_emeta, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 2
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %13, align 8
  store %struct.nvm_tgt_dev* %14, %struct.nvm_tgt_dev** %4, align 8
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %15, i32 0, i32 0
  store %struct.nvm_geo* %16, %struct.nvm_geo** %5, align 8
  %17 = load %struct.pblk*, %struct.pblk** %3, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 1
  store %struct.pblk_line_mgmt* %18, %struct.pblk_line_mgmt** %6, align 8
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 0
  store %struct.pblk_line_meta* %20, %struct.pblk_line_meta** %7, align 8
  %21 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %22 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %25 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %27 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %26, i32 0, i32 26
  store i32* null, i32** %27, align 8
  %28 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %29 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %28, i32 0, i32 27
  store i32 0, i32* %29, align 8
  %30 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %31 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %30, i32 0, i32 24
  store i64 0, i64* %31, align 8
  %32 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %33 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %32, i32 0, i32 25
  store i64 0, i64* %33, align 8
  %34 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %35 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %34, i32 0, i32 23
  store i64 0, i64* %35, align 8
  %36 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %37 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %36, i32 0, i32 22
  %38 = load i32, i32* @PBLK_DATA_LINES, align 4
  %39 = call i32 @bitmap_zero(i32* %37, i32 %38)
  %40 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %41 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %40, i32 0, i32 21
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %44 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %43, i32 0, i32 20
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %47 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %46, i32 0, i32 19
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %50 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %49, i32 0, i32 18
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %53 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %52, i32 0, i32 14
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %56 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %55, i32 0, i32 13
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %59 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %58, i32 0, i32 11
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %62 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %61, i32 0, i32 17
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %65 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %64, i32 0, i32 15
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %68 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %67, i32 0, i32 16
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %71 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %70, i32 0, i32 15
  %72 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %73 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %72, i32 0, i32 12
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  store i32* %71, i32** %75, align 8
  %76 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %77 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %76, i32 0, i32 14
  %78 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %79 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %78, i32 0, i32 12
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* %77, i32** %81, align 8
  %82 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %83 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %82, i32 0, i32 13
  %84 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %85 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %84, i32 0, i32 12
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  store i32* %83, i32** %87, align 8
  %88 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %89 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %88, i32 0, i32 11
  %90 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %91 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %90, i32 0, i32 12
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 3
  store i32* %89, i32** %93, align 8
  %94 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %95 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %94, i32 0, i32 10
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %98 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %97, i32 0, i32 9
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %101 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %100, i32 0, i32 8
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %104 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.pblk_emeta* @kcalloc(i32 %105, i32 4, i32 %106)
  %108 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %109 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %108, i32 0, i32 1
  store %struct.pblk_emeta* %107, %struct.pblk_emeta** %109, align 8
  %110 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %111 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %110, i32 0, i32 1
  %112 = load %struct.pblk_emeta*, %struct.pblk_emeta** %111, align 8
  %113 = icmp ne %struct.pblk_emeta* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %1
  br label %363

115:                                              ; preds = %1
  %116 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %117 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kzalloc(i32 %118, i32 %119)
  %121 = bitcast i8* %120 to %struct.pblk_emeta*
  %122 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %123 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %122, i32 0, i32 2
  store %struct.pblk_emeta* %121, %struct.pblk_emeta** %123, align 8
  %124 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %125 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %124, i32 0, i32 2
  %126 = load %struct.pblk_emeta*, %struct.pblk_emeta** %125, align 8
  %127 = icmp ne %struct.pblk_emeta* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  br label %358

129:                                              ; preds = %115
  %130 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %131 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kzalloc(i32 %132, i32 %133)
  %135 = bitcast i8* %134 to %struct.pblk_emeta*
  %136 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %137 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %136, i32 0, i32 3
  store %struct.pblk_emeta* %135, %struct.pblk_emeta** %137, align 8
  %138 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %139 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %138, i32 0, i32 3
  %140 = load %struct.pblk_emeta*, %struct.pblk_emeta** %139, align 8
  %141 = icmp ne %struct.pblk_emeta* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %129
  br label %353

143:                                              ; preds = %129
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @PBLK_DATA_LINES, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %150 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i8* @kmalloc(i32 %151, i32 %152)
  %154 = bitcast i8* %153 to %struct.pblk_emeta*
  %155 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %156 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %155, i32 0, i32 4
  %157 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %157, i64 %159
  store %struct.pblk_emeta* %154, %struct.pblk_emeta** %160, align 8
  %161 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %162 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %161, i32 0, i32 4
  %163 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %163, i64 %165
  %167 = load %struct.pblk_emeta*, %struct.pblk_emeta** %166, align 8
  %168 = icmp ne %struct.pblk_emeta* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %148
  br label %331

170:                                              ; preds = %148
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %144

174:                                              ; preds = %144
  %175 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %176 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %177, i32 0, i32 0, i32* null)
  %179 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %180 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %182 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %174
  br label %331

186:                                              ; preds = %174
  %187 = load i32, i32* @PBLK_DATA_LINES, align 4
  %188 = mul nsw i32 %187, 2
  %189 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %190 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @mempool_create_slab_pool(i32 %188, i32 %191)
  %193 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %194 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 4
  %195 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %196 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %186
  br label %326

200:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %244, %200
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @PBLK_DATA_LINES, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %247

205:                                              ; preds = %201
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call i8* @kmalloc(i32 8, i32 %206)
  %208 = bitcast i8* %207 to %struct.pblk_emeta*
  store %struct.pblk_emeta* %208, %struct.pblk_emeta** %10, align 8
  %209 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %210 = icmp ne %struct.pblk_emeta* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  br label %297

212:                                              ; preds = %205
  %213 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %214 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = call i32 @kvmalloc(i32 %217, i32 %218)
  %220 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %221 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %223 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %212
  %227 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %228 = call i32 @kfree(%struct.pblk_emeta* %227)
  br label %297

229:                                              ; preds = %212
  %230 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %231 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %236 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %238 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %239 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %238, i32 0, i32 7
  %240 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %240, i64 %242
  store %struct.pblk_emeta* %237, %struct.pblk_emeta** %243, align 8
  br label %244

244:                                              ; preds = %229
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  br label %201

247:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  br label %248

248:                                              ; preds = %266, %247
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %251 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %248
  %255 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %256 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %255, i32 0, i32 1
  %257 = load %struct.pblk_emeta*, %struct.pblk_emeta** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %257, i64 %259
  %261 = load i32, i32* @EMPTY_ENTRY, align 4
  %262 = call i64 @cpu_to_le32(i32 %261)
  %263 = bitcast %struct.pblk_emeta* %11 to i64*
  store i64 %262, i64* %263, align 4
  %264 = bitcast %struct.pblk_emeta* %260 to i8*
  %265 = bitcast %struct.pblk_emeta* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %264, i8* align 4 %265, i64 8, i1 false)
  br label %266

266:                                              ; preds = %254
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %248

269:                                              ; preds = %248
  %270 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %271 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %274 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %272, %275
  store i32 %276, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %277

277:                                              ; preds = %292, %269
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %280 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %277
  %284 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %285 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %284, i32 0, i32 2
  %286 = load %struct.pblk_emeta*, %struct.pblk_emeta** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %289 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @bitmap_set(%struct.pblk_emeta* %286, i32 %287, i32 %290)
  br label %292

292:                                              ; preds = %283
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %8, align 4
  br label %277

296:                                              ; preds = %277
  store i32 0, i32* %2, align 4
  br label %366

297:                                              ; preds = %226, %211
  br label %298

298:                                              ; preds = %302, %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %8, align 4
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %321

302:                                              ; preds = %298
  %303 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %304 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %303, i32 0, i32 7
  %305 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %305, i64 %307
  %309 = load %struct.pblk_emeta*, %struct.pblk_emeta** %308, align 8
  %310 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @kvfree(i32 %311)
  %313 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %314 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %313, i32 0, i32 7
  %315 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %315, i64 %317
  %319 = load %struct.pblk_emeta*, %struct.pblk_emeta** %318, align 8
  %320 = call i32 @kfree(%struct.pblk_emeta* %319)
  br label %298

321:                                              ; preds = %298
  %322 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %323 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @mempool_destroy(i32 %324)
  br label %326

326:                                              ; preds = %321, %199
  %327 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %328 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @kmem_cache_destroy(i32 %329)
  br label %331

331:                                              ; preds = %326, %185, %169
  store i32 0, i32* %8, align 4
  br label %332

332:                                              ; preds = %345, %331
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* @PBLK_DATA_LINES, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %348

336:                                              ; preds = %332
  %337 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %338 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %337, i32 0, i32 4
  %339 = load %struct.pblk_emeta**, %struct.pblk_emeta*** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.pblk_emeta*, %struct.pblk_emeta** %339, i64 %341
  %343 = load %struct.pblk_emeta*, %struct.pblk_emeta** %342, align 8
  %344 = call i32 @kfree(%struct.pblk_emeta* %343)
  br label %345

345:                                              ; preds = %336
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %332

348:                                              ; preds = %332
  %349 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %350 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %349, i32 0, i32 3
  %351 = load %struct.pblk_emeta*, %struct.pblk_emeta** %350, align 8
  %352 = call i32 @kfree(%struct.pblk_emeta* %351)
  br label %353

353:                                              ; preds = %348, %142
  %354 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %355 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %354, i32 0, i32 2
  %356 = load %struct.pblk_emeta*, %struct.pblk_emeta** %355, align 8
  %357 = call i32 @kfree(%struct.pblk_emeta* %356)
  br label %358

358:                                              ; preds = %353, %128
  %359 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %360 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %359, i32 0, i32 1
  %361 = load %struct.pblk_emeta*, %struct.pblk_emeta** %360, align 8
  %362 = call i32 @kfree(%struct.pblk_emeta* %361)
  br label %363

363:                                              ; preds = %358, %114
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %2, align 4
  br label %366

366:                                              ; preds = %363, %296
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

declare dso_local i32 @bitmap_zero(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.pblk_emeta* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pblk_emeta*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bitmap_set(%struct.pblk_emeta*, i32, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
