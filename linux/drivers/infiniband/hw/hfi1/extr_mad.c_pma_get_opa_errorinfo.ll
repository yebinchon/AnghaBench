; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_errorinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_errorinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_pma_mad = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct._port_ei = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i8*, i32 }
%struct.TYPE_22__ = type { i8*, i8*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.opa_port_error_info_msg = type { i32*, %struct._port_ei* }
%struct.hfi1_devdata = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@RCV_ERR_INFO = common dso_local global i32 0, align 4
@RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK = common dso_local global i32 0, align 4
@RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SC_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*)* @pma_get_opa_errorinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_opa_errorinfo(%struct.opa_pma_mad* %0, %struct.ib_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.opa_pma_mad*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._port_ei*, align 8
  %12 = alloca %struct.opa_port_error_info_msg*, align 8
  %13 = alloca %struct.hfi1_devdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.opa_pma_mad* %0, %struct.opa_pma_mad** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %20)
  store %struct.hfi1_devdata* %21, %struct.hfi1_devdata** %13, align 8
  %22 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %23 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.opa_port_error_info_msg*
  store %struct.opa_port_error_info_msg* %25, %struct.opa_port_error_info_msg** %12, align 8
  %26 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %12, align 8
  %27 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %26, i32 0, i32 1
  %28 = load %struct._port_ei*, %struct._port_ei** %27, align 8
  %29 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %28, i64 0
  store %struct._port_ei* %29, %struct._port_ei** %11, align 8
  %30 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %31 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = call i32 @OPA_AM_NPORT(i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %12, align 8
  %37 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be64_to_cpu(i32 %40)
  %42 = call i32 @hweight64(i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %44 = call i32 @memset(%struct._port_ei* %43, i32 0, i32 80)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47, %4
  %52 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %53 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %54 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %59 = bitcast %struct.opa_pma_mad* %58 to %struct.ib_mad_hdr*
  %60 = call i32 @reply(%struct.ib_mad_hdr* %59)
  store i32 %60, i32* %5, align 4
  br label %220

61:                                               ; preds = %47
  store i64 16, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ugt i64 %62, 8
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %66 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %67 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %72 = bitcast %struct.opa_pma_mad* %71 to %struct.ib_mad_hdr*
  %73 = call i32 @reply(%struct.ib_mad_hdr* %72)
  store i32 %73, i32* %5, align 4
  br label %220

74:                                               ; preds = %61
  %75 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %12, align 8
  %76 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be64_to_cpu(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = bitcast i32* %14 to i64*
  %82 = call i32 @find_first_bit(i64* %81, i32 32)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %88 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %89 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %94 = bitcast %struct.opa_pma_mad* %93 to %struct.ib_mad_hdr*
  %95 = call i32 @reply(%struct.ib_mad_hdr* %94)
  store i32 %95, i32* %5, align 4
  br label %220

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  %98 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %99 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %105 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %108 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %113 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = call i32 @memcpy(i32* %111, i32* %114, i32 4)
  %116 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %117 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %122 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = call i32 @memcpy(i32* %120, i32* %123, i32 4)
  %125 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %126 = load i32, i32* @RCV_ERR_INFO, align 4
  %127 = call i32 @read_csr(%struct.hfi1_devdata* %125, i32 %126)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %96
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* @RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SC_SMASK, align 4
  %135 = load i32, i32* %19, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = shl i32 %137, 2
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %141 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %144 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, 128
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %132, %96
  %149 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %150 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %154 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %157 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_be16(i32 %159)
  %161 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %162 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %165 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @cpu_to_be32(i32 %167)
  %169 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %170 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  %172 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %173 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %177 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  %179 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %180 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @cpu_to_be16(i32 %182)
  %184 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %185 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  store i8* %183, i8** %186, align 8
  %187 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %188 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @cpu_to_be32(i32 %190)
  %192 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %193 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %196 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %199 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %202 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct._port_ei*, %struct._port_ei** %11, align 8
  %205 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %148
  %210 = load i64, i64* %10, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 %213, %210
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %211, align 4
  br label %216

216:                                              ; preds = %209, %148
  %217 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %218 = bitcast %struct.opa_pma_mad* %217 to %struct.ib_mad_hdr*
  %219 = call i32 @reply(%struct.ib_mad_hdr* %218)
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %216, %86, %64, %51
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @memset(%struct._port_ei*, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
