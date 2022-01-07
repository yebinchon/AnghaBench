; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_mbox_chan_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_mbox_chan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_info = type { i32, i32, %struct.idr, %struct.idr }
%struct.idr = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.scmi_chan_info = type { i32*, i32, i32, %struct.mbox_client, %struct.device* }
%struct.mbox_client = type { i32, i32, i32*, i32, %struct.device* }

@.str = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@SCMI_PROTOCOL_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scmi_rx_callback = common dso_local global i32 0, align 4
@scmi_tx_prepare = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"shmem\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to get SCMI %s payload memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to ioremap SCMI %s payload\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to request SCMI %s mailbox\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"unable to allocate SCMI idr slot err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_info*, %struct.device*, i32, i32)* @scmi_mbox_chan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_mbox_chan_setup(%struct.scmi_info* %0, %struct.device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca %struct.device_node*, align 8
  %16 = alloca %struct.scmi_chan_info*, align 8
  %17 = alloca %struct.mbox_client*, align 8
  %18 = alloca %struct.idr*, align 8
  %19 = alloca i8*, align 8
  store %struct.scmi_info* %0, %struct.scmi_info** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %19, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.scmi_info*, %struct.scmi_info** %6, align 8
  %35 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %34, i32 0, i32 3
  br label %39

36:                                               ; preds = %4
  %37 = load %struct.scmi_info*, %struct.scmi_info** %6, align 8
  %38 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %37, i32 0, i32 2
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi %struct.idr* [ %35, %33 ], [ %38, %36 ]
  store %struct.idr* %40, %struct.idr** %18, align 8
  %41 = load %struct.device_node*, %struct.device_node** %15, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @scmi_mailbox_check(%struct.device_node* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.idr*, %struct.idr** %18, align 8
  %47 = load i32, i32* @SCMI_PROTOCOL_BASE, align 4
  %48 = call %struct.scmi_chan_info* @idr_find(%struct.idr* %46, i32 %47)
  store %struct.scmi_chan_info* %48, %struct.scmi_chan_info** %16, align 8
  %49 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %50 = icmp ne %struct.scmi_chan_info* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %179

58:                                               ; preds = %45
  br label %158

59:                                               ; preds = %39
  %60 = load %struct.scmi_info*, %struct.scmi_info** %6, align 8
  %61 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.scmi_chan_info* @devm_kzalloc(i32 %62, i32 56, i32 %63)
  store %struct.scmi_chan_info* %64, %struct.scmi_chan_info** %16, align 8
  %65 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %66 = icmp ne %struct.scmi_chan_info* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %179

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %73 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %72, i32 0, i32 4
  store %struct.device* %71, %struct.device** %73, align 8
  %74 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %75 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %74, i32 0, i32 3
  store %struct.mbox_client* %75, %struct.mbox_client** %17, align 8
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %78 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %77, i32 0, i32 4
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load i32, i32* @scmi_rx_callback, align 4
  %80 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %81 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32*, i32** @scmi_tx_prepare, align 8
  br label %87

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32* [ %85, %84 ], [ null, %86 ]
  %89 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %90 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  %91 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %92 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %95 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.device_node*, %struct.device_node** %15, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  store %struct.device_node* %98, %struct.device_node** %14, align 8
  %99 = load %struct.device_node*, %struct.device_node** %14, align 8
  %100 = call i32 @of_address_to_resource(%struct.device_node* %99, i32 0, %struct.resource* %12)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.device_node*, %struct.device_node** %14, align 8
  %102 = call i32 @of_node_put(%struct.device_node* %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %87
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %179

110:                                              ; preds = %87
  %111 = call i32 @resource_size(%struct.resource* %12)
  store i32 %111, i32* %13, align 4
  %112 = load %struct.scmi_info*, %struct.scmi_info** %6, align 8
  %113 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @devm_ioremap(i32 %114, i32 %116, i32 %117)
  %119 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %120 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %122 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %110
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* @EADDRNOTAVAIL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %179

131:                                              ; preds = %110
  %132 = load %struct.mbox_client*, %struct.mbox_client** %17, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @mbox_request_channel(%struct.mbox_client* %132, i32 %133)
  %135 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %136 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %138 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %131
  %143 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %144 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @PTR_ERR(i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @EPROBE_DEFER, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.device*, %struct.device** %7, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %151, %142
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %5, align 4
  br label %179

157:                                              ; preds = %131
  br label %158

158:                                              ; preds = %157, %58
  %159 = load %struct.idr*, %struct.idr** %18, align 8
  %160 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i32 @idr_alloc(%struct.idr* %159, %struct.scmi_chan_info* %160, i32 %161, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %158
  %170 = load %struct.device*, %struct.device** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %5, align 4
  br label %179

174:                                              ; preds = %158
  %175 = load %struct.scmi_info*, %struct.scmi_info** %6, align 8
  %176 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %175, i32 0, i32 0
  %177 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %16, align 8
  %178 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %177, i32 0, i32 0
  store i32* %176, i32** %178, align 8
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %174, %169, %155, %125, %105, %67, %55
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i64 @scmi_mailbox_check(%struct.device_node*, i32) #1

declare dso_local %struct.scmi_chan_info* @idr_find(%struct.idr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.scmi_chan_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap(i32, i32, i32) #1

declare dso_local i32 @mbox_request_channel(%struct.mbox_client*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @idr_alloc(%struct.idr*, %struct.scmi_chan_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
