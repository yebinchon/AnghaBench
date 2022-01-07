; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.drm_device*, %struct.radeon_i2c_bus_rec }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.radeon_i2c_chan*, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_i2c_bus_rec = type { i64, i64 }
%struct.drm_device = type { %struct.TYPE_8__*, %struct.radeon_device* }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_device = type { i64 }

@radeon_hw_i2c = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i64 0, align 8
@CHIP_RV515 = common dso_local global i64 0, align 8
@CHIP_R580 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Radeon i2c hw bus %s\00", align 1
@radeon_i2c_algo = common dso_local global i32 0, align 4
@radeon_atom_i2c_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Radeon i2c bit bus %s\00", align 1
@pre_xfer = common dso_local global i32 0, align 4
@post_xfer = common dso_local global i32 0, align 4
@set_data = common dso_local global i32 0, align 4
@set_clock = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register bit i2c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_i2c_chan* @radeon_i2c_create(%struct.drm_device* %0, %struct.radeon_i2c_bus_rec* %1, i8* %2) #0 {
  %4 = alloca %struct.radeon_i2c_chan*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_i2c_chan*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.radeon_i2c_bus_rec* %1, %struct.radeon_i2c_bus_rec** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %8, align 8
  %14 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* @radeon_hw_i2c, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %198

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.radeon_i2c_chan* @kzalloc(i32 120, i32 %23)
  store %struct.radeon_i2c_chan* %24, %struct.radeon_i2c_chan** %9, align 8
  %25 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %26 = icmp eq %struct.radeon_i2c_chan* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %198

28:                                               ; preds = %22
  %29 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %29, i32 0, i32 4
  %31 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %32 = bitcast %struct.radeon_i2c_bus_rec* %30 to i8*
  %33 = bitcast %struct.radeon_i2c_bus_rec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %36 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @I2C_CLASS_DDC, align 4
  %39 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %40 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %47 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %51, i32 0, i32 3
  store %struct.drm_device* %50, %struct.drm_device** %52, align 8
  %53 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %54 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %53, i32 0, i32 0
  %55 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %56 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %54, %struct.radeon_i2c_chan* %55)
  %57 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %57, i32 0, i32 2
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %61 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %28
  %65 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %64
  %70 = load i64, i64* @radeon_hw_i2c, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %69
  %73 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_RS480, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_RV515, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHIP_R580, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84, %72, %28
  %91 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %92 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %95)
  %97 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %98 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32* @radeon_i2c_algo, i32** %99, align 8
  %100 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %101 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %100, i32 0, i32 0
  %102 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %195

106:                                              ; preds = %90
  br label %193

107:                                              ; preds = %84, %78, %69, %64
  %108 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %109 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load i64, i64* @radeon_hw_i2c, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %117 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %121 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @snprintf(i32 %123, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %124)
  %126 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %127 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32* @radeon_atom_i2c_algo, i32** %128, align 8
  %129 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %130 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %129, i32 0, i32 0
  %131 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %195

135:                                              ; preds = %119
  br label %192

136:                                              ; preds = %115, %112, %107
  %137 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %138 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @snprintf(i32 %140, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %141)
  %143 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %144 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %143, i32 0, i32 1
  %145 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %146 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %147, align 8
  %148 = load i32, i32* @pre_xfer, align 4
  %149 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %150 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 8
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @post_xfer, align 4
  %153 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %154 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 7
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @set_data, align 4
  %157 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %158 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @set_clock, align 4
  %161 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %162 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @get_data, align 4
  %165 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %166 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* @get_clock, align 4
  %169 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %170 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  %172 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %173 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 10, i32* %174, align 8
  %175 = call i32 @usecs_to_jiffies(i32 2200)
  %176 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %177 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  %179 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %180 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %181 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store %struct.radeon_i2c_chan* %179, %struct.radeon_i2c_chan** %182, align 8
  %183 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %184 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %183, i32 0, i32 0
  %185 = call i32 @i2c_bit_add_bus(%struct.TYPE_10__* %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %136
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %189)
  br label %195

191:                                              ; preds = %136
  br label %192

192:                                              ; preds = %191, %135
  br label %193

193:                                              ; preds = %192, %106
  %194 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  store %struct.radeon_i2c_chan* %194, %struct.radeon_i2c_chan** %4, align 8
  br label %198

195:                                              ; preds = %188, %134, %105
  %196 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %197 = call i32 @kfree(%struct.radeon_i2c_chan* %196)
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %198

198:                                              ; preds = %195, %193, %27, %21
  %199 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %4, align 8
  ret %struct.radeon_i2c_chan* %199
}

declare dso_local %struct.radeon_i2c_chan* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_10__*, %struct.radeon_i2c_chan*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_10__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.radeon_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
