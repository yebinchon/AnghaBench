; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_create_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_create_attr_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32, %struct.attribute** }
%struct.attribute = type { i32, i32 }
%struct.device = type { i32 }
%struct.sensor_template_group = type { i64, %struct.sensor_device_template**, i32 }
%struct.sensor_device_template = type { %struct.TYPE_13__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.sensor_device_attribute_2 = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { %struct.attribute, i32, i32 }
%struct.sensor_device_attribute = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.attribute, i32, i32 }
%struct.sensor_device_attr_u = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.sensor_device_attribute, %struct.sensor_device_attribute_2 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute_group* (%struct.device*, %struct.sensor_template_group*, i32)* @nct6683_create_attr_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute_group* @nct6683_create_attr_group(%struct.device* %0, %struct.sensor_template_group* %1, i32 %2) #0 {
  %4 = alloca %struct.attribute_group*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sensor_template_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.sensor_device_template**, align 8
  %11 = alloca %struct.sensor_device_attr_u*, align 8
  %12 = alloca %struct.attribute_group*, align 8
  %13 = alloca %struct.attribute**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sensor_template_group* %1, %struct.sensor_template_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.attribute_group* @ERR_PTR(i32 %21)
  store %struct.attribute_group* %22, %struct.attribute_group** %4, align 8
  br label %261

23:                                               ; preds = %3
  %24 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %25 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %24, i32 0, i32 1
  %26 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %25, align 8
  store %struct.sensor_device_template** %26, %struct.sensor_device_template*** %10, align 8
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %32, %23
  %28 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %29 = load %struct.sensor_device_template*, %struct.sensor_device_template** %28, align 8
  %30 = icmp ne %struct.sensor_device_template* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_template*, %struct.sensor_device_template** %33, i32 1
  store %struct.sensor_device_template** %34, %struct.sensor_device_template*** %10, align 8
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  br label %27

37:                                               ; preds = %27
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.attribute_group* @ERR_PTR(i32 %42)
  store %struct.attribute_group* %43, %struct.attribute_group** %4, align 8
  br label %261

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @devm_kzalloc(%struct.device* %45, i32 16, i32 %46)
  %48 = bitcast i8* %47 to %struct.attribute_group*
  store %struct.attribute_group* %48, %struct.attribute_group** %12, align 8
  %49 = load %struct.attribute_group*, %struct.attribute_group** %12, align 8
  %50 = icmp eq %struct.attribute_group* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.attribute_group* @ERR_PTR(i32 %53)
  store %struct.attribute_group* %54, %struct.attribute_group** %4, align 8
  br label %261

55:                                               ; preds = %44
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.attribute** @devm_kcalloc(%struct.device* %56, i32 %60, i32 8, i32 %61)
  store %struct.attribute** %62, %struct.attribute*** %13, align 8
  %63 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %64 = icmp eq %struct.attribute** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.attribute_group* @ERR_PTR(i32 %67)
  store %struct.attribute_group* %68, %struct.attribute_group** %4, align 8
  br label %261

69:                                               ; preds = %55
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @array3_size(i32 %71, i32 %72, i32 64)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @devm_kzalloc(%struct.device* %70, i32 %73, i32 %74)
  %76 = bitcast i8* %75 to %struct.sensor_device_attr_u*
  store %struct.sensor_device_attr_u* %76, %struct.sensor_device_attr_u** %11, align 8
  %77 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %78 = icmp eq %struct.sensor_device_attr_u* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.attribute_group* @ERR_PTR(i32 %81)
  store %struct.attribute_group* %82, %struct.attribute_group** %4, align 8
  br label %261

83:                                               ; preds = %69
  %84 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %85 = load %struct.attribute_group*, %struct.attribute_group** %12, align 8
  %86 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %85, i32 0, i32 1
  store %struct.attribute** %84, %struct.attribute*** %86, align 8
  %87 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %88 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.attribute_group*, %struct.attribute_group** %12, align 8
  %91 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %256, %83
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %259

96:                                               ; preds = %92
  %97 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %98 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %97, i32 0, i32 1
  %99 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %98, align 8
  store %struct.sensor_device_template** %99, %struct.sensor_device_template*** %10, align 8
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %252, %96
  %101 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %102 = load %struct.sensor_device_template*, %struct.sensor_device_template** %101, align 8
  %103 = icmp ne %struct.sensor_device_template* %102, null
  br i1 %103, label %104, label %255

104:                                              ; preds = %100
  %105 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %106 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %109 = load %struct.sensor_device_template*, %struct.sensor_device_template** %108, align 8
  %110 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %115 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = call i32 @snprintf(i32 %107, i32 4, i8* %113, i64 %119)
  %121 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %122 = load %struct.sensor_device_template*, %struct.sensor_device_template** %121, align 8
  %123 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %190

126:                                              ; preds = %104
  %127 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %128 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store %struct.sensor_device_attribute_2* %129, %struct.sensor_device_attribute_2** %8, align 8
  %130 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %131 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i32 @sysfs_attr_init(%struct.attribute* %132)
  %134 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %135 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %138 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.attribute, %struct.attribute* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %142 = load %struct.sensor_device_template*, %struct.sensor_device_template** %141, align 8
  %143 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %151 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %153 = load %struct.sensor_device_template*, %struct.sensor_device_template** %152, align 8
  %154 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %159 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %161 = load %struct.sensor_device_template*, %struct.sensor_device_template** %160, align 8
  %162 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %167 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.attribute, %struct.attribute* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  %170 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %171 = load %struct.sensor_device_template*, %struct.sensor_device_template** %170, align 8
  %172 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %176 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  store i32 %174, i32* %177, align 4
  %178 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %179 = load %struct.sensor_device_template*, %struct.sensor_device_template** %178, align 8
  %180 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %184 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 8
  %186 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %187 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.attribute**, %struct.attribute*** %13, align 8
  store %struct.attribute* %188, %struct.attribute** %189, align 8
  br label %245

190:                                              ; preds = %104
  %191 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %192 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store %struct.sensor_device_attribute* %193, %struct.sensor_device_attribute** %9, align 8
  %194 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %195 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = call i32 @sysfs_attr_init(%struct.attribute* %196)
  %198 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %199 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %202 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.attribute, %struct.attribute* %203, i32 0, i32 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %206 = load %struct.sensor_device_template*, %struct.sensor_device_template** %205, align 8
  %207 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %214 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %216 = load %struct.sensor_device_template*, %struct.sensor_device_template** %215, align 8
  %217 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %222 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.attribute, %struct.attribute* %223, i32 0, i32 0
  store i32 %220, i32* %224, align 8
  %225 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %226 = load %struct.sensor_device_template*, %struct.sensor_device_template** %225, align 8
  %227 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %231 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 4
  %233 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %234 = load %struct.sensor_device_template*, %struct.sensor_device_template** %233, align 8
  %235 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %239 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 8
  %241 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %242 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load %struct.attribute**, %struct.attribute*** %13, align 8
  store %struct.attribute* %243, %struct.attribute** %244, align 8
  br label %245

245:                                              ; preds = %190, %126
  %246 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %247 = getelementptr inbounds %struct.attribute*, %struct.attribute** %246, i32 1
  store %struct.attribute** %247, %struct.attribute*** %13, align 8
  %248 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %11, align 8
  %249 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %248, i32 1
  store %struct.sensor_device_attr_u* %249, %struct.sensor_device_attr_u** %11, align 8
  %250 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %10, align 8
  %251 = getelementptr inbounds %struct.sensor_device_template*, %struct.sensor_device_template** %250, i32 1
  store %struct.sensor_device_template** %251, %struct.sensor_device_template*** %10, align 8
  br label %252

252:                                              ; preds = %245
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %100

255:                                              ; preds = %100
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %92

259:                                              ; preds = %92
  %260 = load %struct.attribute_group*, %struct.attribute_group** %12, align 8
  store %struct.attribute_group* %260, %struct.attribute_group** %4, align 8
  br label %261

261:                                              ; preds = %259, %79, %65, %51, %40, %19
  %262 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  ret %struct.attribute_group* %262
}

declare dso_local %struct.attribute_group* @ERR_PTR(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.attribute** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
