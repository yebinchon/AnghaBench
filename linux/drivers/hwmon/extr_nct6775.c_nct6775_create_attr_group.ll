; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_create_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_create_attr_group.c"
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
%struct.sensor_device_attr_u = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.sensor_device_attribute, %struct.sensor_device_attribute_2 }
%struct.sensor_device_attribute = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.attribute, i32, i32 }
%struct.sensor_device_attribute_2 = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { %struct.attribute, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute_group* (%struct.device*, %struct.sensor_template_group*, i32)* @nct6775_create_attr_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute_group* @nct6775_create_attr_group(%struct.device* %0, %struct.sensor_template_group* %1, i32 %2) #0 {
  %4 = alloca %struct.attribute_group*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sensor_template_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attribute_group*, align 8
  %9 = alloca %struct.sensor_device_attr_u*, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca %struct.attribute**, align 8
  %13 = alloca %struct.sensor_device_template**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sensor_template_group* %1, %struct.sensor_template_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.attribute_group* @ERR_PTR(i32 %20)
  store %struct.attribute_group* %21, %struct.attribute_group** %4, align 8
  br label %257

22:                                               ; preds = %3
  %23 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %24 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %23, i32 0, i32 1
  %25 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %24, align 8
  store %struct.sensor_device_template** %25, %struct.sensor_device_template*** %13, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %31, %22
  %27 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %28 = load %struct.sensor_device_template*, %struct.sensor_device_template** %27, align 8
  %29 = icmp ne %struct.sensor_device_template* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %33 = getelementptr inbounds %struct.sensor_device_template*, %struct.sensor_device_template** %32, i32 1
  store %struct.sensor_device_template** %33, %struct.sensor_device_template*** %13, align 8
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.attribute_group* @ERR_PTR(i32 %41)
  store %struct.attribute_group* %42, %struct.attribute_group** %4, align 8
  br label %257

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @devm_kzalloc(%struct.device* %44, i32 16, i32 %45)
  %47 = bitcast i8* %46 to %struct.attribute_group*
  store %struct.attribute_group* %47, %struct.attribute_group** %8, align 8
  %48 = load %struct.attribute_group*, %struct.attribute_group** %8, align 8
  %49 = icmp eq %struct.attribute_group* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.attribute_group* @ERR_PTR(i32 %52)
  store %struct.attribute_group* %53, %struct.attribute_group** %4, align 8
  br label %257

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.attribute** @devm_kcalloc(%struct.device* %55, i32 %59, i32 8, i32 %60)
  store %struct.attribute** %61, %struct.attribute*** %12, align 8
  %62 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %63 = icmp eq %struct.attribute** %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.attribute_group* @ERR_PTR(i32 %66)
  store %struct.attribute_group* %67, %struct.attribute_group** %4, align 8
  br label %257

68:                                               ; preds = %54
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @array3_size(i32 %70, i32 %71, i32 64)
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @devm_kzalloc(%struct.device* %69, i32 %72, i32 %73)
  %75 = bitcast i8* %74 to %struct.sensor_device_attr_u*
  store %struct.sensor_device_attr_u* %75, %struct.sensor_device_attr_u** %9, align 8
  %76 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %77 = icmp eq %struct.sensor_device_attr_u* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.attribute_group* @ERR_PTR(i32 %80)
  store %struct.attribute_group* %81, %struct.attribute_group** %4, align 8
  br label %257

82:                                               ; preds = %68
  %83 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %84 = load %struct.attribute_group*, %struct.attribute_group** %8, align 8
  %85 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %84, i32 0, i32 1
  store %struct.attribute** %83, %struct.attribute*** %85, align 8
  %86 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %87 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.attribute_group*, %struct.attribute_group** %8, align 8
  %90 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %252, %82
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %255

95:                                               ; preds = %91
  %96 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %97 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %96, i32 0, i32 1
  %98 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %97, align 8
  store %struct.sensor_device_template** %98, %struct.sensor_device_template*** %13, align 8
  br label %99

99:                                               ; preds = %244, %95
  %100 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %101 = load %struct.sensor_device_template*, %struct.sensor_device_template** %100, align 8
  %102 = icmp ne %struct.sensor_device_template* %101, null
  br i1 %102, label %103, label %251

103:                                              ; preds = %99
  %104 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %105 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %108 = load %struct.sensor_device_template*, %struct.sensor_device_template** %107, align 8
  %109 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.sensor_template_group*, %struct.sensor_template_group** %6, align 8
  %114 = getelementptr inbounds %struct.sensor_template_group, %struct.sensor_template_group* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @snprintf(i32 %106, i32 4, i8* %112, i64 %118)
  %120 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %121 = load %struct.sensor_device_template*, %struct.sensor_device_template** %120, align 8
  %122 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %189

125:                                              ; preds = %103
  %126 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %127 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store %struct.sensor_device_attribute_2* %128, %struct.sensor_device_attribute_2** %11, align 8
  %129 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %130 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = call i32 @sysfs_attr_init(%struct.attribute* %131)
  %133 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %134 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %137 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.attribute, %struct.attribute* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %141 = load %struct.sensor_device_template*, %struct.sensor_device_template** %140, align 8
  %142 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %150 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %152 = load %struct.sensor_device_template*, %struct.sensor_device_template** %151, align 8
  %153 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %158 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %160 = load %struct.sensor_device_template*, %struct.sensor_device_template** %159, align 8
  %161 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %166 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.attribute, %struct.attribute* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 8
  %169 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %170 = load %struct.sensor_device_template*, %struct.sensor_device_template** %169, align 8
  %171 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %175 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 4
  %177 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %178 = load %struct.sensor_device_template*, %struct.sensor_device_template** %177, align 8
  %179 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %183 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 8
  %185 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %186 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.attribute**, %struct.attribute*** %12, align 8
  store %struct.attribute* %187, %struct.attribute** %188, align 8
  br label %244

189:                                              ; preds = %103
  %190 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %191 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  store %struct.sensor_device_attribute* %192, %struct.sensor_device_attribute** %10, align 8
  %193 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %194 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = call i32 @sysfs_attr_init(%struct.attribute* %195)
  %197 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %198 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %201 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.attribute, %struct.attribute* %202, i32 0, i32 1
  store i32 %199, i32* %203, align 4
  %204 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %205 = load %struct.sensor_device_template*, %struct.sensor_device_template** %204, align 8
  %206 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %208, %210
  %212 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %213 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %215 = load %struct.sensor_device_template*, %struct.sensor_device_template** %214, align 8
  %216 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %221 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.attribute, %struct.attribute* %222, i32 0, i32 0
  store i32 %219, i32* %223, align 8
  %224 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %225 = load %struct.sensor_device_template*, %struct.sensor_device_template** %224, align 8
  %226 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %230 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 4
  %232 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %233 = load %struct.sensor_device_template*, %struct.sensor_device_template** %232, align 8
  %234 = getelementptr inbounds %struct.sensor_device_template, %struct.sensor_device_template* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %238 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 8
  %240 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %241 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load %struct.attribute**, %struct.attribute*** %12, align 8
  store %struct.attribute* %242, %struct.attribute** %243, align 8
  br label %244

244:                                              ; preds = %189, %125
  %245 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %246 = getelementptr inbounds %struct.attribute*, %struct.attribute** %245, i32 1
  store %struct.attribute** %246, %struct.attribute*** %12, align 8
  %247 = load %struct.sensor_device_attr_u*, %struct.sensor_device_attr_u** %9, align 8
  %248 = getelementptr inbounds %struct.sensor_device_attr_u, %struct.sensor_device_attr_u* %247, i32 1
  store %struct.sensor_device_attr_u* %248, %struct.sensor_device_attr_u** %9, align 8
  %249 = load %struct.sensor_device_template**, %struct.sensor_device_template*** %13, align 8
  %250 = getelementptr inbounds %struct.sensor_device_template*, %struct.sensor_device_template** %249, i32 1
  store %struct.sensor_device_template** %250, %struct.sensor_device_template*** %13, align 8
  br label %99

251:                                              ; preds = %99
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  br label %91

255:                                              ; preds = %91
  %256 = load %struct.attribute_group*, %struct.attribute_group** %8, align 8
  store %struct.attribute_group* %256, %struct.attribute_group** %4, align 8
  br label %257

257:                                              ; preds = %255, %78, %64, %50, %39, %18
  %258 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  ret %struct.attribute_group* %258
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
