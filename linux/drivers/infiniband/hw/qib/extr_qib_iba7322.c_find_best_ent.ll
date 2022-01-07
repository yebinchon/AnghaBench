; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_find_best_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_find_best_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vendor_txdds_ent = type { %struct.txdds_ent, %struct.txdds_ent, %struct.txdds_ent, i32, i32 }
%struct.txdds_ent = type { i32 }
%struct.qib_pportdata = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.qib_qsfp_cache }
%struct.qib_qsfp_cache = type { i64*, i32, i32, i32 }

@vendor_txdds = common dso_local global %struct.vendor_txdds_ent* null, align 8
@QSFP_VOUI_LEN = common dso_local global i32 0, align 4
@QSFP_PN_LEN = common dso_local global i32 0, align 4
@txdds_sdr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_ddr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_qdr = common dso_local global %struct.txdds_ent* null, align 8
@TXDDS_TABLE_SZ = common dso_local global i32 0, align 4
@TXDDS_EXTRA_SZ = common dso_local global i32 0, align 4
@txdds_extra_sdr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_extra_ddr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_extra_qdr = common dso_local global %struct.txdds_ent* null, align 8
@TXDDS_MFG_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IB%u:%u use idx %u into txdds_mfg\0A\00", align 1
@txdds_extra_mfg = common dso_local global %struct.txdds_ent* null, align 8
@qib_long_atten = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, %struct.txdds_ent**, %struct.txdds_ent**, %struct.txdds_ent**, i32)* @find_best_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_ent(%struct.qib_pportdata* %0, %struct.txdds_ent** %1, %struct.txdds_ent** %2, %struct.txdds_ent** %3, i32 %4) #0 {
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.txdds_ent**, align 8
  %8 = alloca %struct.txdds_ent**, align 8
  %9 = alloca %struct.txdds_ent**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_qsfp_cache*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vendor_txdds_ent*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %6, align 8
  store %struct.txdds_ent** %1, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent** %2, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent** %3, %struct.txdds_ent*** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.qib_qsfp_cache* %18, %struct.qib_qsfp_cache** %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %69, %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** @vendor_txdds, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.vendor_txdds_ent* %24)
  %26 = icmp slt i32 %23, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %72

29:                                               ; preds = %27
  %30 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** @vendor_txdds, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %30, i64 %32
  store %struct.vendor_txdds_ent* %33, %struct.vendor_txdds_ent** %13, align 8
  %34 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %35 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %38 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @QSFP_VOUI_LEN, align 4
  %41 = call i32 @memcmp(i32 %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %29
  %44 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %45 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %50 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %53 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @QSFP_PN_LEN, align 4
  %56 = call i32 @memcmp(i32 %51, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %60 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %59, i32 0, i32 2
  %61 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %60, %struct.txdds_ent** %61, align 8
  %62 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %63 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %62, i32 0, i32 1
  %64 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %63, %struct.txdds_ent** %64, align 8
  %65 = load %struct.vendor_txdds_ent*, %struct.vendor_txdds_ent** %13, align 8
  %66 = getelementptr inbounds %struct.vendor_txdds_ent, %struct.vendor_txdds_ent* %65, i32 0, i32 0
  %67 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %66, %struct.txdds_ent** %67, align 8
  br label %297

68:                                               ; preds = %48, %29
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %19

72:                                               ; preds = %27
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %72
  %76 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %77 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @QSFP_IS_ACTIVE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %84 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %82, i64 %88
  %90 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %89, %struct.txdds_ent** %90, align 8
  %91 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_ddr, align 8
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %91, i64 %97
  %99 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %98, %struct.txdds_ent** %99, align 8
  %100 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_qdr, align 8
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %102 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %100, i64 %106
  %108 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %107, %struct.txdds_ent** %108, align 8
  br label %297

109:                                              ; preds = %75, %72
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %157, label %112

112:                                              ; preds = %109
  %113 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %114 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @QSFP_HAS_ATTEN(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %112
  %119 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %120 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %127 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %125, %118
  %133 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %134 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %135 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = call %struct.txdds_ent* @get_atten_table(%struct.txdds_ent* %133, i64 %138)
  %140 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %139, %struct.txdds_ent** %140, align 8
  %141 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_ddr, align 8
  %142 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %143 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.txdds_ent* @get_atten_table(%struct.txdds_ent* %141, i64 %146)
  %148 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %147, %struct.txdds_ent** %148, align 8
  %149 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_qdr, align 8
  %150 = load %struct.qib_qsfp_cache*, %struct.qib_qsfp_cache** %11, align 8
  %151 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = call %struct.txdds_ent* @get_atten_table(%struct.txdds_ent* %149, i64 %154)
  %156 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %155, %struct.txdds_ent** %156, align 8
  br label %297

157:                                              ; preds = %125, %112, %109
  %158 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %159 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %157
  %166 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %167 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %12, align 4
  %171 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %171, i64 %173
  %175 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %174, %struct.txdds_ent** %175, align 8
  %176 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_ddr, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %176, i64 %178
  %180 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %179, %struct.txdds_ent** %180, align 8
  %181 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_qdr, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %181, i64 %183
  %185 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %184, %struct.txdds_ent** %185, align 8
  br label %296

186:                                              ; preds = %157
  %187 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %188 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %187, i32 0, i32 2
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %193 = load i32, i32* @TXDDS_EXTRA_SZ, align 4
  %194 = add nsw i32 %192, %193
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %219

196:                                              ; preds = %186
  %197 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %198 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %12, align 4
  %204 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_sdr, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %204, i64 %206
  %208 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %207, %struct.txdds_ent** %208, align 8
  %209 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_ddr, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %209, i64 %211
  %213 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %212, %struct.txdds_ent** %213, align 8
  %214 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_qdr, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %214, i64 %216
  %218 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %217, %struct.txdds_ent** %218, align 8
  br label %295

219:                                              ; preds = %186
  %220 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %221 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = call i64 @IS_QME(%struct.TYPE_7__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %227 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %226, i32 0, i32 1
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = call i64 @IS_QMH(%struct.TYPE_7__* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %278

231:                                              ; preds = %225, %219
  %232 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %233 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %232, i32 0, i32 2
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %238 = load i32, i32* @TXDDS_EXTRA_SZ, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* @TXDDS_MFG_SZ, align 4
  %241 = add nsw i32 %239, %240
  %242 = icmp slt i32 %236, %241
  br i1 %242, label %243, label %278

243:                                              ; preds = %231
  %244 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %245 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %250 = load i32, i32* @TXDDS_EXTRA_SZ, align 4
  %251 = add nsw i32 %249, %250
  %252 = sub nsw i32 %248, %251
  store i32 %252, i32* %12, align 4
  %253 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %254 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %253, i32 0, i32 1
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %259 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %257, i32 %260, i32 %261)
  %263 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_mfg, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %263, i64 %265
  %267 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %266, %struct.txdds_ent** %267, align 8
  %268 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_mfg, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %268, i64 %270
  %272 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %271, %struct.txdds_ent** %272, align 8
  %273 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_extra_mfg, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %273, i64 %275
  %277 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %276, %struct.txdds_ent** %277, align 8
  br label %294

278:                                              ; preds = %231, %225
  %279 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %280 = load i32, i32* @qib_long_atten, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %279, i64 %281
  %283 = load %struct.txdds_ent**, %struct.txdds_ent*** %7, align 8
  store %struct.txdds_ent* %282, %struct.txdds_ent** %283, align 8
  %284 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_ddr, align 8
  %285 = load i32, i32* @qib_long_atten, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %284, i64 %286
  %288 = load %struct.txdds_ent**, %struct.txdds_ent*** %8, align 8
  store %struct.txdds_ent* %287, %struct.txdds_ent** %288, align 8
  %289 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_qdr, align 8
  %290 = load i32, i32* @qib_long_atten, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %289, i64 %291
  %293 = load %struct.txdds_ent**, %struct.txdds_ent*** %9, align 8
  store %struct.txdds_ent* %292, %struct.txdds_ent** %293, align 8
  br label %294

294:                                              ; preds = %278, %243
  br label %295

295:                                              ; preds = %294, %196
  br label %296

296:                                              ; preds = %295, %165
  br label %297

297:                                              ; preds = %58, %81, %132, %296
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.vendor_txdds_ent*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @QSFP_IS_ACTIVE(i32) #1

declare dso_local i64 @QSFP_HAS_ATTEN(i32) #1

declare dso_local %struct.txdds_ent* @get_atten_table(%struct.txdds_ent*, i64) #1

declare dso_local i64 @IS_QME(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_QMH(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
