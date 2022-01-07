; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_goto_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_goto_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, %struct.hfi1_devdata* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hfi1_devdata = type { i32 }

@HLS_GOING_OFFLINE = common dso_local global i32 0, align 4
@PLS_OFFLINE = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to transition to Offline link state, return %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPA_LINKDOWN_REASON_NONE = common dso_local global i32 0, align 4
@OPA_LINKDOWN_REASON_TRANSIENT = common dso_local global i32 0, align 4
@PORT_TYPE_QSFP = common dso_local global i64 0, align 8
@QSFP_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to acquire lock to turn off QSFP TX\0A\00", align 1
@PLS_OFFLINE_QUIET = common dso_local global i32 0, align 4
@DC_LCB_ERR_EN = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@HLS_LINK_COOLDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"After going offline, timed out waiting for the 8051 to become ready to accept host requests\0A\00", align 1
@HLS_DN_OFFLINE = common dso_local global i8* null, align 8
@HLS_UP = common dso_local global i32 0, align 4
@HLS_DN_POLL = common dso_local global i32 0, align 4
@HLS_VERIFY_CAP = common dso_local global i32 0, align 4
@HLS_GOING_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i32)* @goto_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goto_offline(%struct.hfi1_pportdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %12 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %11, i32 0, i32 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %6, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %15 = call i32 @update_lcb_cache(%struct.hfi1_devdata* %14)
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @HLS_GOING_OFFLINE, align 4
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* @PLS_OFFLINE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @set_physical_link_state(%struct.hfi1_devdata* %22, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HCMD_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %174

37:                                               ; preds = %2
  %38 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %39 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @OPA_LINKDOWN_REASON_NONE, align 4
  %42 = call i64 @HFI1_ODR_MASK(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @OPA_LINKDOWN_REASON_TRANSIENT, align 4
  %46 = call i64 @HFI1_ODR_MASK(i32 %45)
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %51 = call i32 @wait_phys_link_offline_substates(%struct.hfi1_pportdata* %50, i32 10000)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %174

56:                                               ; preds = %49
  %57 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %58 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PORT_TYPE_QSFP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %56
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %70 = call i64 @qsfp_mod_present(%struct.hfi1_pportdata* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %75 = call i32 @qsfp_resource(%struct.hfi1_devdata* %74)
  %76 = load i32, i32* @QSFP_WAIT, align 4
  %77 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %73, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %82 = call i32 @set_qsfp_tx(%struct.hfi1_pportdata* %81, i32 0)
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %84 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %85 = call i32 @qsfp_resource(%struct.hfi1_devdata* %84)
  %86 = call i32 @release_chip_resource(%struct.hfi1_devdata* %83, i32 %85)
  br label %90

87:                                               ; preds = %72
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %89 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %68, %62, %56
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @PLS_OFFLINE_QUIET, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %97 = load i32, i32* @PLS_OFFLINE, align 4
  %98 = call i32 @wait_physical_linkstate(%struct.hfi1_pportdata* %96, i32 %97, i32 30000)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %174

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %106 = call i32 @set_host_lcb_access(%struct.hfi1_devdata* %105)
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %108 = load i32, i32* @DC_LCB_ERR_EN, align 4
  %109 = call i32 @write_csr(%struct.hfi1_devdata* %107, i32 %108, i64 -1)
  %110 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %111 = load i32, i32* @IB_PORT_DOWN, align 4
  %112 = call i32 @wait_logical_linkstate(%struct.hfi1_pportdata* %110, i32 %111, i32 1000)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %117 = call i32 @force_logical_link_state_down(%struct.hfi1_pportdata* %116)
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i32, i32* @HLS_LINK_COOLDOWN, align 4
  %120 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %121 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %123 = load i32, i32* @IB_PORT_DOWN, align 4
  %124 = call i32 @update_statusp(%struct.hfi1_pportdata* %122, i32 %123)
  %125 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %126 = call i32 @wait_fm_ready(%struct.hfi1_devdata* %125, i32 7000)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %131 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %130, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i8*, i8** @HLS_DN_OFFLINE, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %135 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %174

137:                                              ; preds = %118
  %138 = load i8*, i8** @HLS_DN_OFFLINE, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %141 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @HLS_UP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %148 = call i32 @handle_linkup_change(%struct.hfi1_devdata* %147, i32 0)
  br label %165

149:                                              ; preds = %137
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @HLS_DN_POLL, align 4
  %152 = load i32, i32* @HLS_VERIFY_CAP, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @HLS_GOING_UP, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %150, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %160 = call i32 @check_lni_states(%struct.hfi1_pportdata* %159)
  %161 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %162 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %158, %149
  br label %165

165:                                              ; preds = %164, %146
  %166 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %167 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %166, i32 0, i32 6
  store i64 0, i64* %167, align 8
  %168 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %169 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %171 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %173 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %165, %129, %101, %54, %31
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @update_lcb_cache(%struct.hfi1_devdata*) #1

declare dso_local i32 @set_physical_link_state(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i64 @HFI1_ODR_MASK(i32) #1

declare dso_local i32 @wait_phys_link_offline_substates(%struct.hfi1_pportdata*, i32) #1

declare dso_local i64 @qsfp_mod_present(%struct.hfi1_pportdata*) #1

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @qsfp_resource(%struct.hfi1_devdata*) #1

declare dso_local i32 @set_qsfp_tx(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @wait_physical_linkstate(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @set_host_lcb_access(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i32 @wait_logical_linkstate(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @force_logical_link_state_down(%struct.hfi1_pportdata*) #1

declare dso_local i32 @update_statusp(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @wait_fm_ready(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @handle_linkup_change(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @check_lni_states(%struct.hfi1_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
