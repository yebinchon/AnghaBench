; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qib_ibport = type { %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qib_pportdata = type { i32 }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca %struct.qib_verbs_counters, align 4
  %11 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %15, %struct.ib_pma_portcounters** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %16, i64 %17)
  store %struct.qib_ibport* %18, %struct.qib_ibport** %8, align 8
  %19 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %20 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %19)
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %9, align 8
  %21 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %22 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %25 = call i32 @qib_get_counters(%struct.qib_pportdata* %24, %struct.qib_verbs_counters* %10)
  %26 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %27 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %26, i32 0, i32 13
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %28
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %35 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %36
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %43 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %44
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %51 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %52
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %59 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %60
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %67 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %68
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %75 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %84
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %99 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %100
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %108
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %115 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %116
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %127, %124
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %133
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %140 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memset(i64 %141, i32 0, i32 8)
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %145 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %147 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %3
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151, %3
  %156 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %157 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %158 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %155, %151
  %163 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp ugt i64 %165, 65535
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = call i8* @cpu_to_be16(i32 65535)
  %169 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %170 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %169, i32 0, i32 12
  store i8* %168, i8** %170, align 8
  br label %177

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @cpu_to_be16(i32 %173)
  %175 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %176 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %175, i32 0, i32 12
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %171, %167
  %178 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ugt i64 %180, 255
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %184 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %183, i32 0, i32 1
  store i32 255, i32* %184, align 8
  br label %192

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = trunc i64 %188 to i32
  %190 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %191 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %185, %182
  %193 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ugt i64 %195, 255
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %199 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %198, i32 0, i32 2
  store i32 255, i32* %199, align 4
  br label %207

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = trunc i64 %203 to i32
  %205 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %206 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %200, %197
  %208 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp ugt i64 %210, 65535
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = call i8* @cpu_to_be16(i32 65535)
  %214 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %215 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %214, i32 0, i32 11
  store i8* %213, i8** %215, align 8
  br label %222

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @cpu_to_be16(i32 %218)
  %220 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %221 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %220, i32 0, i32 11
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %216, %212
  %223 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp ugt i64 %225, 65535
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = call i8* @cpu_to_be16(i32 65535)
  %229 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %230 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %229, i32 0, i32 10
  store i8* %228, i8** %230, align 8
  br label %237

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @cpu_to_be16(i32 %233)
  %235 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %236 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %235, i32 0, i32 10
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %231, %227
  %238 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp ugt i64 %240, 65535
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = call i8* @cpu_to_be16(i32 65535)
  %244 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %245 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %244, i32 0, i32 9
  store i8* %243, i8** %245, align 8
  br label %252

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @cpu_to_be16(i32 %248)
  %250 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %251 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %250, i32 0, i32 9
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %246, %242
  %253 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp ugt i64 %255, 15
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  store i32 15, i32* %258, align 4
  br label %259

259:                                              ; preds = %257, %252
  %260 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = icmp ugt i64 %262, 15
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  store i32 15, i32* %265, align 4
  br label %266

266:                                              ; preds = %264, %259
  %267 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 4
  %270 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %269, %271
  %273 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %274 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 8
  %275 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = icmp ugt i64 %277, 65535
  br i1 %278, label %279, label %283

279:                                              ; preds = %266
  %280 = call i8* @cpu_to_be16(i32 65535)
  %281 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %282 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %281, i32 0, i32 8
  store i8* %280, i8** %282, align 8
  br label %289

283:                                              ; preds = %266
  %284 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @cpu_to_be16(i32 %285)
  %287 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %288 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %287, i32 0, i32 8
  store i8* %286, i8** %288, align 8
  br label %289

289:                                              ; preds = %283, %279
  %290 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp ugt i64 %292, 4294967295
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = call i8* @cpu_to_be32(i32 -1)
  %296 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %297 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %296, i32 0, i32 7
  store i8* %295, i8** %297, align 8
  br label %304

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @cpu_to_be32(i32 %300)
  %302 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %303 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %302, i32 0, i32 7
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %298, %294
  %305 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = icmp ugt i64 %307, 4294967295
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = call i8* @cpu_to_be32(i32 -1)
  %311 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %312 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %311, i32 0, i32 6
  store i8* %310, i8** %312, align 8
  br label %319

313:                                              ; preds = %304
  %314 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @cpu_to_be32(i32 %315)
  %317 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %318 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %317, i32 0, i32 6
  store i8* %316, i8** %318, align 8
  br label %319

319:                                              ; preds = %313, %309
  %320 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = icmp ugt i64 %322, 4294967295
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = call i8* @cpu_to_be32(i32 -1)
  %326 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %327 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %326, i32 0, i32 5
  store i8* %325, i8** %327, align 8
  br label %334

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = call i8* @cpu_to_be32(i32 %330)
  %332 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %333 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %332, i32 0, i32 5
  store i8* %331, i8** %333, align 8
  br label %334

334:                                              ; preds = %328, %324
  %335 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = icmp ugt i64 %337, 4294967295
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = call i8* @cpu_to_be32(i32 -1)
  %341 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %342 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %341, i32 0, i32 4
  store i8* %340, i8** %342, align 8
  br label %349

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @cpu_to_be32(i32 %345)
  %347 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %348 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %347, i32 0, i32 4
  store i8* %346, i8** %348, align 8
  br label %349

349:                                              ; preds = %343, %339
  %350 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %351 = bitcast %struct.ib_pma_mad* %350 to %struct.ib_smp*
  %352 = call i32 @reply(%struct.ib_smp* %351)
  ret i32 %352
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
