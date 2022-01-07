; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_sw = type { i32, i32 }

@DCE_I2C_DEFAULT_I2C_SW_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_i2c_sw_engine_set_speed(%struct.dce_i2c_sw* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_i2c_sw*, align 8
  %4 = alloca i32, align 4
  store %struct.dce_i2c_sw* %0, %struct.dce_i2c_sw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DCE_I2C_DEFAULT_I2C_SW_SPEED, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %16 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %18 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 1000, %19
  %21 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %22 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %24 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 12
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %29 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %28, i32 0, i32 1
  store i32 12, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
