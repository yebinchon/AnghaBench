; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.ti_msgmgr_desc* }
%struct.ti_msgmgr_desc = type { i32, i32, i32, i64, %struct.ti_msgmgr_valid_queue_desc*, i64, i32, i32, i32 }
%struct.ti_msgmgr_valid_queue_desc = type { i32, i64 }
%struct.resource = type { i32 }
%struct.ti_msgmgr_inst = type { i32, %struct.mbox_chan*, %struct.mbox_controller, %struct.ti_queue_inst*, i8*, i8*, i8*, %struct.ti_msgmgr_desc*, %struct.device* }
%struct.mbox_chan = type { i32 }
%struct.mbox_controller = type { i32, i32, i32, i32, i64, %struct.mbox_chan*, i32*, %struct.device* }
%struct.ti_queue_inst = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no OF information\0A\00", align 1
@ti_msgmgr_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OF data missing\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"proxy region=%p, queue_state=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid Number of queues %d. Max %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@ti_msgmgr_chan_ops = common dso_local global i32 0, align 4
@ti_msgmgr_of_xlate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to register mbox_controller(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_msgmgr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_msgmgr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.ti_msgmgr_desc*, align 8
  %9 = alloca %struct.ti_msgmgr_inst*, align 8
  %10 = alloca %struct.ti_queue_inst*, align 8
  %11 = alloca %struct.mbox_controller*, align 8
  %12 = alloca %struct.mbox_chan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ti_msgmgr_valid_queue_desc*, align 8
  %17 = alloca %struct.ti_msgmgr_valid_queue_desc, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %4, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %15, align 4
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %316

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.device_node*, %struct.device_node** %33, align 8
  store %struct.device_node* %34, %struct.device_node** %6, align 8
  %35 = load i32, i32* @ti_msgmgr_of_match, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call %struct.of_device_id* @of_match_device(i32 %35, %struct.device* %36)
  store %struct.of_device_id* %37, %struct.of_device_id** %5, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %39 = icmp ne %struct.of_device_id* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %316

45:                                               ; preds = %31
  %46 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %46, i32 0, i32 0
  %48 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %47, align 8
  store %struct.ti_msgmgr_desc* %48, %struct.ti_msgmgr_desc** %8, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.ti_msgmgr_inst* @devm_kzalloc(%struct.device* %49, i32 112, i32 %50)
  store %struct.ti_msgmgr_inst* %51, %struct.ti_msgmgr_inst** %9, align 8
  %52 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %53 = icmp ne %struct.ti_msgmgr_inst* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %316

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %60 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %59, i32 0, i32 8
  store %struct.device* %58, %struct.device** %60, align 8
  %61 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %62 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %63 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %62, i32 0, i32 7
  store %struct.ti_msgmgr_desc* %61, %struct.ti_msgmgr_desc** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %67 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %64, i32 %65, i32 %68)
  store %struct.resource* %69, %struct.resource** %7, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.resource*, %struct.resource** %7, align 8
  %72 = call i8* @devm_ioremap_resource(%struct.device* %70, %struct.resource* %71)
  %73 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %74 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %76 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %57
  %81 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %82 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %316

85:                                               ; preds = %57
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_MEM, align 4
  %88 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %89 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %86, i32 %87, i32 %90)
  store %struct.resource* %91, %struct.resource** %7, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.resource*, %struct.resource** %7, align 8
  %94 = call i8* @devm_ioremap_resource(%struct.device* %92, %struct.resource* %93)
  %95 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %96 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %98 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %104 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %2, align 4
  br label %316

107:                                              ; preds = %85
  %108 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %109 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load i32, i32* @IORESOURCE_MEM, align 4
  %115 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %116 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %113, i32 %114, i32 %117)
  store %struct.resource* %118, %struct.resource** %7, align 8
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load %struct.resource*, %struct.resource** %7, align 8
  %121 = call i8* @devm_ioremap_resource(%struct.device* %119, %struct.resource* %120)
  %122 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %123 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %125 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %124, i32 0, i32 6
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %112
  %130 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %131 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %130, i32 0, i32 6
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @PTR_ERR(i8* %132)
  store i32 %133, i32* %2, align 4
  br label %316

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %138 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %141 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %139, i8* %142)
  %144 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %145 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %135
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %152 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149, %135
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %159 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dev_crit(%struct.device* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load i32, i32* @ERANGE, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %316

164:                                              ; preds = %149
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %167 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @devm_kcalloc(%struct.device* %168, i32 %169, i32 4, i32 %170)
  %172 = bitcast i8* %171 to %struct.ti_queue_inst*
  store %struct.ti_queue_inst* %172, %struct.ti_queue_inst** %10, align 8
  %173 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %174 = icmp ne %struct.ti_queue_inst* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %164
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %316

178:                                              ; preds = %164
  %179 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %180 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %181 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %180, i32 0, i32 3
  store %struct.ti_queue_inst* %179, %struct.ti_queue_inst** %181, align 8
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i8* @devm_kcalloc(%struct.device* %182, i32 %183, i32 4, i32 %184)
  %186 = bitcast i8* %185 to %struct.mbox_chan*
  store %struct.mbox_chan* %186, %struct.mbox_chan** %12, align 8
  %187 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %188 = icmp ne %struct.mbox_chan* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %178
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %316

192:                                              ; preds = %178
  %193 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %194 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %195 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %194, i32 0, i32 1
  store %struct.mbox_chan* %193, %struct.mbox_chan** %195, align 8
  %196 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %197 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %192
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %222, %200
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %229

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, %struct.ti_msgmgr_valid_queue_desc* %17, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* %14, align 4
  %208 = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, %struct.ti_msgmgr_valid_queue_desc* %17, i32 0, i32 0
  store i32 %207, i32* %208, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load %struct.device_node*, %struct.device_node** %6, align 8
  %212 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %213 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %214 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %215 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %216 = call i32 @ti_msgmgr_queue_setup(i32 %209, %struct.device* %210, %struct.device_node* %211, %struct.ti_msgmgr_inst* %212, %struct.ti_msgmgr_desc* %213, %struct.ti_msgmgr_valid_queue_desc* %17, %struct.ti_queue_inst* %214, %struct.mbox_chan* %215)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = load i32, i32* %15, align 4
  store i32 %220, i32* %2, align 4
  br label %316

221:                                              ; preds = %205
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  %225 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %226 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %225, i32 1
  store %struct.ti_queue_inst* %226, %struct.ti_queue_inst** %10, align 8
  %227 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %228 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %227, i32 1
  store %struct.mbox_chan* %228, %struct.mbox_chan** %12, align 8
  br label %201

229:                                              ; preds = %201
  br label %263

230:                                              ; preds = %192
  store i32 0, i32* %14, align 4
  %231 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %232 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %231, i32 0, i32 4
  %233 = load %struct.ti_msgmgr_valid_queue_desc*, %struct.ti_msgmgr_valid_queue_desc** %232, align 8
  store %struct.ti_msgmgr_valid_queue_desc* %233, %struct.ti_msgmgr_valid_queue_desc** %16, align 8
  br label %234

234:                                              ; preds = %253, %230
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %262

238:                                              ; preds = %234
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.device*, %struct.device** %4, align 8
  %241 = load %struct.device_node*, %struct.device_node** %6, align 8
  %242 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %243 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %244 = load %struct.ti_msgmgr_valid_queue_desc*, %struct.ti_msgmgr_valid_queue_desc** %16, align 8
  %245 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %246 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %247 = call i32 @ti_msgmgr_queue_setup(i32 %239, %struct.device* %240, %struct.device_node* %241, %struct.ti_msgmgr_inst* %242, %struct.ti_msgmgr_desc* %243, %struct.ti_msgmgr_valid_queue_desc* %244, %struct.ti_queue_inst* %245, %struct.mbox_chan* %246)
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %2, align 4
  br label %316

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  %257 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %256, i32 1
  store %struct.ti_queue_inst* %257, %struct.ti_queue_inst** %10, align 8
  %258 = load %struct.mbox_chan*, %struct.mbox_chan** %12, align 8
  %259 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %258, i32 1
  store %struct.mbox_chan* %259, %struct.mbox_chan** %12, align 8
  %260 = load %struct.ti_msgmgr_valid_queue_desc*, %struct.ti_msgmgr_valid_queue_desc** %16, align 8
  %261 = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, %struct.ti_msgmgr_valid_queue_desc* %260, i32 1
  store %struct.ti_msgmgr_valid_queue_desc* %261, %struct.ti_msgmgr_valid_queue_desc** %16, align 8
  br label %234

262:                                              ; preds = %234
  br label %263

263:                                              ; preds = %262, %229
  %264 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %265 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %264, i32 0, i32 2
  store %struct.mbox_controller* %265, %struct.mbox_controller** %11, align 8
  %266 = load %struct.device*, %struct.device** %4, align 8
  %267 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %268 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %267, i32 0, i32 7
  store %struct.device* %266, %struct.device** %268, align 8
  %269 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %270 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %269, i32 0, i32 6
  store i32* @ti_msgmgr_chan_ops, i32** %270, align 8
  %271 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %272 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %271, i32 0, i32 1
  %273 = load %struct.mbox_chan*, %struct.mbox_chan** %272, align 8
  %274 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %275 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %274, i32 0, i32 5
  store %struct.mbox_chan* %273, %struct.mbox_chan** %275, align 8
  %276 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %277 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %280 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %282 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %281, i32 0, i32 1
  store i32 0, i32* %282, align 4
  %283 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %284 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %287 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %286, i32 0, i32 4
  store i64 %285, i64* %287, align 8
  %288 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %289 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %263
  %293 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %8, align 8
  %294 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %297 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %292, %263
  %299 = load i32, i32* @ti_msgmgr_of_xlate, align 4
  %300 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %301 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %9, align 8
  %304 = call i32 @platform_set_drvdata(%struct.platform_device* %302, %struct.ti_msgmgr_inst* %303)
  %305 = load %struct.device*, %struct.device** %4, align 8
  %306 = load %struct.mbox_controller*, %struct.mbox_controller** %11, align 8
  %307 = call i32 @devm_mbox_controller_register(%struct.device* %305, %struct.mbox_controller* %306)
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %298
  %311 = load %struct.device*, %struct.device** %4, align 8
  %312 = load i32, i32* %15, align 4
  %313 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %311, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %310, %298
  %315 = load i32, i32* %15, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %314, %250, %219, %189, %175, %155, %129, %102, %80, %54, %40, %26
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ti_msgmgr_inst* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*) #1

declare dso_local i32 @dev_crit(%struct.device*, i8*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ti_msgmgr_queue_setup(i32, %struct.device*, %struct.device_node*, %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_valid_queue_desc*, %struct.ti_queue_inst*, %struct.mbox_chan*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_msgmgr_inst*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.mbox_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
