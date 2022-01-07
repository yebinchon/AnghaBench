; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_i2c_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_i2c_chan = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.ast_i2c_chan* }
%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AST i2c bit bus\00", align 1
@set_data = common dso_local global i32 0, align 4
@set_clock = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register bit i2c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ast_i2c_chan* (%struct.drm_device*)* @ast_i2c_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ast_i2c_chan* @ast_i2c_create(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.ast_i2c_chan*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ast_i2c_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ast_i2c_chan* @kzalloc(i32 72, i32 %6)
  store %struct.ast_i2c_chan* %7, %struct.ast_i2c_chan** %4, align 8
  %8 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %9 = icmp ne %struct.ast_i2c_chan* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ast_i2c_chan* null, %struct.ast_i2c_chan** %2, align 8
  br label %83

11:                                               ; preds = %1
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %14 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @I2C_CLASS_DDC, align 4
  %17 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %18 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %25 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %23, i32** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %30 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %29, i32 0, i32 2
  store %struct.drm_device* %28, %struct.drm_device** %30, align 8
  %31 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %32 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %31, i32 0, i32 0
  %33 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %34 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %32, %struct.ast_i2c_chan* %33)
  %35 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %36 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %41 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %40, i32 0, i32 1
  %42 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %43 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %46 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 20, i32* %47, align 8
  %48 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %49 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 2, i32* %50, align 4
  %51 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %52 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %53 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store %struct.ast_i2c_chan* %51, %struct.ast_i2c_chan** %54, align 8
  %55 = load i32, i32* @set_data, align 4
  %56 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %57 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @set_clock, align 4
  %60 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %61 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @get_data, align 4
  %64 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %65 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @get_clock, align 4
  %68 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %69 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %72 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %71, i32 0, i32 0
  %73 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %11
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %80

78:                                               ; preds = %11
  %79 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  store %struct.ast_i2c_chan* %79, %struct.ast_i2c_chan** %2, align 8
  br label %83

80:                                               ; preds = %76
  %81 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %4, align 8
  %82 = call i32 @kfree(%struct.ast_i2c_chan* %81)
  store %struct.ast_i2c_chan* null, %struct.ast_i2c_chan** %2, align 8
  br label %83

83:                                               ; preds = %80, %78, %10
  %84 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %2, align 8
  ret %struct.ast_i2c_chan* %84
}

declare dso_local %struct.ast_i2c_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.ast_i2c_chan*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kfree(%struct.ast_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
