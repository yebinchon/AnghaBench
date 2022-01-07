; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i64*, %struct.TYPE_9__*, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.hns_roce_hw* }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64*, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hns_roce_hw = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.acpi_device_id = type { i64 }
%struct.fwnode_reference_args = type { i32 }

@hns_roce_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"device is not compatible!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"couldn't get H/W specific DT data!\0A\00", align 1
@hns_roce_acpi_match = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"couldn't get H/W specific ACPI data!\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"can't read compatibility data from DT or ACPI\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"node-guid\00", align 1
@GUID_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"couldn't get node_guid from DT or ACPI!\0A\00", align 1
@HNS_ROCE_MAX_PORTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"eth-handle\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"cannot read data from DT or ACPI\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"no netdev found with pdev %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"unable to get eth-handle for available ports!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ROCEE_DB_SQ_L_0_REG = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_L_0_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@HNS_ROCE_V1_MAX_IRQ_NUM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"couldn't get interrupt names from DT or ACPI!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_get_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_get_cfg(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.of_device_id*, align 8
  %13 = alloca %struct.acpi_device_id*, align 8
  %14 = alloca %struct.fwnode_reference_args, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %4, align 8
  store %struct.platform_device* null, %struct.platform_device** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @dev_of_node(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %1
  %23 = load i32, i32* @hns_roce_of_match, align 4
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.of_device_id* @of_match_node(i32 %23, i32 %26)
  store %struct.of_device_id* %27, %struct.of_device_id** %12, align 8
  %28 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %29 = icmp ne %struct.of_device_id* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %279

35:                                               ; preds = %22
  %36 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.hns_roce_hw*
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 11
  store %struct.hns_roce_hw* %39, %struct.hns_roce_hw** %41, align 8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 11
  %44 = load %struct.hns_roce_hw*, %struct.hns_roce_hw** %43, align 8
  %45 = icmp ne %struct.hns_roce_hw* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %279

51:                                               ; preds = %35
  br label %92

52:                                               ; preds = %1
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @is_acpi_device_node(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load i32, i32* @hns_roce_acpi_match, align 4
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call %struct.acpi_device_id* @acpi_match_device(i32 %59, %struct.device* %60)
  store %struct.acpi_device_id* %61, %struct.acpi_device_id** %13, align 8
  %62 = load %struct.acpi_device_id*, %struct.acpi_device_id** %13, align 8
  %63 = icmp ne %struct.acpi_device_id* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %279

69:                                               ; preds = %58
  %70 = load %struct.acpi_device_id*, %struct.acpi_device_id** %13, align 8
  %71 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.hns_roce_hw*
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %74, i32 0, i32 11
  store %struct.hns_roce_hw* %73, %struct.hns_roce_hw** %75, align 8
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %76, i32 0, i32 11
  %78 = load %struct.hns_roce_hw*, %struct.hns_roce_hw** %77, align 8
  %79 = icmp ne %struct.hns_roce_hw* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %279

85:                                               ; preds = %69
  br label %91

86:                                               ; preds = %52
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %279

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %51
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %94 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @devm_platform_ioremap_resource(%struct.TYPE_9__* %95, i32 0)
  %97 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %98 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 4
  %99 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %100 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %106 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %279

109:                                              ; preds = %92
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %112 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = bitcast i32* %113 to i64*
  %115 = load i32, i32* @GUID_LEN, align 4
  %116 = call i32 @device_property_read_u8_array(%struct.device* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64* %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %279

123:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %208, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @HNS_ROCE_MAX_PORTS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %211

128:                                              ; preds = %124
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i64 @dev_of_node(%struct.device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.device_node* @of_parse_phandle(i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  store %struct.device_node* %137, %struct.device_node** %7, align 8
  %138 = load %struct.device_node*, %struct.device_node** %7, align 8
  %139 = icmp ne %struct.device_node* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %208

141:                                              ; preds = %132
  %142 = load %struct.device_node*, %struct.device_node** %7, align 8
  %143 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %142)
  store %struct.platform_device* %143, %struct.platform_device** %5, align 8
  br label %169

144:                                              ; preds = %128
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = getelementptr inbounds %struct.device, %struct.device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @is_acpi_device_node(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = getelementptr inbounds %struct.device, %struct.device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @acpi_node_get_property_reference(i32 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %154, %struct.fwnode_reference_args* %14)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %208

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %14, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.platform_device* @hns_roce_find_pdev(i32 %161)
  store %struct.platform_device* %162, %struct.platform_device** %5, align 8
  br label %168

163:                                              ; preds = %144
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32, i32* @ENXIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %279

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %141
  %170 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %171 = icmp ne %struct.platform_device* %170, null
  br i1 %171, label %172, label %207

172:                                              ; preds = %169
  %173 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %174 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %173)
  store %struct.net_device* %174, %struct.net_device** %6, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %9, align 8
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = icmp ne %struct.net_device* %177, null
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %182 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %181, i32 0, i32 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.net_device**, %struct.net_device*** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.net_device*, %struct.net_device** %184, i64 %186
  store %struct.net_device* %180, %struct.net_device** %187, align 8
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %190 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %188, i64* %195, align 8
  br label %204

196:                                              ; preds = %172
  %197 = load %struct.device*, %struct.device** %4, align 8
  %198 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %279

204:                                              ; preds = %179
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %169
  br label %208

208:                                              ; preds = %207, %158, %140
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %124

211:                                              ; preds = %124
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %215, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %279

219:                                              ; preds = %211
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %222 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %225 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  %226 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %227 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %226, i32 0, i32 6
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* @ROCEE_DB_SQ_L_0_REG, align 4
  %229 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %230 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @ROCEE_DB_OTHERS_L_0_REG, align 4
  %232 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %233 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %236 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @HNS_ROCE_V1_MAX_IRQ_NUM, align 4
  %239 = call i32 @device_property_read_string_array(%struct.device* %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %237, i32 %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %219
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %243, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %245 = load i32, i32* %10, align 4
  store i32 %245, i32* %2, align 4
  br label %279

246:                                              ; preds = %219
  store i32 0, i32* %11, align 4
  br label %247

247:                                              ; preds = %275, %246
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @HNS_ROCE_V1_MAX_IRQ_NUM, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %278

251:                                              ; preds = %247
  %252 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %253 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %252, i32 0, i32 2
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i64 @platform_get_irq(%struct.TYPE_9__* %254, i32 %255)
  %257 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %258 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  store i64 %256, i64* %262, align 8
  %263 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %264 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %263, i32 0, i32 1
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp sle i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %251
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %2, align 4
  br label %279

274:                                              ; preds = %251
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %247

278:                                              ; preds = %247
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %278, %271, %242, %214, %196, %163, %119, %104, %86, %80, %64, %46, %30
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @is_acpi_device_node(i32) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i8*, i64*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @acpi_node_get_property_reference(i32, i8*, i32, %struct.fwnode_reference_args*) #1

declare dso_local %struct.platform_device* @hns_roce_find_pdev(i32) #1

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_property_read_string_array(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
