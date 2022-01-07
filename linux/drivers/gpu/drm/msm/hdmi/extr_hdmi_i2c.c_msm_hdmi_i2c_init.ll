; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_msm_hdmi_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_msm_hdmi_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hdmi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hdmi_i2c_adapter = type { i32, %struct.hdmi*, %struct.i2c_adapter }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"msm hdmi i2c\00", align 1
@msm_hdmi_i2c_algorithm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @msm_hdmi_i2c_init(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca %struct.hdmi_i2c_adapter*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hdmi_i2c_adapter* @kzalloc(i32 48, i32 %7)
  store %struct.hdmi_i2c_adapter* %8, %struct.hdmi_i2c_adapter** %4, align 8
  %9 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %4, align 8
  %10 = icmp ne %struct.hdmi_i2c_adapter* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %15, i32 0, i32 2
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %18 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %18, i32 0, i32 1
  store %struct.hdmi* %17, %struct.hdmi** %19, align 8
  %20 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %20, i32 0, i32 0
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load i32, i32* @THIS_MODULE, align 4
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @I2C_CLASS_DDC, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %34 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  store i32* @msm_hdmi_i2c_algorithm, i32** %41, align 8
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %43 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %14
  br label %49

47:                                               ; preds = %14
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_adapter* %48, %struct.i2c_adapter** %2, align 8
  br label %58

49:                                               ; preds = %46, %11
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %51 = icmp ne %struct.i2c_adapter* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %54 = call i32 @msm_hdmi_i2c_destroy(%struct.i2c_adapter* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.i2c_adapter* @ERR_PTR(i32 %56)
  store %struct.i2c_adapter* %57, %struct.i2c_adapter** %2, align 8
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %59
}

declare dso_local %struct.hdmi_i2c_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @msm_hdmi_i2c_destroy(%struct.i2c_adapter*) #1

declare dso_local %struct.i2c_adapter* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
