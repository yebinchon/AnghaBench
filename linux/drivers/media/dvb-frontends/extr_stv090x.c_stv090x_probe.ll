; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.stv090x_config* }
%struct.stv090x_config = type { i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.stv090x_state = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.stv090x_config*, i32* }
%struct.TYPE_4__ = type { %struct.stv090x_state*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@stv090x_ops = common dso_local global i32 0, align 4
@STV090x_RO_35 = common dso_local global i32 0, align 4
@stv090x_get_dvb_frontend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stv090x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stv090x_config*, align 8
  %8 = alloca %struct.stv090x_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.stv090x_config*, %struct.stv090x_config** %11, align 8
  store %struct.stv090x_config* %12, %struct.stv090x_config** %7, align 8
  store %struct.stv090x_state* null, %struct.stv090x_state** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.stv090x_state* @kzalloc(i32 56, i32 %13)
  store %struct.stv090x_state* %14, %struct.stv090x_state** %8, align 8
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %16 = icmp ne %struct.stv090x_state* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %22 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %21, i32 0, i32 7
  store i32* @verbose, i32** %22, align 8
  %23 = load %struct.stv090x_config*, %struct.stv090x_config** %7, align 8
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %25 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %24, i32 0, i32 6
  store %struct.stv090x_config* %23, %struct.stv090x_config** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @stv090x_ops, align 4
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %33 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %36 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %37 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.stv090x_state* %35, %struct.stv090x_state** %38, align 8
  %39 = load %struct.stv090x_config*, %struct.stv090x_config** %7, align 8
  %40 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %43 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stv090x_config*, %struct.stv090x_config** %7, align 8
  %45 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %48 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.stv090x_config*, %struct.stv090x_config** %7, align 8
  %50 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %53 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @STV090x_RO_35, align 4
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %58 = call i32 @stv090x_setup_compound(%struct.stv090x_state* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %20
  br label %69

62:                                               ; preds = %20
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %65 = call i32 @i2c_set_clientdata(%struct.i2c_client* %63, %struct.stv090x_state* %64)
  %66 = load i32, i32* @stv090x_get_dvb_frontend, align 4
  %67 = load %struct.stv090x_config*, %struct.stv090x_config** %7, align 8
  %68 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %61, %17
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %71 = call i32 @kfree(%struct.stv090x_state* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.stv090x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @stv090x_setup_compound(%struct.stv090x_state*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stv090x_state*) #1

declare dso_local i32 @kfree(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
