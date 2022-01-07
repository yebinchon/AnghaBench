; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_subdevice_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_subdevice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.intel_th = type { i32, i32, %struct.intel_th_device*, i32, i32, i32, %struct.resource*, i32 }
%struct.resource = type { i32, i32, i32 }
%struct.intel_th_subdevice = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TH_MMIO_CONFIG = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s:%d @ %pR\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@has_mintctl = common dso_local global i32 0, align 4
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@INTEL_TH_SWITCH = common dso_local global i64 0, align 8
@host_mode_only = common dso_local global i32 0, align 4
@host_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_th_device* (%struct.intel_th*, %struct.intel_th_subdevice*)* @intel_th_subdevice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %0, %struct.intel_th_subdevice* %1) #0 {
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.intel_th*, align 8
  %5 = alloca %struct.intel_th_subdevice*, align 8
  %6 = alloca %struct.intel_th_device*, align 8
  %7 = alloca [3 x %struct.resource], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_th* %0, %struct.intel_th** %4, align 8
  store %struct.intel_th_subdevice* %1, %struct.intel_th_subdevice** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %14 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %15 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %18 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %21 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.intel_th_device* @intel_th_device_alloc(%struct.intel_th* %13, i64 %16, i32 %19, i32 %22)
  store %struct.intel_th_device* %23, %struct.intel_th_device** %6, align 8
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %25 = icmp ne %struct.intel_th_device* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.intel_th_device* @ERR_PTR(i32 %28)
  store %struct.intel_th_device* %29, %struct.intel_th_device** %3, align 8
  br label %293

30:                                               ; preds = %2
  %31 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %32 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %35 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 0
  %37 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %38 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %41 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 12, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.resource* %36, i32 %39, i32 %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %176, %30
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %50 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %179

53:                                               ; preds = %47
  %54 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %55 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %54, i32 0, i32 6
  %56 = load %struct.resource*, %struct.resource** %55, align 8
  store %struct.resource* %56, %struct.resource** %11, align 8
  %57 = load i32, i32* @TH_MMIO_CONFIG, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %101, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %82 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %287

86:                                               ; preds = %72
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = load %struct.resource*, %struct.resource** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %91, i64 %93
  %95 = call i32 @resource_size(%struct.resource* %94)
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %86, %64, %53
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IORESOURCE_MEM, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %101
  %111 = load %struct.resource*, %struct.resource** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %111, i64 %113
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %116
  store i32 %122, i32* %120, align 4
  %123 = load %struct.resource*, %struct.resource** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %123, i64 %125
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %136 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %139 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %143
  %145 = call i32 @dev_dbg(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141, %struct.resource* %144)
  br label %175

146:                                              ; preds = %101
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.resource, %struct.resource* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IORESOURCE_IRQ, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %146
  %156 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %157 = load i32, i32* @has_mintctl, align 4
  %158 = call i64 @INTEL_TH_CAP(%struct.intel_th* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %162 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %167 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %171, i32 0, i32 2
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %165, %160, %155
  br label %174

174:                                              ; preds = %173, %146
  br label %175

175:                                              ; preds = %174, %110
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %47

179:                                              ; preds = %47
  %180 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %181 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 0
  %182 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %183 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @intel_th_device_add_resources(%struct.intel_th_device* %180, %struct.resource* %181, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %190 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %189, i32 0, i32 1
  %191 = call i32 @put_device(%struct.TYPE_5__* %190)
  br label %287

192:                                              ; preds = %179
  %193 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %194 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %230

198:                                              ; preds = %192
  %199 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %200 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %205 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %208 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @MKDEV(i32 %206, i32 %209)
  %211 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %212 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %203, %198
  %215 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %216 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %219 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  store i32 %217, i32* %220, align 4
  %221 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %222 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  store i32 -1, i32* %223, align 4
  %224 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %225 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %228 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  br label %252

230:                                              ; preds = %192
  %231 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %232 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %230
  %237 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %238 = load i32, i32* @host_mode_only, align 4
  %239 = call i64 @INTEL_TH_CAP(%struct.intel_th* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %244

242:                                              ; preds = %236
  %243 = load i32, i32* @host_mode, align 4
  br label %244

244:                                              ; preds = %242, %241
  %245 = phi i32 [ 1, %241 ], [ %243, %242 ]
  %246 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %247 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  %248 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %249 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %250 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %249, i32 0, i32 2
  store %struct.intel_th_device* %248, %struct.intel_th_device** %250, align 8
  br label %251

251:                                              ; preds = %244, %230
  br label %252

252:                                              ; preds = %251, %214
  %253 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %254 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %253, i32 0, i32 1
  %255 = call i32 @device_add(%struct.TYPE_5__* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %260 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %259, i32 0, i32 1
  %261 = call i32 @put_device(%struct.TYPE_5__* %260)
  br label %282

262:                                              ; preds = %252
  %263 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %5, align 8
  %264 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %262
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %268
  %272 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %273 = call i32 @intel_th_request_hub_module(%struct.intel_th* %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %8, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %276, %271
  br label %280

280:                                              ; preds = %279, %268, %262
  %281 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  store %struct.intel_th_device* %281, %struct.intel_th_device** %3, align 8
  br label %293

282:                                              ; preds = %258
  %283 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %284 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @kfree(i32 %285)
  br label %287

287:                                              ; preds = %282, %188, %85
  %288 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %289 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %288, i32 0, i32 1
  %290 = call i32 @put_device(%struct.TYPE_5__* %289)
  %291 = load i32, i32* %10, align 4
  %292 = call %struct.intel_th_device* @ERR_PTR(i32 %291)
  store %struct.intel_th_device* %292, %struct.intel_th_device** %3, align 8
  br label %293

293:                                              ; preds = %287, %280, %26
  %294 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  ret %struct.intel_th_device* %294
}

declare dso_local %struct.intel_th_device* @intel_th_device_alloc(%struct.intel_th*, i64, i32, i32) #1

declare dso_local %struct.intel_th_device* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.resource*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, %struct.resource*) #1

declare dso_local i64 @INTEL_TH_CAP(%struct.intel_th*, i32) #1

declare dso_local i32 @intel_th_device_add_resources(%struct.intel_th_device*, %struct.resource*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @intel_th_request_hub_module(%struct.intel_th*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
