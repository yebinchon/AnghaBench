; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_chan = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.drm_device*, %struct.amdgpu_i2c_bus_rec }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.amdgpu_i2c_chan*, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_i2c_bus_rec = type { i64, i64 }
%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@amdgpu_hw_i2c = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AMDGPU i2c hw bus %s\00", align 1
@amdgpu_atombios_i2c_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"AMDGPU i2c bit bus %s\00", align 1
@amdgpu_i2c_pre_xfer = common dso_local global i32 0, align 4
@amdgpu_i2c_post_xfer = common dso_local global i32 0, align 4
@amdgpu_i2c_set_data = common dso_local global i32 0, align 4
@amdgpu_i2c_set_clock = common dso_local global i32 0, align 4
@amdgpu_i2c_get_data = common dso_local global i32 0, align 4
@amdgpu_i2c_get_clock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register bit i2c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_i2c_chan* @amdgpu_i2c_create(%struct.drm_device* %0, %struct.amdgpu_i2c_bus_rec* %1, i8* %2) #0 {
  %4 = alloca %struct.amdgpu_i2c_chan*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_i2c_bus_rec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amdgpu_i2c_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.amdgpu_i2c_bus_rec* %1, %struct.amdgpu_i2c_bus_rec** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* @amdgpu_hw_i2c, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.amdgpu_i2c_chan* null, %struct.amdgpu_i2c_chan** %4, align 8
  br label %141

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.amdgpu_i2c_chan* @kzalloc(i32 120, i32 %19)
  store %struct.amdgpu_i2c_chan* %20, %struct.amdgpu_i2c_chan** %8, align 8
  %21 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %22 = icmp eq %struct.amdgpu_i2c_chan* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.amdgpu_i2c_chan* null, %struct.amdgpu_i2c_chan** %4, align 8
  br label %141

24:                                               ; preds = %18
  %25 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %25, i32 0, i32 4
  %27 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %6, align 8
  %28 = bitcast %struct.amdgpu_i2c_bus_rec* %26 to i8*
  %29 = bitcast %struct.amdgpu_i2c_bus_rec* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %32 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @I2C_CLASS_DDC, align 4
  %35 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %43 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32* %41, i32** %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %47, i32 0, i32 3
  store %struct.drm_device* %46, %struct.drm_device** %48, align 8
  %49 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %50 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %49, i32 0, i32 0
  %51 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %52 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %50, %struct.amdgpu_i2c_chan* %51)
  %53 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %53, i32 0, i32 2
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.amdgpu_i2c_bus_rec*, %struct.amdgpu_i2c_bus_rec** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %24
  %61 = load i64, i64* @amdgpu_hw_i2c, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %65 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %71 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i32* @amdgpu_atombios_i2c_algo, i32** %72, align 8
  %73 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %74 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %73, i32 0, i32 0
  %75 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %138

79:                                               ; preds = %63
  br label %136

80:                                               ; preds = %60, %24
  %81 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %82 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @snprintf(i32 %84, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %88 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %87, i32 0, i32 1
  %89 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %90 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %91, align 8
  %92 = load i32, i32* @amdgpu_i2c_pre_xfer, align 4
  %93 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %94 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 8
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @amdgpu_i2c_post_xfer, align 4
  %97 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %98 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 7
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @amdgpu_i2c_set_data, align 4
  %101 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %102 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @amdgpu_i2c_set_clock, align 4
  %105 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %106 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @amdgpu_i2c_get_data, align 4
  %109 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %110 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @amdgpu_i2c_get_clock, align 4
  %113 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %114 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 4
  %116 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %117 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 10, i32* %118, align 8
  %119 = call i32 @usecs_to_jiffies(i32 2200)
  %120 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %121 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %124 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %125 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store %struct.amdgpu_i2c_chan* %123, %struct.amdgpu_i2c_chan** %126, align 8
  %127 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %128 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %127, i32 0, i32 0
  %129 = call i32 @i2c_bit_add_bus(%struct.TYPE_10__* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %80
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  br label %138

135:                                              ; preds = %80
  br label %136

136:                                              ; preds = %135, %79
  %137 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  store %struct.amdgpu_i2c_chan* %137, %struct.amdgpu_i2c_chan** %4, align 8
  br label %141

138:                                              ; preds = %132, %78
  %139 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %140 = call i32 @kfree(%struct.amdgpu_i2c_chan* %139)
  store %struct.amdgpu_i2c_chan* null, %struct.amdgpu_i2c_chan** %4, align 8
  br label %141

141:                                              ; preds = %138, %136, %23, %17
  %142 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %4, align 8
  ret %struct.amdgpu_i2c_chan* %142
}

declare dso_local %struct.amdgpu_i2c_chan* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_10__*, %struct.amdgpu_i2c_chan*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_10__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.amdgpu_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
