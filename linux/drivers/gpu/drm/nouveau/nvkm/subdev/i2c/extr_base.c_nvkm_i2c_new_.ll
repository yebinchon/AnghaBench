; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_base.c_nvkm_i2c_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_base.c_nvkm_i2c_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_drv = type { i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)*, i64, i32 }
%struct.nvkm_i2c_bus.2 = type opaque
%struct.nvkm_i2c_pad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)* }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.nvkm_i2c_func = type { i32 (%struct.nvkm_i2c*, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c.0*, i32, %struct.nvkm_i2c_pad**)* }
%struct.nvkm_i2c = type opaque
%struct.nvkm_i2c.0 = type opaque
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_i2c.1 = type { i32, i32, i32, i32, i32, %struct.nvkm_i2c_func* }
%struct.dcb_i2c_entry = type { i64, i64, i64, i64, i32 }
%struct.dcb_output = type { i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_i2c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ccb %02x: type %02x drive %02x sense %02x share %02x auxch %02x\0A\00", align 1
@DCB_I2C_UNUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"ccb %02x pad, %d\0A\00", align 1
@DCB_I2C_NV04_BIT = common dso_local global i64 0, align 8
@DCB_I2C_NV4E_BIT = common dso_local global i64 0, align 8
@DCB_I2C_NVIO_BIT = common dso_local global i64 0, align 8
@DCB_I2C_PMGR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"ccb %02x bus, %d\0A\00", align 1
@DCB_I2C_NVIO_AUX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"ccb %02x aux, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ccb %02x was ignored\0A\00", align 1
@nvkm_i2c_drv = common dso_local global %struct.nvkm_i2c_drv* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"dcb %02x no bus\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dcb %02x drv %02x unknown\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dcb %02x pad, %d\0A\00", align 1
@DCB_OUTPUT_DP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"dcb %02x aux, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"dcb %02x bus, %d\0A\00", align 1
@nvkm_i2c_intr_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_i2c_new_(%struct.nvkm_i2c_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_i2c.1** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_i2c.1**, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca %struct.nvkm_i2c.1*, align 8
  %12 = alloca %struct.dcb_i2c_entry, align 8
  %13 = alloca %struct.dcb_output, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nvkm_i2c_pad*, align 8
  %19 = alloca %struct.nvkm_i2c_bus*, align 8
  %20 = alloca %struct.nvkm_i2c_aux*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nvkm_i2c_drv*, align 8
  %23 = alloca %struct.nvkm_i2c_bus*, align 8
  %24 = alloca %struct.nvkm_i2c_pad*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.nvkm_i2c_aux*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.nvkm_i2c_bus*, align 8
  store %struct.nvkm_i2c_func* %0, %struct.nvkm_i2c_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_i2c.1** %3, %struct.nvkm_i2c.1*** %9, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %31, align 8
  store %struct.nvkm_bios* %32, %struct.nvkm_bios** %10, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nvkm_i2c.1* @kzalloc(i32 32, i32 %33)
  %35 = load %struct.nvkm_i2c.1**, %struct.nvkm_i2c.1*** %9, align 8
  store %struct.nvkm_i2c.1* %34, %struct.nvkm_i2c.1** %35, align 8
  store %struct.nvkm_i2c.1* %34, %struct.nvkm_i2c.1** %11, align 8
  %36 = icmp ne %struct.nvkm_i2c.1* %34, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %415

40:                                               ; preds = %4
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %44 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %43, i32 0, i32 1
  %45 = call i32 @nvkm_subdev_ctor(i32* @nvkm_i2c, %struct.nvkm_device* %41, i32 %42, i32* %44)
  %46 = load %struct.nvkm_i2c_func*, %struct.nvkm_i2c_func** %6, align 8
  %47 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %48 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %47, i32 0, i32 5
  store %struct.nvkm_i2c_func* %46, %struct.nvkm_i2c_func** %48, align 8
  %49 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %50 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %49, i32 0, i32 4
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %53 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %56 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %55, i32 0, i32 2
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  store i32 -1, i32* %17, align 4
  br label %58

58:                                               ; preds = %258, %253, %114, %40
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = call i32 @dcb_i2c_parse(%struct.nvkm_bios* %59, i32 %61, %struct.dcb_i2c_entry* %12)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %259

65:                                               ; preds = %58
  store %struct.nvkm_i2c_pad* null, %struct.nvkm_i2c_pad** %18, align 8
  store %struct.nvkm_i2c_bus* null, %struct.nvkm_i2c_bus** %19, align 8
  store %struct.nvkm_i2c_aux* null, %struct.nvkm_i2c_aux** %20, align 8
  %66 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %67 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %66, i32 0, i32 1
  %68 = load i32, i32* %17, align 4
  %69 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32*, i8*, i32, ...) @nvkm_debug(i32* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %70, i64 %72, i32 %74, i64 %76, i64 %78)
  %80 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DCB_I2C_UNUSED, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @NVKM_I2C_PAD_HYBRID(i64 %86)
  store i32 %87, i32* %21, align 4
  %88 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %89 = load i32, i32* %21, align 4
  %90 = call %struct.nvkm_i2c_pad* @nvkm_i2c_pad_find(%struct.nvkm_i2c.1* %88, i32 %89)
  store %struct.nvkm_i2c_pad* %90, %struct.nvkm_i2c_pad** %18, align 8
  %91 = icmp ne %struct.nvkm_i2c_pad* %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.nvkm_i2c_func*, %struct.nvkm_i2c_func** %6, align 8
  %94 = getelementptr inbounds %struct.nvkm_i2c_func, %struct.nvkm_i2c_func* %93, i32 0, i32 0
  %95 = load i32 (%struct.nvkm_i2c*, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c*, i32, %struct.nvkm_i2c_pad**)** %94, align 8
  %96 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %97 = bitcast %struct.nvkm_i2c.1* %96 to %struct.nvkm_i2c*
  %98 = load i32, i32* %21, align 4
  %99 = call i32 %95(%struct.nvkm_i2c* %97, i32 %98, %struct.nvkm_i2c_pad** %18)
  store i32 %99, i32* %16, align 4
  br label %101

100:                                              ; preds = %84
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %100, %92
  br label %111

102:                                              ; preds = %65
  %103 = load %struct.nvkm_i2c_func*, %struct.nvkm_i2c_func** %6, align 8
  %104 = getelementptr inbounds %struct.nvkm_i2c_func, %struct.nvkm_i2c_func* %103, i32 0, i32 1
  %105 = load i32 (%struct.nvkm_i2c.0*, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c.0*, i32, %struct.nvkm_i2c_pad**)** %104, align 8
  %106 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %107 = bitcast %struct.nvkm_i2c.1* %106 to %struct.nvkm_i2c.0*
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @NVKM_I2C_PAD_CCB(i32 %108)
  %110 = call i32 %105(%struct.nvkm_i2c.0* %107, i32 %109, %struct.nvkm_i2c_pad** %18)
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %102, %101
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %116 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %115, i32 0, i32 1
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @nvkm_error(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 @nvkm_i2c_pad_del(%struct.nvkm_i2c_pad** %18)
  br label %58

121:                                              ; preds = %111
  %122 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %123 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)** %125, align 8
  %127 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DCB_I2C_NV04_BIT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %135 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, i32, %struct.nvkm_i2c_bus**)** %137, align 8
  %139 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @NVKM_I2C_BUS_CCB(i32 %140)
  %142 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %138(%struct.nvkm_i2c_pad* %139, i32 %141, i64 %143, i32 %145, %struct.nvkm_i2c_bus** %19)
  store i32 %146, i32* %16, align 4
  br label %187

147:                                              ; preds = %128, %121
  %148 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %149 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)** %151, align 8
  %153 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)* %152, null
  br i1 %153, label %154, label %186

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DCB_I2C_NV4E_BIT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %174, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DCB_I2C_NVIO_BIT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %174, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DCB_I2C_PMGR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @DCB_I2C_UNUSED, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %169, %159, %154
  %175 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %176 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)** %178, align 8
  %180 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @NVKM_I2C_BUS_CCB(i32 %181)
  %183 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 %179(%struct.nvkm_i2c_pad* %180, i32 %182, i64 %184, %struct.nvkm_i2c_bus** %19)
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %174, %169, %164, %147
  br label %187

187:                                              ; preds = %186, %133
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %192 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %191, i32 0, i32 1
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @nvkm_error(i32* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %194)
  %196 = call i32 @nvkm_i2c_bus_del(%struct.nvkm_i2c_bus** %19)
  br label %197

197:                                              ; preds = %190, %187
  %198 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %199 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)** %201, align 8
  %203 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)* %202, null
  br i1 %203, label %204, label %231

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @DCB_I2C_NVIO_AUX, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @DCB_I2C_PMGR, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @DCB_I2C_UNUSED, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %214, %204
  %220 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %221 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  %224 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)** %223, align 8
  %225 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %18, align 8
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @NVKM_I2C_BUS_CCB(i32 %226)
  %228 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = call i32 %224(%struct.nvkm_i2c_pad* %225, i32 %227, i64 %229, %struct.nvkm_i2c_aux** %20)
  store i32 %230, i32* %16, align 4
  br label %232

231:                                              ; preds = %214, %209, %197
  store i32 0, i32* %16, align 4
  br label %232

232:                                              ; preds = %231, %219
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %237 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %236, i32 0, i32 1
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %16, align 4
  %240 = call i32 @nvkm_error(i32* %237, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %239)
  %241 = call i32 @nvkm_i2c_aux_del(%struct.nvkm_i2c_aux** %20)
  br label %242

242:                                              ; preds = %235, %232
  %243 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %12, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @DCB_I2C_UNUSED, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %242
  %248 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %19, align 8
  %249 = icmp ne %struct.nvkm_i2c_bus* %248, null
  br i1 %249, label %258, label %250

250:                                              ; preds = %247
  %251 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %20, align 8
  %252 = icmp ne %struct.nvkm_i2c_aux* %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %255 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %254, i32 0, i32 1
  %256 = load i32, i32* %17, align 4
  %257 = call i32 @nvkm_warn(i32* %255, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  br label %58

258:                                              ; preds = %250, %247, %242
  br label %58

259:                                              ; preds = %58
  store i32 -1, i32* %17, align 4
  br label %260

260:                                              ; preds = %409, %337, %306, %279, %271, %259
  %261 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %262 = load i32, i32* %17, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %17, align 4
  %264 = call i64 @dcb_outp_parse(%struct.nvkm_bios* %261, i32 %263, i32* %14, i32* %15, %struct.dcb_output* %13)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %410

266:                                              ; preds = %260
  %267 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** @nvkm_i2c_drv, align 8
  store %struct.nvkm_i2c_drv* %267, %struct.nvkm_i2c_drv** %22, align 8
  %268 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  br label %260

272:                                              ; preds = %266
  %273 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %274 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c.1* %273, i32 %275)
  store %struct.nvkm_i2c_bus* %276, %struct.nvkm_i2c_bus** %23, align 8
  %277 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %23, align 8
  %278 = icmp ne %struct.nvkm_i2c_bus* %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %272
  %280 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %281 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %280, i32 0, i32 1
  %282 = load i32, i32* %17, align 4
  %283 = call i32 (i32*, i8*, i32, ...) @nvkm_debug(i32* %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %282)
  br label %260

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %298, %284
  %286 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %287 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %286, i32 0, i32 0
  %288 = load i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)** %287, align 8
  %289 = icmp ne i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)* %288, null
  br i1 %289, label %290, label %301

290:                                              ; preds = %285
  %291 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %292 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %293, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %301

298:                                              ; preds = %290
  %299 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %300 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %299, i32 1
  store %struct.nvkm_i2c_drv* %300, %struct.nvkm_i2c_drv** %22, align 8
  br label %285

301:                                              ; preds = %297, %285
  %302 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %303 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %302, i32 0, i32 0
  %304 = load i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)** %303, align 8
  %305 = icmp ne i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)* %304, null
  br i1 %305, label %313, label %306

306:                                              ; preds = %301
  %307 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %308 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %307, i32 0, i32 1
  %309 = load i32, i32* %17, align 4
  %310 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = call i32 (i32*, i8*, i32, ...) @nvkm_debug(i32* %308, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %309, i64 %311)
  br label %260

313:                                              ; preds = %301
  %314 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %315 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @NVKM_I2C_PAD_EXT(i64 %316)
  %318 = call %struct.nvkm_i2c_pad* @nvkm_i2c_pad_find(%struct.nvkm_i2c.1* %314, i32 %317)
  store %struct.nvkm_i2c_pad* %318, %struct.nvkm_i2c_pad** %24, align 8
  %319 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %320 = icmp ne %struct.nvkm_i2c_pad* %319, null
  br i1 %320, label %345, label %321

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @NVKM_I2C_PAD_EXT(i64 %323)
  store i32 %324, i32* %25, align 4
  %325 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %326 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %325, i32 0, i32 0
  %327 = load i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)*, i32 (%struct.nvkm_i2c_bus.2*, i32, i32, %struct.nvkm_i2c_pad**)** %326, align 8
  %328 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %23, align 8
  %329 = bitcast %struct.nvkm_i2c_bus* %328 to %struct.nvkm_i2c_bus.2*
  %330 = load i32, i32* %25, align 4
  %331 = load %struct.nvkm_i2c_drv*, %struct.nvkm_i2c_drv** %22, align 8
  %332 = getelementptr inbounds %struct.nvkm_i2c_drv, %struct.nvkm_i2c_drv* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 %327(%struct.nvkm_i2c_bus.2* %329, i32 %330, i32 %333, %struct.nvkm_i2c_pad** %24)
  store i32 %334, i32* %16, align 4
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %321
  %338 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %339 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %338, i32 0, i32 1
  %340 = load i32, i32* %17, align 4
  %341 = load i32, i32* %16, align 4
  %342 = call i32 @nvkm_error(i32* %339, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %340, i32 %341)
  %343 = call i32 @nvkm_i2c_pad_del(%struct.nvkm_i2c_pad** %24)
  br label %260

344:                                              ; preds = %321
  br label %345

345:                                              ; preds = %344, %313
  %346 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %347 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %346, i32 0, i32 0
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 2
  %350 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)** %349, align 8
  %351 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)* %350, null
  br i1 %351, label %352, label %379

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @DCB_OUTPUT_DP, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %379

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @NVKM_I2C_AUX_EXT(i64 %359)
  store i32 %360, i32* %26, align 4
  store %struct.nvkm_i2c_aux* null, %struct.nvkm_i2c_aux** %27, align 8
  %361 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %362 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %361, i32 0, i32 0
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 2
  %365 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_aux**)** %364, align 8
  %366 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %367 = load i32, i32* %26, align 4
  %368 = call i32 %365(%struct.nvkm_i2c_pad* %366, i32 %367, i64 0, %struct.nvkm_i2c_aux** %27)
  store i32 %368, i32* %16, align 4
  %369 = load i32, i32* %16, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %357
  %372 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %373 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %372, i32 0, i32 1
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %16, align 4
  %376 = call i32 @nvkm_error(i32* %373, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %374, i32 %375)
  %377 = call i32 @nvkm_i2c_aux_del(%struct.nvkm_i2c_aux** %27)
  br label %378

378:                                              ; preds = %371, %357
  br label %409

379:                                              ; preds = %352, %345
  %380 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %381 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %380, i32 0, i32 0
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 1
  %384 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)** %383, align 8
  %385 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)* %384, null
  br i1 %385, label %386, label %408

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %13, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @NVKM_I2C_BUS_EXT(i64 %388)
  store i32 %389, i32* %28, align 4
  store %struct.nvkm_i2c_bus* null, %struct.nvkm_i2c_bus** %29, align 8
  %390 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %391 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %390, i32 0, i32 0
  %392 = load %struct.TYPE_2__*, %struct.TYPE_2__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 1
  %394 = load i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)*, i32 (%struct.nvkm_i2c_pad*, i32, i64, %struct.nvkm_i2c_bus**)** %393, align 8
  %395 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %24, align 8
  %396 = load i32, i32* %28, align 4
  %397 = call i32 %394(%struct.nvkm_i2c_pad* %395, i32 %396, i64 0, %struct.nvkm_i2c_bus** %29)
  store i32 %397, i32* %16, align 4
  %398 = load i32, i32* %16, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %386
  %401 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %402 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %401, i32 0, i32 1
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %16, align 4
  %405 = call i32 @nvkm_error(i32* %402, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %403, i32 %404)
  %406 = call i32 @nvkm_i2c_bus_del(%struct.nvkm_i2c_bus** %29)
  br label %407

407:                                              ; preds = %400, %386
  br label %408

408:                                              ; preds = %407, %379
  br label %409

409:                                              ; preds = %408, %378
  br label %260

410:                                              ; preds = %260
  %411 = load i32, i32* %17, align 4
  %412 = load %struct.nvkm_i2c.1*, %struct.nvkm_i2c.1** %11, align 8
  %413 = getelementptr inbounds %struct.nvkm_i2c.1, %struct.nvkm_i2c.1* %412, i32 0, i32 0
  %414 = call i32 @nvkm_event_init(i32* @nvkm_i2c_intr_func, i32 4, i32 %411, i32* %413)
  store i32 %414, i32* %5, align 4
  br label %415

415:                                              ; preds = %410, %37
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local %struct.nvkm_i2c.1* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dcb_i2c_parse(%struct.nvkm_bios*, i32, %struct.dcb_i2c_entry*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, ...) #1

declare dso_local i32 @NVKM_I2C_PAD_HYBRID(i64) #1

declare dso_local %struct.nvkm_i2c_pad* @nvkm_i2c_pad_find(%struct.nvkm_i2c.1*, i32) #1

declare dso_local i32 @NVKM_I2C_PAD_CCB(i32) #1

declare dso_local i32 @nvkm_error(i32*, i8*, i32, i32) #1

declare dso_local i32 @nvkm_i2c_pad_del(%struct.nvkm_i2c_pad**) #1

declare dso_local i32 @NVKM_I2C_BUS_CCB(i32) #1

declare dso_local i32 @nvkm_i2c_bus_del(%struct.nvkm_i2c_bus**) #1

declare dso_local i32 @nvkm_i2c_aux_del(%struct.nvkm_i2c_aux**) #1

declare dso_local i32 @nvkm_warn(i32*, i8*, i32) #1

declare dso_local i64 @dcb_outp_parse(%struct.nvkm_bios*, i32, i32*, i32*, %struct.dcb_output*) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c.1*, i32) #1

declare dso_local i32 @NVKM_I2C_PAD_EXT(i64) #1

declare dso_local i32 @NVKM_I2C_AUX_EXT(i64) #1

declare dso_local i32 @NVKM_I2C_BUS_EXT(i64) #1

declare dso_local i32 @nvkm_event_init(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
