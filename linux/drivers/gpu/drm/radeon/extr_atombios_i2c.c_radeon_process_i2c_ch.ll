; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_i2c.c_radeon_process_i2c_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_i2c.c_radeon_process_i2c_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { i32, %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32, i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@ProcessI2cChannelTransaction = common dso_local global i32 0, align 4
@HW_I2C_WRITE = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"hw i2c: tried to write too many bytes (%d vs 3)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"hw i2c: tried to read too many bytes (%d vs 255)\0A\00", align 1
@TARGET_HW_I2C_CLOCK = common dso_local global i32 0, align 4
@HW_ASSISTED_I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"hw_i2c error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_i2c_chan*, i32, i32, i32*, i32)* @radeon_process_i2c_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_process_i2c_ch(%struct.radeon_i2c_chan* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_i2c_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.radeon_i2c_chan* %0, %struct.radeon_i2c_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %18, i32 0, i32 2
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %11, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.radeon_device*, %struct.radeon_device** %22, align 8
  store %struct.radeon_device* %23, %struct.radeon_device** %12, align 8
  %24 = load i32, i32* @COMMAND, align 4
  %25 = load i32, i32* @ProcessI2cChannelTransaction, align 4
  %26 = call i32 @GetIndexIntoMasterTable(i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = call i8* @cpu_to_le16(i8* null)
  store i8* %27, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %28 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 40)
  %29 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %15, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @HW_I2C_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %5
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ATOM_MAX_HW_I2C_WRITE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %17, align 4
  br label %139

58:                                               ; preds = %49
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %61
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @memcpy(i8** %16, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i8*, i8** %16, align 8
  %84 = call i8* @cpu_to_le16(i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  store i8* %84, i8** %85, align 8
  br label %98

86:                                               ; preds = %5
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ATOM_MAX_HW_I2C_READ, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  br label %139

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %82
  %99 = load i32, i32* %8, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @TARGET_HW_I2C_CLOCK, align 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = shl i32 %105, 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %6, align 8
  %109 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  store i32 %111, i32* %112, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = bitcast %struct.TYPE_8__* %13 to i32*
  %119 = call i32 @atom_execute_table_scratch_unlocked(%struct.TYPE_9__* %116, i32 %117, i32* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @HW_ASSISTED_I2C_STATUS_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %98
  %125 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %17, align 4
  br label %139

128:                                              ; preds = %98
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @HW_I2C_WRITE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %9, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @radeon_atom_copy_swap(i32* %134, i8* %135, i32 %136, i32 0)
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %124, %90, %53
  %140 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %6, align 8
  %147 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %17, align 4
  ret i32 %149
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i32 @atom_execute_table_scratch_unlocked(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @radeon_atom_copy_swap(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
