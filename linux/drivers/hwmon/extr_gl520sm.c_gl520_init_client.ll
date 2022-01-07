; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.gl520_data = type { i32, i32, i64*, i32, i32 }

@GL520_REG_CONF = common dso_local global i32 0, align 4
@extra_sensor_type = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @gl520_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl520_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.gl520_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.gl520_data* %7, %struct.gl520_data** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @GL520_REG_CONF, align 4
  %10 = call i32 @gl520_read_value(%struct.i2c_client* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %12 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %11, i32 0, i32 0
  store i32 255, i32* %12, align 8
  %13 = call i32 (...) @vid_which_vrm()
  %14 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %15 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @extra_sensor_type, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -17
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @extra_sensor_type, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %35 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 247
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, 64
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = load i32, i32* @GL520_REG_CONF, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @gl520_write_value(%struct.i2c_client* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @gl520_update_device(i32* %55)
  %57 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %58 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %65 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, -33
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %53
  %69 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %70 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %77 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, -65
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %68
  %81 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %82 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %85 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %89 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %90 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %91 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @gl520_write_value(%struct.i2c_client* %88, i32 %89, i32 %92)
  ret void
}

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_update_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
