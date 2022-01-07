; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.rk3066_hdmi = type { %struct.TYPE_7__*, %struct.rk3066_hdmi_i2c* }
%struct.rk3066_hdmi_i2c = type { %struct.i2c_adapter, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@rk3066_hdmi_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RK3066 HDMI\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot add %s I2C adapter\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"registered %s I2C bus driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.rk3066_hdmi*)* @rk3066_hdmi_i2c_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @rk3066_hdmi_i2c_adapter(%struct.rk3066_hdmi* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.rk3066_hdmi*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.rk3066_hdmi_i2c*, align 8
  %6 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %3, align 8
  %7 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rk3066_hdmi_i2c* @devm_kzalloc(%struct.TYPE_7__* %9, i32 48, i32 %10)
  store %struct.rk3066_hdmi_i2c* %11, %struct.rk3066_hdmi_i2c** %5, align 8
  %12 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %13 = icmp ne %struct.rk3066_hdmi_i2c* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.i2c_adapter* @ERR_PTR(i32 %16)
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %2, align 8
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %20 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %23 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %22, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %25, i32 0, i32 0
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %4, align 8
  %27 = load i32, i32* @I2C_CLASS_DDC, align 4
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %34 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %40 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 1
  store i32* @rk3066_hdmi_algorithm, i32** %48, align 8
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strlcpy(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4)
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %54 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %55 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %53, %struct.rk3066_hdmi* %54)
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %18
  %61 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %62 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DRM_DEV_ERROR(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %72 = call i32 @devm_kfree(%struct.TYPE_7__* %70, %struct.rk3066_hdmi_i2c* %71)
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.i2c_adapter* @ERR_PTR(i32 %73)
  store %struct.i2c_adapter* %74, %struct.i2c_adapter** %2, align 8
  br label %87

75:                                               ; preds = %18
  %76 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %5, align 8
  %77 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %78 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %77, i32 0, i32 1
  store %struct.rk3066_hdmi_i2c* %76, %struct.rk3066_hdmi_i2c** %78, align 8
  %79 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %80 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @DRM_DEV_DEBUG(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %86, %struct.i2c_adapter** %2, align 8
  br label %87

87:                                               ; preds = %75, %60, %14
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %88
}

declare dso_local %struct.rk3066_hdmi_i2c* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.i2c_adapter* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.rk3066_hdmi*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_7__*, %struct.rk3066_hdmi_i2c*) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
