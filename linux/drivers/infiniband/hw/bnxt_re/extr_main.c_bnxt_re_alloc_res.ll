; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BNXT_RE_MAX_CQ_COUNT = common dso_local global i64 0, align 8
@BNXT_RE_MAX_SRQC_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Alloc Failed NQ%d rc:%#x\00", align 1
@PBL_LVL_0 = common dso_local global i64 0, align 8
@BNXT_QPLIB_NQE_MAX_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate NQ fw id with rc = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_alloc_res(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %10, i32 0, i32 10
  %12 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  %15 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %15, i32 0, i32 10
  %17 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %17, i32 0, i32 7
  %19 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bnxt_qplib_get_dev_attr(i32* %16, i32* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %229

26:                                               ; preds = %1
  %27 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %27, i32 0, i32 1
  %29 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %29, i32 0, i32 6
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %37, i32 0, i32 7
  %39 = call i32 @bnxt_qplib_alloc_res(%struct.TYPE_14__* %28, i32 %33, i32 %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %229

43:                                               ; preds = %26
  %44 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %47, i32 0, i32 2
  %49 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %50 = call i32 @bnxt_qplib_alloc_dpi(i32* %46, i32* %48, %struct.bnxt_re_dev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %225

54:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %182, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %185

62:                                               ; preds = %55
  %63 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %64 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %63, i32 0, i32 1
  %65 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %71, align 8
  %72 = load i64, i64* @BNXT_RE_MAX_CQ_COUNT, align 8
  %73 = load i64, i64* @BNXT_RE_MAX_SRQC_COUNT, align 8
  %74 = add nsw i64 %72, %73
  %75 = add nsw i64 %74, 2
  %76 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %77 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %76, i32 0, i32 3
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i64 %75, i64* %83, align 8
  %84 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %85 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %84, i32 0, i32 6
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %90 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = call i32 @bnxt_qplib_alloc_nq(i32 %88, %struct.TYPE_15__* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %62
  %99 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %100 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  br label %186

104:                                              ; preds = %62
  %105 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %106 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %105, i32 0, i32 4
  %107 = call i32 @bnxt_qplib_get_ring_type(i32* %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %109 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load i64, i64* @PBL_LVL_0, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %5, align 8
  %121 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %122 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %131 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %130, i32 0, i32 3
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %8, align 4
  %142 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i64, i64* @BNXT_QPLIB_NQE_MAX_CNT, align 8
  %147 = sub nsw i64 %146, 1
  %148 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %149 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %148, i32 0, i32 5
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %158 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %157, i32 0, i32 3
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = call i32 @bnxt_re_net_ring_alloc(%struct.bnxt_re_dev* %142, i32* %143, i32 %144, i32 %145, i64 %147, i32 %156, i32* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %104
  %168 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %169 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %168)
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %173 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %172, i32 0, i32 3
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %176
  %178 = call i32 @bnxt_qplib_free_nq(%struct.TYPE_15__* %177)
  br label %186

179:                                              ; preds = %104
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %55

185:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %234

186:                                              ; preds = %167, %98
  %187 = load i32, i32* %4, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %213, %186
  %189 = load i32, i32* %7, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  %192 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %193 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %192, i32 0, i32 4
  %194 = call i32 @bnxt_qplib_get_ring_type(i32* %193)
  store i32 %194, i32* %9, align 4
  %195 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %196 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %197 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %196, i32 0, i32 3
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev* %195, i32 %203, i32 %204)
  %206 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %207 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %206, i32 0, i32 3
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 %210
  %212 = call i32 @bnxt_qplib_free_nq(%struct.TYPE_15__* %211)
  br label %213

213:                                              ; preds = %191
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %7, align 4
  br label %188

216:                                              ; preds = %188
  %217 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %218 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %217, i32 0, i32 1
  %219 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %220 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %223 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %222, i32 0, i32 2
  %224 = call i32 @bnxt_qplib_dealloc_dpi(%struct.TYPE_14__* %218, i32* %221, i32* %223)
  br label %225

225:                                              ; preds = %216, %53
  %226 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %227 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %226, i32 0, i32 1
  %228 = call i32 @bnxt_qplib_free_res(%struct.TYPE_14__* %227)
  br label %229

229:                                              ; preds = %225, %42, %25
  %230 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %231 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  store i32* null, i32** %232, align 8
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %229, %185
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @bnxt_qplib_get_dev_attr(i32*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_alloc_res(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @bnxt_qplib_alloc_dpi(i32*, i32*, %struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_alloc_nq(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_get_ring_type(i32*) #1

declare dso_local i32 @bnxt_re_net_ring_alloc(%struct.bnxt_re_dev*, i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @bnxt_qplib_free_nq(%struct.TYPE_15__*) #1

declare dso_local i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_dealloc_dpi(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @bnxt_qplib_free_res(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
