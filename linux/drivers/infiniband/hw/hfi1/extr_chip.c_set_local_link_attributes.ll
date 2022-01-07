; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_local_link_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_local_link_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OPA_LINK_SPEED_25G = common dso_local global i32 0, align 4
@OPA_LINK_SPEED_12_5G = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@HOST_INTERFACE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to set host interface version, return 0x%x\0A\00", align 1
@loopback = common dso_local global i64 0, align 8
@LOOPBACK_SERDES = common dso_local global i64 0, align 8
@LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT = common dso_local global i32 0, align 4
@EXT_CFG_LCB_RESET_SUPPORTED_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to set local link attributes, return 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*)* @set_local_link_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_local_link_attributes(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  %10 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %10, i32 0, i32 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %14 = call i32 @fabric_serdes_reset(%struct.hfi1_devdata* %13)
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 0
  %18 = call i32 @read_tx_settings(%struct.hfi1_devdata* %15, i32* %5, i32* %6, i32* %7, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %167

22:                                               ; preds = %1
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @dc8051_ver(i32 0, i32 20, i32 0)
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OPA_LINK_SPEED_25G, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %69

42:                                               ; preds = %22
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OPA_LINK_SPEED_25G, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %53 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, 2
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OPA_LINK_SPEED_12_5G, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %65 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %41
  store i32 15, i32* %5, align 4
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %75 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @write_tx_settings(%struct.hfi1_devdata* %70, i32 %71, i32 %72, i32 %73, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @HCMD_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %167

82:                                               ; preds = %69
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %84 = load i32, i32* @HOST_INTERFACE_VERSION, align 4
  %85 = call i32 @write_host_interface_version(%struct.hfi1_devdata* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HCMD_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dd_dev_err(%struct.hfi1_devdata* %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %167

93:                                               ; preds = %82
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %95 = call i32 @write_vc_local_phy(%struct.hfi1_devdata* %94, i32 0, i32 1)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @HCMD_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %167

100:                                              ; preds = %93
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %103 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %106 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %109 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %112 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @write_vc_local_fabric(%struct.hfi1_devdata* %101, i32 %104, i32 1, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @HCMD_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  br label %167

119:                                              ; preds = %100
  %120 = load i64, i64* @loopback, align 8
  %121 = load i64, i64* @LOOPBACK_SERDES, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* @LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT, align 4
  %125 = shl i32 1, %124
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %123, %119
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %130 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @dc8051_ver(i32 1, i32 25, i32 0)
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* @EXT_CFG_LCB_RESET_SUPPORTED_SHIFT, align 4
  %136 = shl i32 1, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %143 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @opa_to_vc_link_widths(i32 %144)
  %146 = call i32 @write_vc_local_link_mode(%struct.hfi1_devdata* %140, i32 %141, i32 0, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @HCMD_SUCCESS, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %167

151:                                              ; preds = %139
  %152 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %153 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %154 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %159 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @write_local_device_id(%struct.hfi1_devdata* %152, i32 %157, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @HCMD_SUCCESS, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %172

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166, %150, %118, %99, %89, %81, %21
  %168 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @dd_dev_err(%struct.hfi1_devdata* %168, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %167, %165
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @fabric_serdes_reset(%struct.hfi1_devdata*) #1

declare dso_local i32 @read_tx_settings(%struct.hfi1_devdata*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @dc8051_ver(i32, i32, i32) #1

declare dso_local i32 @write_tx_settings(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @write_host_interface_version(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @write_vc_local_phy(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @write_vc_local_fabric(%struct.hfi1_devdata*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_vc_local_link_mode(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @opa_to_vc_link_widths(i32) #1

declare dso_local i32 @write_local_device_id(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
