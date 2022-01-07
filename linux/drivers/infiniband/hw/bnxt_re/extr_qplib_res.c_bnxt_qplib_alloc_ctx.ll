; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_ctx = type { i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32* }

@BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HWQ_TYPE_CTX = common dso_local global i32 0, align 4
@BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE = common dso_local global i32 0, align 4
@BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE = common dso_local global i32 0, align 4
@BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE = common dso_local global i32 0, align 4
@MAX_TQM_ALLOC_REQ = common dso_local global i32 0, align 4
@PTU_PTE_VALID = common dso_local global i32 0, align 4
@MAX_TQM_ALLOC_BLK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_ctx(%struct.pci_dev* %0, %struct.bnxt_qplib_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.bnxt_qplib_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.bnxt_qplib_ctx* %1, %struct.bnxt_qplib_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  br label %345

22:                                               ; preds = %18
  %23 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %30, i32 0, i32 13
  %32 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* @BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %38 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %29, %struct.TYPE_4__* %31, i32* null, i32* %34, i32 %35, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %354

42:                                               ; preds = %22
  %43 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %50 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %50, i32 0, i32 12
  %52 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %52, i32 0, i32 12
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* @BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %58 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %49, %struct.TYPE_4__* %51, i32* null, i32* %54, i32 %55, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %354

62:                                               ; preds = %42
  %63 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %70, i32 0, i32 11
  %72 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* @BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %78 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %69, %struct.TYPE_4__* %71, i32* null, i32* %74, i32 %75, i32 0, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  br label %354

82:                                               ; preds = %62
  %83 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %87 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %90, i32 0, i32 10
  %92 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* @BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %98 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %89, %struct.TYPE_4__* %91, i32* null, i32* %94, i32 %95, i32 0, i32 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %82
  br label %354

102:                                              ; preds = %82
  %103 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 512, i32* %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %107 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %107, i32 0, i32 9
  %109 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %114 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %106, %struct.TYPE_4__* %108, i32* null, i32* %111, i32 4, i32 0, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %354

118:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %173, %118
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @MAX_TQM_ALLOC_REQ, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %119
  %124 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %173

133:                                              ; preds = %123
  %134 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %138 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %136, %143
  %145 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %146 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %145, i32 0, i32 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 8
  %152 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %153 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %154 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %153, i32 0, i32 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %159, i32 0, i32 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %168 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %152, %struct.TYPE_4__* %158, i32* null, i32* %165, i32 1, i32 0, i32 %166, i32 %167)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %133
  br label %354

172:                                              ; preds = %133
  br label %173

173:                                              ; preds = %172, %132
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %119

176:                                              ; preds = %119
  %177 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %178 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i32**
  store i32** %181, i32*** %15, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %288, %176
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @MAX_TQM_ALLOC_REQ, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %296

186:                                              ; preds = %182
  %187 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %188 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %187, i32 0, i32 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %186
  br label %288

197:                                              ; preds = %186
  %198 = load i32, i32* %14, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %204 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %203, i32 0, i32 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %262 [
    i32 128, label %211
    i32 129, label %261
    i32 130, label %261
  ]

211:                                              ; preds = %202
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %257, %211
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %215 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %214, i32 0, i32 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 129
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %213, %224
  br i1 %225, label %226, label %260

226:                                              ; preds = %212
  %227 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %228 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %227, i32 0, i32 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 129
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @PTU_PTE_VALID, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @cpu_to_le64(i32 %243)
  %245 = load i32**, i32*** %15, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %246, %247
  %249 = call i64 @PTR_PG(i32 %248)
  %250 = getelementptr inbounds i32*, i32** %245, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %252, %253
  %255 = call i64 @PTR_IDX(i32 %254)
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  store i32 %244, i32* %256, align 4
  br label %257

257:                                              ; preds = %226
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %12, align 4
  br label %212

260:                                              ; preds = %212
  br label %287

261:                                              ; preds = %202, %202
  br label %262

262:                                              ; preds = %202, %261
  %263 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %264 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %263, i32 0, i32 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i64 130
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @PTU_PTE_VALID, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @cpu_to_le64(i32 %277)
  %279 = load i32**, i32*** %15, align 8
  %280 = load i32, i32* %11, align 4
  %281 = call i64 @PTR_PG(i32 %280)
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = call i64 @PTR_IDX(i32 %284)
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %278, i32* %286, align 4
  br label %287

287:                                              ; preds = %262, %260
  br label %288

288:                                              ; preds = %287, %196
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %10, align 4
  %291 = load i64, i64* @MAX_TQM_ALLOC_BLK_SIZE, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %11, align 4
  br label %182

296:                                              ; preds = %182
  %297 = load i32, i32* %14, align 4
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i32 0, i32* %14, align 4
  br label %300

300:                                              ; preds = %299, %296
  %301 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %302 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %301, i32 0, i32 8
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 128
  br i1 %309, label %310, label %311

310:                                              ; preds = %300
  br label %321

311:                                              ; preds = %300
  %312 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %313 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %312, i32 0, i32 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, 1
  br label %321

321:                                              ; preds = %311, %310
  %322 = phi i32 [ 128, %310 ], [ %320, %311 ]
  %323 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %324 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 8
  %325 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %326 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = mul nsw i32 %327, 16
  %329 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %330 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 8
  %332 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %333 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %334 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %333, i32 0, i32 7
  %335 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %336 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %335, i32 0, i32 7
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32, i32* @PAGE_SIZE, align 4
  %339 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %340 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %332, %struct.TYPE_4__* %334, i32* null, i32* %337, i32 1, i32 0, i32 %338, i32 %339)
  store i32 %340, i32* %13, align 4
  %341 = load i32, i32* %13, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %321
  br label %354

344:                                              ; preds = %321
  br label %345

345:                                              ; preds = %344, %21
  %346 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %347 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %348 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %347, i32 0, i32 6
  %349 = call i32 @bnxt_qplib_alloc_stats_ctx(%struct.pci_dev* %346, i32* %348)
  store i32 %349, i32* %13, align 4
  %350 = load i32, i32* %13, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %345
  br label %354

353:                                              ; preds = %345
  store i32 0, i32* %5, align 4
  br label %359

354:                                              ; preds = %352, %343, %171, %117, %101, %81, %61, %41
  %355 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %356 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %7, align 8
  %357 = call i32 @bnxt_qplib_free_ctx(%struct.pci_dev* %355, %struct.bnxt_qplib_ctx* %356)
  %358 = load i32, i32* %13, align 4
  store i32 %358, i32* %5, align 4
  br label %359

359:                                              ; preds = %354, %353
  %360 = load i32, i32* %5, align 4
  ret i32 %360
}

declare dso_local i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev*, %struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @PTR_PG(i32) #1

declare dso_local i64 @PTR_IDX(i32) #1

declare dso_local i32 @bnxt_qplib_alloc_stats_ctx(%struct.pci_dev*, i32*) #1

declare dso_local i32 @bnxt_qplib_free_ctx(%struct.pci_dev*, %struct.bnxt_qplib_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
