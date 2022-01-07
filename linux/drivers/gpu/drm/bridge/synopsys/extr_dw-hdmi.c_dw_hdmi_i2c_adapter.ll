; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dw_hdmi = type { i32, %struct.dw_hdmi_i2c* }
%struct.dw_hdmi_i2c = type { %struct.i2c_adapter, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@dw_hdmi_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DesignWare HDMI\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot add %s I2C adapter\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"registered %s I2C bus driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.dw_hdmi*)* @dw_hdmi_i2c_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @dw_hdmi_i2c_adapter(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.dw_hdmi_i2c*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dw_hdmi_i2c* @devm_kzalloc(i32 %9, i32 40, i32 %10)
  store %struct.dw_hdmi_i2c* %11, %struct.dw_hdmi_i2c** %5, align 8
  %12 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %13 = icmp ne %struct.dw_hdmi_i2c* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.i2c_adapter* @ERR_PTR(i32 %16)
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %2, align 8
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %20 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %22, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %25, i32 0, i32 0
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %4, align 8
  %27 = load i32, i32* @I2C_CLASS_DDC, align 4
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %34 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 1
  store i32* @dw_hdmi_algorithm, i32** %40, align 8
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strlcpy(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %47 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %45, %struct.dw_hdmi* %46)
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %49 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %18
  %53 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %54 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %61 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %64 = call i32 @devm_kfree(i32 %62, %struct.dw_hdmi_i2c* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.i2c_adapter* @ERR_PTR(i32 %65)
  store %struct.i2c_adapter* %66, %struct.i2c_adapter** %2, align 8
  br label %79

67:                                               ; preds = %18
  %68 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %5, align 8
  %69 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %70 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %69, i32 0, i32 1
  store %struct.dw_hdmi_i2c* %68, %struct.dw_hdmi_i2c** %70, align 8
  %71 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %72 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %78, %struct.i2c_adapter** %2, align 8
  br label %79

79:                                               ; preds = %67, %52, %14
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %80
}

declare dso_local %struct.dw_hdmi_i2c* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.i2c_adapter* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.dw_hdmi*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.dw_hdmi_i2c*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
