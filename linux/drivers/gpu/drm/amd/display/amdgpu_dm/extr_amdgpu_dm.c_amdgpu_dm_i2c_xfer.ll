; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.amdgpu_i2c_adapter = type { %struct.ddc_service* }
%struct.ddc_service = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_command = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2C_COMMAND_ENGINE_DEFAULT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @amdgpu_dm_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_i2c_adapter*, align 8
  %9 = alloca %struct.ddc_service*, align 8
  %10 = alloca %struct.i2c_command, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.amdgpu_i2c_adapter* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.amdgpu_i2c_adapter* %14, %struct.amdgpu_i2c_adapter** %8, align 8
  %15 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %15, i32 0, i32 0
  %17 = load %struct.ddc_service*, %struct.ddc_service** %16, align 8
  store %struct.ddc_service* %17, %struct.ddc_service** %9, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_9__* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %23, align 8
  %24 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %117

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @I2C_COMMAND_ENGINE_DEFAULT, align 4
  %33 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 1
  store i32 100, i32* %34, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %93, %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store i32 %62, i32* %68, align 4
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 %74, i32* %80, align 4
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i64 %83
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %39
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %35

96:                                               ; preds = %35
  %97 = load %struct.ddc_service*, %struct.ddc_service** %9, align 8
  %98 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ddc_service*, %struct.ddc_service** %9, align 8
  %103 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @dc_submit_i2c(i32 %101, i32 %107, %struct.i2c_command* %10)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %110, %96
  %113 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %10, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i32 @kfree(%struct.TYPE_9__* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.amdgpu_i2c_adapter* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.TYPE_9__* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @dc_submit_i2c(i32, i32, %struct.i2c_command*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
