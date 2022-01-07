; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_i2c.c_amdgpu_atombios_i2c_process_i2c_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_i2c.c_amdgpu_atombios_i2c_process_i2c_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_chan = type { i32, %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32, i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@ProcessI2cChannelTransaction = common dso_local global i32 0, align 4
@HW_I2C_WRITE = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"hw i2c: tried to write too many bytes (%d vs 3)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"hw i2c: missing buf with num > 1\0A\00", align 1
@ATOM_MAX_HW_I2C_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"hw i2c: tried to read too many bytes (%d vs 255)\0A\00", align 1
@TARGET_HW_I2C_CLOCK = common dso_local global i32 0, align 4
@HW_ASSISTED_I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"hw_i2c error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_i2c_chan*, i32, i32, i32*, i32)* @amdgpu_atombios_i2c_process_i2c_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atombios_i2c_process_i2c_ch(%struct.amdgpu_i2c_chan* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_i2c_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.amdgpu_i2c_chan* %0, %struct.amdgpu_i2c_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %18, i32 0, i32 2
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %11, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %22, align 8
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %12, align 8
  %24 = load i32, i32* @COMMAND, align 4
  %25 = load i32, i32* @ProcessI2cChannelTransaction, align 4
  %26 = call i32 @GetIndexIntoMasterTable(i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = call i8* @cpu_to_le16(i8* null)
  store i8* %27, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %28 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 40)
  %29 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %15, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @HW_I2C_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %5
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ATOM_MAX_HW_I2C_WRITE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  br label %141

52:                                               ; preds = %43
  %53 = load i32*, i32** %9, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %55
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @memcpy(i8** %16, i32* %76, i32 %77)
  br label %83

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  br label %141

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i8*, i8** %16, align 8
  %86 = call i8* @cpu_to_le16(i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  store i8* %86, i8** %87, align 8
  br label %100

88:                                               ; preds = %5
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ATOM_MAX_HW_I2C_READ, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %17, align 4
  br label %141

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  store i8* null, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %84
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @TARGET_HW_I2C_CLOCK, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = shl i32 %107, 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  %110 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %6, align 8
  %111 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  store i32 %113, i32* %114, align 8
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = bitcast %struct.TYPE_8__* %13 to i32*
  %121 = call i32 @amdgpu_atom_execute_table(%struct.TYPE_9__* %118, i32 %119, i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @HW_ASSISTED_I2C_STATUS_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %100
  %127 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  br label %141

130:                                              ; preds = %100
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @HW_I2C_WRITE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32*, i32** %9, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @amdgpu_atombios_copy_swap(i32* %136, i8* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %135, %130
  br label %141

141:                                              ; preds = %140, %126, %92, %79, %47
  %142 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %6, align 8
  %143 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %17, align 4
  ret i32 %145
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @amdgpu_atombios_copy_swap(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
