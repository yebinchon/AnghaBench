; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_cong.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters_cong = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.qib_ibport = type { i64, i64, i64, i64, %struct.TYPE_8__, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.qib_pportdata = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qib_devdata = type { i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@QIB_XMIT_RATE_PICO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portcounters_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portcounters_cong(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters_cong*, align 8
  %8 = alloca %struct.qib_verbs_counters, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca %struct.qib_devdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_pma_portcounters_cong*
  store %struct.ib_pma_portcounters_cong* %18, %struct.ib_pma_portcounters_cong** %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %19, i64 %20)
  store %struct.qib_ibport* %21, %struct.qib_ibport** %9, align 8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %23 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %22)
  store %struct.qib_pportdata* %23, %struct.qib_pportdata** %10, align 8
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %25 = call %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %24)
  store %struct.qib_devdata* %25, %struct.qib_devdata** %11, align 8
  %26 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %27 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %39 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %40 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %3
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %50 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %51 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %44
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %57 = call i32 @qib_get_counters(%struct.qib_pportdata* %56, %struct.qib_verbs_counters* %8)
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %59 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %65 = call i64 @xmit_wait_get_value_delta(%struct.qib_pportdata* %64)
  store i64 %65, i64* %13, align 8
  %66 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %67 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %73 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %72, i32 0, i32 13
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %74
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %81 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %80, i32 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %82
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %89 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %90
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  %96 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %97 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %98
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %106
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  %112 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %113 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %117, %114
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %121 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %125, %122
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  %128 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %129 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %133, %130
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %137 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %141, %138
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 8
  %144 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %145 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %147
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 8
  %153 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %154 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 12
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %157, %155
  store i64 %158, i64* %156, align 8
  %159 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %160 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, %161
  store i64 %164, i64* %162, align 8
  %165 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %166 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, %167
  store i64 %170, i64* %168, align 8
  %171 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %172 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %175, %173
  store i64 %176, i64* %174, align 8
  %177 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %178 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @memset(i64 %179, i32 0, i32 8)
  %181 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %182 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @memset(i64 %183, i32 0, i32 8)
  %185 = load i32, i32* @QIB_XMIT_RATE_PICO, align 4
  %186 = shl i32 %185, 13
  %187 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %188 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @QIB_XMIT_RATE_PICO, align 4
  %191 = shl i32 %190, 13
  %192 = xor i32 %191, -1
  %193 = and i32 %189, %192
  %194 = or i32 %186, %193
  %195 = call i8* @cpu_to_be16(i32 %194)
  %196 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %197 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %196, i32 0, i32 14
  store i8* %195, i8** %197, align 8
  %198 = call i8* @cpu_to_be64(i64 0)
  %199 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %200 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %199, i32 0, i32 13
  store i8* %198, i8** %200, align 8
  %201 = load i64, i64* %13, align 8
  %202 = call i8* @cpu_to_be64(i64 %201)
  %203 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %204 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %203, i32 0, i32 12
  store i8* %202, i8** %204, align 8
  %205 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 12
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @cpu_to_be64(i64 %206)
  %208 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %209 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %208, i32 0, i32 11
  store i8* %207, i8** %209, align 8
  %210 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 11
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @cpu_to_be64(i64 %211)
  %213 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %214 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %213, i32 0, i32 10
  store i8* %212, i8** %214, align 8
  %215 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 10
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @cpu_to_be64(i64 %216)
  %218 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %219 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %218, i32 0, i32 9
  store i8* %217, i8** %219, align 8
  %220 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 9
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @cpu_to_be64(i64 %221)
  %223 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %224 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %223, i32 0, i32 8
  store i8* %222, i8** %224, align 8
  %225 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = icmp ugt i64 %227, 65535
  br i1 %228, label %229, label %233

229:                                              ; preds = %55
  %230 = call i8* @cpu_to_be16(i32 65535)
  %231 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %232 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %231, i32 0, i32 7
  store i8* %230, i8** %232, align 8
  br label %239

233:                                              ; preds = %55
  %234 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i8* @cpu_to_be16(i32 %235)
  %237 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %238 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %237, i32 0, i32 7
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %233, %229
  %240 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp ugt i64 %242, 255
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %246 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %245, i32 0, i32 0
  store i32 255, i32* %246, align 8
  br label %254

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = trunc i64 %250 to i32
  %252 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %253 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %247, %244
  %255 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = icmp ugt i64 %257, 255
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %261 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %260, i32 0, i32 1
  store i32 255, i32* %261, align 4
  br label %269

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = trunc i64 %265 to i32
  %267 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %268 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %262, %259
  %270 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = icmp ugt i64 %272, 65535
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = call i8* @cpu_to_be16(i32 65535)
  %276 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %277 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %276, i32 0, i32 6
  store i8* %275, i8** %277, align 8
  br label %284

278:                                              ; preds = %269
  %279 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @cpu_to_be16(i32 %280)
  %282 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %283 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %282, i32 0, i32 6
  store i8* %281, i8** %283, align 8
  br label %284

284:                                              ; preds = %278, %274
  %285 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = icmp ugt i64 %287, 65535
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = call i8* @cpu_to_be16(i32 65535)
  %291 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %292 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  br label %299

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i8* @cpu_to_be16(i32 %295)
  %297 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %298 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %297, i32 0, i32 5
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %293, %289
  %300 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = icmp ugt i64 %302, 65535
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = call i8* @cpu_to_be16(i32 65535)
  %306 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %307 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  br label %314

308:                                              ; preds = %299
  %309 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = call i8* @cpu_to_be16(i32 %310)
  %312 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %313 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %312, i32 0, i32 4
  store i8* %311, i8** %313, align 8
  br label %314

314:                                              ; preds = %308, %304
  %315 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = icmp ugt i64 %317, 15
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 6
  store i32 15, i32* %320, align 8
  br label %321

321:                                              ; preds = %319, %314
  %322 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = icmp ugt i64 %324, 15
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 7
  store i32 15, i32* %327, align 4
  br label %328

328:                                              ; preds = %326, %321
  %329 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 6
  %330 = load i32, i32* %329, align 8
  %331 = shl i32 %330, 4
  %332 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 7
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %331, %333
  %335 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %336 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 8
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = icmp ugt i64 %339, 65535
  br i1 %340, label %341, label %345

341:                                              ; preds = %328
  %342 = call i8* @cpu_to_be16(i32 65535)
  %343 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %344 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %343, i32 0, i32 3
  store i8* %342, i8** %344, align 8
  br label %351

345:                                              ; preds = %328
  %346 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %8, i32 0, i32 8
  %347 = load i32, i32* %346, align 8
  %348 = call i8* @cpu_to_be16(i32 %347)
  %349 = load %struct.ib_pma_portcounters_cong*, %struct.ib_pma_portcounters_cong** %7, align 8
  %350 = getelementptr inbounds %struct.ib_pma_portcounters_cong, %struct.ib_pma_portcounters_cong* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %345, %341
  %352 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %353 = bitcast %struct.ib_pma_mad* %352 to %struct.ib_smp*
  %354 = call i32 @reply(%struct.ib_smp* %353)
  ret i32 %354
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
