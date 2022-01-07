; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_ipi_mbox = type { %struct.zynqmp_ipi_mchan*, %struct.mbox_controller, i32, %struct.device, %struct.TYPE_2__* }
%struct.zynqmp_ipi_mchan = type { i32, i32, i64, i8*, i8*, i8* }
%struct.mbox_controller = type { i32, i32, i32, i32, %struct.mbox_chan*, i32, i32*, %struct.device* }
%struct.mbox_chan = type { %struct.zynqmp_ipi_mchan* }
%struct.device = type { i32*, i32*, %struct.device_node*, %struct.device* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@zynqmp_ipi_mbox_dev_release = common dso_local global i32* null, align 8
@zynqmp_ipi_mbox_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register ipi mbox dev.\0A\00", align 1
@IPI_MB_CHNL_TX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"local_request_region\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to map IPI buffer I/O memory\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unmatched resource %s, %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"remote_response_region\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Unmatched resource %s.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPI_MB_CHNL_RX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"remote_request_region\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"local_response_region\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"xlnx,ipi-id\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"No IPI remote ID is specified.\0A\00", align 1
@zynqmp_ipi_chan_ops = common dso_local global i32 0, align 4
@zynqmp_ipi_of_xlate = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to register mbox_controller(%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Registered ZynqMP IPI mbox with TX/RX channels.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zynqmp_ipi_mbox*, %struct.device_node*)* @zynqmp_ipi_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_ipi_mbox_probe(%struct.zynqmp_ipi_mbox* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  %8 = alloca %struct.mbox_controller*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.zynqmp_ipi_mbox* %0, %struct.zynqmp_ipi_mbox** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %14 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %15 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %21 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 3
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %24 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %28 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 2
  store %struct.device_node* %26, %struct.device_node** %29, align 8
  %30 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %31 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %30, i32 0, i32 3
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_full_name(%struct.device_node* %32)
  %34 = call i32 @dev_set_name(%struct.device* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %36 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %35, i32 0, i32 3
  %37 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %38 = call i32 @dev_set_drvdata(%struct.device* %36, %struct.zynqmp_ipi_mbox* %37)
  %39 = load i32*, i32** @zynqmp_ipi_mbox_dev_release, align 8
  %40 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %41 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 1
  store i32* %39, i32** %42, align 8
  %43 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %44 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  store i32* @zynqmp_ipi_mbox_driver, i32** %45, align 8
  %46 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %47 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %46, i32 0, i32 3
  %48 = call i32 @device_register(%struct.device* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %3, align 4
  br label %375

55:                                               ; preds = %2
  %56 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %57 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %56, i32 0, i32 3
  store %struct.device* %57, %struct.device** %11, align 8
  %58 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %59 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %58, i32 0, i32 0
  %60 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %59, align 8
  %61 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %62 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %60, i64 %61
  store %struct.zynqmp_ipi_mchan* %62, %struct.zynqmp_ipi_mchan** %6, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @zynqmp_ipi_mbox_get_buf_res(%struct.device_node* %63, i8* %64, %struct.resource* %9)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %55
  %69 = call i8* @resource_size(%struct.resource* %9)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %72 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.device*, %struct.device** %11, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %77 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @devm_ioremap(%struct.device* %73, i32 %75, i32 %78)
  %80 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %81 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %83 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %91 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %375

95:                                               ; preds = %68
  br label %108

96:                                               ; preds = %55
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %3, align 4
  br label %375

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %95
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @zynqmp_ipi_mbox_get_buf_res(%struct.device_node* %109, i8* %110, %struct.resource* %9)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %108
  %115 = call i8* @resource_size(%struct.resource* %9)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %118 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.device*, %struct.device** %11, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %123 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @devm_ioremap(%struct.device* %119, i32 %121, i32 %124)
  %126 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %127 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %129 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @IS_ERR(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %114
  %134 = load %struct.device*, %struct.device** %11, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %137 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @PTR_ERR(i8* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %3, align 4
  br label %375

141:                                              ; preds = %114
  br label %153

142:                                              ; preds = %108
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.device*, %struct.device** %11, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %3, align 4
  br label %375

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %141
  %154 = load %struct.device*, %struct.device** %11, align 8
  %155 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %156 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call i8* @devm_kzalloc(%struct.device* %154, i32 %160, i32 %161)
  %163 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %164 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %166 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %153
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %375

172:                                              ; preds = %153
  %173 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %174 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %173, i32 0, i32 0
  %175 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %174, align 8
  %176 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %177 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %175, i64 %176
  store %struct.zynqmp_ipi_mchan* %177, %struct.zynqmp_ipi_mchan** %6, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  %178 = load %struct.device_node*, %struct.device_node** %5, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @zynqmp_ipi_mbox_get_buf_res(%struct.device_node* %178, i8* %179, %struct.resource* %9)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %211, label %183

183:                                              ; preds = %172
  %184 = call i8* @resource_size(%struct.resource* %9)
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %187 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.device*, %struct.device** %11, align 8
  %189 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %192 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @devm_ioremap(%struct.device* %188, i32 %190, i32 %193)
  %195 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %196 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %198 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %197, i32 0, i32 5
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @IS_ERR(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %183
  %203 = load %struct.device*, %struct.device** %11, align 8
  %204 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %205 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %206 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %205, i32 0, i32 5
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @PTR_ERR(i8* %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  store i32 %209, i32* %3, align 4
  br label %375

210:                                              ; preds = %183
  br label %222

211:                                              ; preds = %172
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @ENODEV, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %11, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %218)
  %220 = load i32, i32* %13, align 4
  store i32 %220, i32* %3, align 4
  br label %375

221:                                              ; preds = %211
  br label %222

222:                                              ; preds = %221, %210
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  %223 = load %struct.device_node*, %struct.device_node** %5, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @zynqmp_ipi_mbox_get_buf_res(%struct.device_node* %223, i8* %224, %struct.resource* %9)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %256, label %228

228:                                              ; preds = %222
  %229 = call i8* @resource_size(%struct.resource* %9)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %232 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.device*, %struct.device** %11, align 8
  %234 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %237 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @devm_ioremap(%struct.device* %233, i32 %235, i32 %238)
  %240 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %241 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %240, i32 0, i32 4
  store i8* %239, i8** %241, align 8
  %242 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %243 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %242, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = call i64 @IS_ERR(i8* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %228
  %248 = load %struct.device*, %struct.device** %11, align 8
  %249 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %250 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %251 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @PTR_ERR(i8* %252)
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %3, align 4
  br label %375

255:                                              ; preds = %228
  br label %267

256:                                              ; preds = %222
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* @ENODEV, align 4
  %259 = sub nsw i32 0, %258
  %260 = icmp ne i32 %257, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.device*, %struct.device** %11, align 8
  %263 = load i8*, i8** %12, align 8
  %264 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %263)
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %3, align 4
  br label %375

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266, %255
  %268 = load %struct.device*, %struct.device** %11, align 8
  %269 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %270 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = load i32, i32* @GFP_KERNEL, align 4
  %276 = call i8* @devm_kzalloc(%struct.device* %268, i32 %274, i32 %275)
  %277 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %278 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %277, i32 0, i32 3
  store i8* %276, i8** %278, align 8
  %279 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %280 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %279, i32 0, i32 3
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %267
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %3, align 4
  br label %375

286:                                              ; preds = %267
  %287 = load %struct.device_node*, %struct.device_node** %5, align 8
  %288 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %289 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %288, i32 0, i32 2
  %290 = call i32 @of_property_read_u32(%struct.device_node* %287, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %286
  %294 = load %struct.device*, %struct.device** %10, align 8
  %295 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %296 = load i32, i32* %13, align 4
  store i32 %296, i32* %3, align 4
  br label %375

297:                                              ; preds = %286
  %298 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %299 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %298, i32 0, i32 1
  store %struct.mbox_controller* %299, %struct.mbox_controller** %8, align 8
  %300 = load %struct.device*, %struct.device** %11, align 8
  %301 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %302 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %301, i32 0, i32 7
  store %struct.device* %300, %struct.device** %302, align 8
  %303 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %304 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %303, i32 0, i32 6
  store i32* @zynqmp_ipi_chan_ops, i32** %304, align 8
  %305 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %306 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %305, i32 0, i32 0
  store i32 2, i32* %306, align 8
  %307 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %308 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %307, i32 0, i32 1
  store i32 0, i32* %308, align 4
  %309 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %310 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %309, i32 0, i32 2
  store i32 1, i32* %310, align 8
  %311 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %312 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %311, i32 0, i32 3
  store i32 5, i32* %312, align 4
  %313 = load i32, i32* @zynqmp_ipi_of_xlate, align 4
  %314 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %315 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %314, i32 0, i32 5
  store i32 %313, i32* %315, align 8
  %316 = load %struct.device*, %struct.device** %11, align 8
  %317 = load i32, i32* @GFP_KERNEL, align 4
  %318 = call i8* @devm_kzalloc(%struct.device* %316, i32 16, i32 %317)
  %319 = bitcast i8* %318 to %struct.mbox_chan*
  store %struct.mbox_chan* %319, %struct.mbox_chan** %7, align 8
  %320 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %321 = icmp ne %struct.mbox_chan* %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %297
  %323 = load i32, i32* @ENOMEM, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %3, align 4
  br label %375

325:                                              ; preds = %297
  %326 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %327 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %328 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %327, i32 0, i32 4
  store %struct.mbox_chan* %326, %struct.mbox_chan** %328, align 8
  %329 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %330 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %329, i32 0, i32 0
  %331 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %330, align 8
  %332 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %333 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %331, i64 %332
  %334 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %335 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %336 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %334, i64 %335
  %337 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %336, i32 0, i32 0
  store %struct.zynqmp_ipi_mchan* %333, %struct.zynqmp_ipi_mchan** %337, align 8
  %338 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %339 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %338, i32 0, i32 0
  %340 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %339, align 8
  %341 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %342 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %340, i64 %341
  %343 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %344 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %345 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %343, i64 %344
  %346 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %345, i32 0, i32 0
  store %struct.zynqmp_ipi_mchan* %342, %struct.zynqmp_ipi_mchan** %346, align 8
  %347 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %348 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %349 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %348, i32 0, i32 0
  %350 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %349, align 8
  %351 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %352 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %350, i64 %351
  %353 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %352, i32 0, i32 2
  store i64 %347, i64* %353, align 8
  %354 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %355 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %356 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %355, i32 0, i32 0
  %357 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %356, align 8
  %358 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %359 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %357, i64 %358
  %360 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %359, i32 0, i32 2
  store i64 %354, i64* %360, align 8
  %361 = load %struct.device*, %struct.device** %11, align 8
  %362 = load %struct.mbox_controller*, %struct.mbox_controller** %8, align 8
  %363 = call i32 @devm_mbox_controller_register(%struct.device* %361, %struct.mbox_controller* %362)
  store i32 %363, i32* %13, align 4
  %364 = load i32, i32* %13, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %325
  %367 = load %struct.device*, %struct.device** %11, align 8
  %368 = load i32, i32* %13, align 4
  %369 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %367, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %368)
  br label %373

370:                                              ; preds = %325
  %371 = load %struct.device*, %struct.device** %11, align 8
  %372 = call i32 @dev_info(%struct.device* %371, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %373

373:                                              ; preds = %370, %366
  %374 = load i32, i32* %13, align 4
  store i32 %374, i32* %3, align 4
  br label %375

375:                                              ; preds = %373, %322, %293, %283, %261, %247, %216, %202, %169, %147, %133, %101, %87, %51
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_node_full_name(%struct.device_node*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.zynqmp_ipi_mbox*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @zynqmp_ipi_mbox_get_buf_res(%struct.device_node*, i8*, %struct.resource*) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.mbox_controller*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
