; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_15__, i32 }
%struct.ocores_i2c = type { i32, i32, i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocores_i2c_platform_data = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't get I/O resource.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@oc_setreg_io_8 = common dso_local global i32 0, align 4
@oc_getreg_io_8 = common dso_local global i32 0, align 4
@oc_setreg_8 = common dso_local global i32 0, align 4
@oc_getreg_8 = common dso_local global i32 0, align 4
@oc_setreg_16be = common dso_local global i32 0, align 4
@oc_setreg_16 = common dso_local global i32 0, align 4
@oc_getreg_16be = common dso_local global i32 0, align 4
@oc_getreg_16 = common dso_local global i32 0, align 4
@oc_setreg_32be = common dso_local global i32 0, align 4
@oc_setreg_32 = common dso_local global i32 0, align 4
@oc_getreg_32be = common dso_local global i32 0, align 4
@oc_getreg_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported I/O width (%d)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ocores_xfer_polling = common dso_local global i64 0, align 8
@ocores_algorithm = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ocores_i2c_match = common dso_local global i32 0, align 4
@TYPE_SIFIVE_REV0 = common dso_local global i64 0, align 8
@OCORES_FLAG_BROKEN_IRQ = common dso_local global i32 0, align 4
@ocores_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot claim IRQ\0A\00", align 1
@ocores_adapter = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ocores_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ocores_i2c*, align 8
  %5 = alloca %struct.ocores_i2c_platform_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ocores_i2c* @devm_kzalloc(%struct.TYPE_15__* %13, i32 72, i32 %14)
  store %struct.ocores_i2c* %15, %struct.ocores_i2c** %4, align 8
  %16 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %17 = icmp ne %struct.ocores_i2c* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %358

21:                                               ; preds = %1
  %22 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %22, i32 0, i32 12
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %7, align 8
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %32, %struct.resource* %33)
  %35 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %36 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %38 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %358

47:                                               ; preds = %30
  br label %88

48:                                               ; preds = %21
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_IO, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %7, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %358

57:                                               ; preds = %48
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %62 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = call i32 @resource_size(%struct.resource* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @devm_request_region(%struct.TYPE_15__* %64, i32 %67, i32 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %57
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %358

81:                                               ; preds = %57
  %82 = load i32, i32* @oc_setreg_io_8, align 4
  %83 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %84 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @oc_getreg_io_8, align 4
  %86 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %87 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %47
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call %struct.ocores_i2c_platform_data* @dev_get_platdata(%struct.TYPE_15__* %90)
  store %struct.ocores_i2c_platform_data* %91, %struct.ocores_i2c_platform_data** %5, align 8
  %92 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %93 = icmp ne %struct.ocores_i2c_platform_data* %92, null
  br i1 %93, label %94, label %124

94:                                               ; preds = %88
  %95 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %96 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %99 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %104 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %109 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %111 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %94
  %115 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %116 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %119 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %123

120:                                              ; preds = %94
  %121 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %122 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %121, i32 0, i32 1
  store i32 100, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %114
  br label %133

124:                                              ; preds = %88
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %127 = call i32 @ocores_i2c_of_probe(%struct.platform_device* %125, %struct.ocores_i2c* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %358

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %123
  %134 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %135 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %140 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %143 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %148 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %228, label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %153 = icmp ne %struct.ocores_i2c_platform_data* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %156 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  br label %164

158:                                              ; preds = %151
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @of_device_is_big_endian(i32 %162)
  br label %164

164:                                              ; preds = %158, %154
  %165 = phi i32 [ %157, %154 ], [ %163, %158 ]
  store i32 %165, i32* %11, align 4
  %166 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %167 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %218 [
    i32 1, label %169
    i32 2, label %176
    i32 4, label %197
  ]

169:                                              ; preds = %164
  %170 = load i32, i32* @oc_setreg_8, align 4
  %171 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %172 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @oc_getreg_8, align 4
  %174 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %175 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 8
  br label %227

176:                                              ; preds = %164
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* @oc_setreg_16be, align 4
  br label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @oc_setreg_16, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %186 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @oc_getreg_16be, align 4
  br label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @oc_getreg_16, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %196 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  br label %227

197:                                              ; preds = %164
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i32, i32* @oc_setreg_32be, align 4
  br label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @oc_setreg_32, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  %206 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %207 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = load i32, i32* @oc_getreg_32be, align 4
  br label %214

212:                                              ; preds = %204
  %213 = load i32, i32* @oc_getreg_32, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %217 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 8
  br label %227

218:                                              ; preds = %164
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %222 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %9, align 4
  br label %352

227:                                              ; preds = %214, %193, %169
  br label %228

228:                                              ; preds = %227, %146
  %229 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %230 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %229, i32 0, i32 5
  %231 = call i32 @init_waitqueue_head(i32* %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = call i32 @platform_get_irq(%struct.platform_device* %232, i32 0)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @ENXIO, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %228
  %239 = load i64, i64* @ocores_xfer_polling, align 8
  store i64 %239, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ocores_algorithm, i32 0, i32 0), align 8
  %240 = load i32, i32* @ocores_i2c_match, align 4
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call %struct.of_device_id* @of_match_node(i32 %240, i32 %244)
  store %struct.of_device_id* %245, %struct.of_device_id** %6, align 8
  %246 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %247 = icmp ne %struct.of_device_id* %246, null
  br i1 %247, label %248, label %260

248:                                              ; preds = %238
  %249 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %250 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @TYPE_SIFIVE_REV0, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %248
  %255 = load i32, i32* @OCORES_FLAG_BROKEN_IRQ, align 4
  %256 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %257 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %254, %248, %238
  br label %267

261:                                              ; preds = %228
  %262 = load i32, i32* %8, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %358

266:                                              ; preds = %261
  br label %267

267:                                              ; preds = %266, %260
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ocores_algorithm, i32 0, i32 0), align 8
  %269 = load i64, i64* @ocores_xfer_polling, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %267
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @ocores_isr, align 4
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %280 = call i32 @devm_request_any_context_irq(%struct.TYPE_15__* %273, i32 %274, i32 %275, i32 0, i32 %278, %struct.ocores_i2c* %279)
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %271
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %284, i32 0, i32 0
  %286 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %285, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %352

287:                                              ; preds = %271
  br label %288

288:                                              ; preds = %287, %267
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %292 = call i32 @ocores_init(%struct.TYPE_15__* %290, %struct.ocores_i2c* %291)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  br label %352

296:                                              ; preds = %288
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %299 = call i32 @platform_set_drvdata(%struct.platform_device* %297, %struct.ocores_i2c* %298)
  %300 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %301 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %300, i32 0, i32 3
  %302 = bitcast %struct.TYPE_17__* %301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %302, i8* align 8 bitcast (%struct.TYPE_17__* @ocores_adapter to i8*), i64 16, i1 false)
  %303 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %304 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %303, i32 0, i32 3
  %305 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %306 = call i32 @i2c_set_adapdata(%struct.TYPE_17__* %304, %struct.ocores_i2c* %305)
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %307, i32 0, i32 0
  %309 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %310 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  store %struct.TYPE_15__* %308, %struct.TYPE_15__** %312, align 8
  %313 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %314 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %318 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  store i32 %316, i32* %320, align 8
  %321 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %322 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %321, i32 0, i32 3
  %323 = call i32 @i2c_add_adapter(%struct.TYPE_17__* %322)
  store i32 %323, i32* %9, align 4
  %324 = load i32, i32* %9, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %296
  br label %352

327:                                              ; preds = %296
  %328 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %329 = icmp ne %struct.ocores_i2c_platform_data* %328, null
  br i1 %329, label %330, label %351

330:                                              ; preds = %327
  store i32 0, i32* %10, align 4
  br label %331

331:                                              ; preds = %347, %330
  %332 = load i32, i32* %10, align 4
  %333 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %334 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %332, %335
  br i1 %336, label %337, label %350

337:                                              ; preds = %331
  %338 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %339 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %338, i32 0, i32 3
  %340 = load %struct.ocores_i2c_platform_data*, %struct.ocores_i2c_platform_data** %5, align 8
  %341 = getelementptr inbounds %struct.ocores_i2c_platform_data, %struct.ocores_i2c_platform_data* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %342, %344
  %346 = call i32 @i2c_new_device(%struct.TYPE_17__* %339, i64 %345)
  br label %347

347:                                              ; preds = %337
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %331

350:                                              ; preds = %331
  br label %351

351:                                              ; preds = %350, %327
  store i32 0, i32* %2, align 4
  br label %358

352:                                              ; preds = %326, %295, %283, %218
  %353 = load %struct.ocores_i2c*, %struct.ocores_i2c** %4, align 8
  %354 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @clk_disable_unprepare(i32 %355)
  %357 = load i32, i32* %9, align 4
  store i32 %357, i32* %2, align 4
  br label %358

358:                                              ; preds = %352, %351, %264, %130, %75, %54, %42, %18
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local %struct.ocores_i2c* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_region(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.ocores_i2c_platform_data* @dev_get_platdata(%struct.TYPE_15__*) #1

declare dso_local i32 @ocores_i2c_of_probe(%struct.platform_device*, %struct.ocores_i2c*) #1

declare dso_local i32 @of_device_is_big_endian(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.ocores_i2c*) #1

declare dso_local i32 @ocores_init(%struct.TYPE_15__*, %struct.ocores_i2c*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ocores_i2c*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_17__*, %struct.ocores_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_17__*) #1

declare dso_local i32 @i2c_new_device(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
