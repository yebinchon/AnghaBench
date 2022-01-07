; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_w83791d_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_w83791d_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32 }

@reset = common dso_local global i64 0, align 8
@init = common dso_local global i64 0, align 8
@W83791D_REG_BEEP_CONFIG = common dso_local global i32 0, align 4
@W83791D_REG_CONFIG = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@W83791D_REG_TEMP2_CONFIG = common dso_local global i32 0, align 4
@W83791D_REG_TEMP3_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @w83791d_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83791d_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83791d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.w83791d_data* %7, %struct.w83791d_data** %3, align 8
  %8 = load i64, i64* @reset, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @init, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %10, %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = load i32, i32* @W83791D_REG_BEEP_CONFIG, align 4
  %16 = call i32 @w83791d_read(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @reset, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = load i32, i32* @W83791D_REG_CONFIG, align 4
  %22 = call i32 @w83791d_write(%struct.i2c_client* %20, i32 %21, i32 128)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = load i32, i32* @W83791D_REG_BEEP_CONFIG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 128
  %28 = call i32 @w83791d_write(%struct.i2c_client* %24, i32 %25, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %30 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @w83791d_read(%struct.i2c_client* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 239
  %40 = call i32 @w83791d_write(%struct.i2c_client* %34, i32 %37, i32 %39)
  %41 = load i64, i64* @init, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %23
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = load i32, i32* @W83791D_REG_TEMP2_CONFIG, align 4
  %46 = call i32 @w83791d_read(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = load i32, i32* @W83791D_REG_TEMP2_CONFIG, align 4
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 254
  %55 = call i32 @w83791d_write(%struct.i2c_client* %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %58 = load i32, i32* @W83791D_REG_TEMP3_CONFIG, align 4
  %59 = call i32 @w83791d_read(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = load i32, i32* @W83791D_REG_TEMP3_CONFIG, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 254
  %68 = call i32 @w83791d_write(%struct.i2c_client* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %71 = load i32, i32* @W83791D_REG_CONFIG, align 4
  %72 = call i32 @w83791d_read(%struct.i2c_client* %70, i32 %71)
  %73 = and i32 %72, 247
  store i32 %73, i32* %4, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %75 = load i32, i32* @W83791D_REG_CONFIG, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, 1
  %78 = call i32 @w83791d_write(%struct.i2c_client* %74, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %69, %23
  br label %80

80:                                               ; preds = %79, %10
  %81 = call i32 (...) @vid_which_vrm()
  %82 = load %struct.w83791d_data*, %struct.w83791d_data** %3, align 8
  %83 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  ret void
}

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
