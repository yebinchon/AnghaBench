; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder_slave.c_drm_i2c_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder_slave.c_drm_i2c_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_encoder_slave = type { i32, %struct.TYPE_5__*, %struct.i2c_client* }
%struct.TYPE_5__ = type { i32 (i32*, i64)* }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i64, i32 }
%struct.drm_i2c_encoder_driver = type { i32 (%struct.i2c_client*, %struct.drm_device.0*, %struct.drm_encoder_slave.1*)* }
%struct.drm_device.0 = type opaque
%struct.drm_encoder_slave.1 = type opaque

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@I2C_MODULE_PREFIX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_i2c_encoder_init(%struct.drm_device* %0, %struct.drm_encoder_slave* %1, %struct.i2c_adapter* %2, %struct.i2c_board_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_encoder_slave*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.i2c_board_info*, align 8
  %10 = alloca %struct.module*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.drm_i2c_encoder_driver*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_encoder_slave* %1, %struct.drm_encoder_slave** %7, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_board_info* %3, %struct.i2c_board_info** %9, align 8
  store %struct.module* null, %struct.module** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @I2C_MODULE_PREFIX, align 4
  %15 = load %struct.i2c_board_info*, %struct.i2c_board_info** %9, align 8
  %16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @request_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %20 = load %struct.i2c_board_info*, %struct.i2c_board_info** %9, align 8
  %21 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %19, %struct.i2c_board_info* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %23 = icmp ne %struct.i2c_client* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  br label %94

27:                                               ; preds = %4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.module*, %struct.module** %41, align 8
  store %struct.module* %42, %struct.module** %10, align 8
  %43 = load %struct.module*, %struct.module** %10, align 8
  %44 = call i32 @try_module_get(%struct.module* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %89

49:                                               ; preds = %36
  %50 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %51 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %52 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %51, i32 0, i32 2
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @to_i2c_driver(%struct.TYPE_6__* %56)
  %58 = call %struct.drm_i2c_encoder_driver* @to_drm_i2c_encoder_driver(i32 %57)
  store %struct.drm_i2c_encoder_driver* %58, %struct.drm_i2c_encoder_driver** %12, align 8
  %59 = load %struct.drm_i2c_encoder_driver*, %struct.drm_i2c_encoder_driver** %12, align 8
  %60 = getelementptr inbounds %struct.drm_i2c_encoder_driver, %struct.drm_i2c_encoder_driver* %59, i32 0, i32 0
  %61 = load i32 (%struct.i2c_client*, %struct.drm_device.0*, %struct.drm_encoder_slave.1*)*, i32 (%struct.i2c_client*, %struct.drm_device.0*, %struct.drm_encoder_slave.1*)** %60, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = bitcast %struct.drm_device* %63 to %struct.drm_device.0*
  %65 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %66 = bitcast %struct.drm_encoder_slave* %65 to %struct.drm_encoder_slave.1*
  %67 = call i32 %61(%struct.i2c_client* %62, %struct.drm_device.0* %64, %struct.drm_encoder_slave.1* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  br label %89

71:                                               ; preds = %49
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %78 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (i32*, i64)*, i32 (i32*, i64)** %80, align 8
  %82 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %83 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %82, i32 0, i32 0
  %84 = load %struct.i2c_board_info*, %struct.i2c_board_info** %9, align 8
  %85 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 %81(i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %76, %71
  store i32 0, i32* %5, align 4
  br label %96

89:                                               ; preds = %70, %46, %33
  %90 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %91 = call i32 @i2c_unregister_device(%struct.i2c_client* %90)
  %92 = load %struct.module*, %struct.module** %10, align 8
  %93 = call i32 @module_put(%struct.module* %92)
  br label %94

94:                                               ; preds = %89, %24
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @request_module(i8*, i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local %struct.drm_i2c_encoder_driver* @to_drm_i2c_encoder_driver(i32) #1

declare dso_local i32 @to_i2c_driver(%struct.TYPE_6__*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
