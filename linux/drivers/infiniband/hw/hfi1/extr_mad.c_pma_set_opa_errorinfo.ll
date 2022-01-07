; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_set_opa_errorinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_set_opa_errorinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_pma_mad = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct._port_ei = type { i32 }
%struct.opa_port_error_info_msg = type { i32, i32*, %struct._port_ei* }
%struct.hfi1_devdata = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@ES_PORT_RCV_ERROR_INFO = common dso_local global i32 0, align 4
@OPA_EI_STATUS_SMASK = common dso_local global i32 0, align 4
@ES_EXCESSIVE_BUFFER_OVERRUN_INFO = common dso_local global i32 0, align 4
@RCV_ERR_INFO = common dso_local global i32 0, align 4
@RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK = common dso_local global i32 0, align 4
@ES_PORT_XMIT_CONSTRAINT_ERROR_INFO = common dso_local global i32 0, align 4
@ES_PORT_RCV_CONSTRAINT_ERROR_INFO = common dso_local global i32 0, align 4
@ES_UNCORRECTABLE_ERROR_INFO = common dso_local global i32 0, align 4
@ES_FM_CONFIG_ERROR_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*)* @pma_set_opa_errorinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_opa_errorinfo(%struct.opa_pma_mad* %0, %struct.ib_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.opa_pma_mad*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._port_ei*, align 8
  %11 = alloca %struct.opa_port_error_info_msg*, align 8
  %12 = alloca %struct.hfi1_devdata*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.opa_pma_mad* %0, %struct.opa_pma_mad** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %19 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %18)
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %12, align 8
  %20 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %21 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.opa_port_error_info_msg*
  store %struct.opa_port_error_info_msg* %23, %struct.opa_port_error_info_msg** %11, align 8
  %24 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %11, align 8
  %25 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %24, i32 0, i32 2
  %26 = load %struct._port_ei*, %struct._port_ei** %25, align 8
  %27 = getelementptr inbounds %struct._port_ei, %struct._port_ei* %26, i64 0
  store %struct._port_ei* %27, %struct._port_ei** %10, align 8
  %28 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %29 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 @OPA_AM_NPORT(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %11, align 8
  %35 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = call i32 @hweight64(i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct._port_ei*, %struct._port_ei** %10, align 8
  %42 = call i32 @memset(%struct._port_ei* %41, i32 0, i32 4)
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %4
  %50 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %51 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %52 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %57 = bitcast %struct.opa_pma_mad* %56 to %struct.ib_mad_hdr*
  %58 = call i32 @reply(%struct.ib_mad_hdr* %57)
  store i32 %58, i32* %5, align 4
  br label %171

59:                                               ; preds = %45
  %60 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %11, align 8
  %61 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = bitcast i32* %13 to i64*
  %67 = call i32 @find_first_bit(i64* %66, i32 32)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %73 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %74 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 8
  %78 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %79 = bitcast %struct.opa_pma_mad* %78 to %struct.ib_mad_hdr*
  %80 = call i32 @reply(%struct.ib_mad_hdr* %79)
  store i32 %80, i32* %5, align 4
  br label %171

81:                                               ; preds = %59
  %82 = load %struct.opa_port_error_info_msg*, %struct.opa_port_error_info_msg** %11, align 8
  %83 = getelementptr inbounds %struct.opa_port_error_info_msg, %struct.opa_port_error_info_msg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @be32_to_cpu(i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @ES_PORT_RCV_ERROR_INFO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %94 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %81
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @ES_EXCESSIVE_BUFFER_OVERRUN_INFO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %105 = load i32, i32* @RCV_ERR_INFO, align 4
  %106 = load i32, i32* @RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK, align 4
  %107 = call i32 @write_csr(%struct.hfi1_devdata* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @ES_PORT_XMIT_CONSTRAINT_ERROR_INFO, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @ES_PORT_RCV_CONSTRAINT_ERROR_INFO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %130 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %126, %121
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @ES_UNCORRECTABLE_ERROR_INFO, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %143 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @ES_FM_CONFIG_ERROR_INFO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %155 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32*, i32** %9, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, 24
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  br label %167

167:                                              ; preds = %161, %158
  %168 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %6, align 8
  %169 = bitcast %struct.opa_pma_mad* %168 to %struct.ib_mad_hdr*
  %170 = call i32 @reply(%struct.ib_mad_hdr* %169)
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %71, %49
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @memset(%struct._port_ei*, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
