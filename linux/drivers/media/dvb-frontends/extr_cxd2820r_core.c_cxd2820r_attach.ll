; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.cxd2820r_config = type { i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_board_info = type { %struct.cxd2820r_platform_data*, i32, i32 }
%struct.cxd2820r_platform_data = type { i32**, i32, %struct.dvb_frontend* (%struct.i2c_client*)*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cxd2820r\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cxd2820r_attach(%struct.cxd2820r_config* %0, %struct.i2c_adapter* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.cxd2820r_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.cxd2820r_platform_data, align 8
  store %struct.cxd2820r_config* %0, %struct.cxd2820r_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %5, align 8
  %12 = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 6
  store i32 %13, i32* %14, align 4
  %15 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %5, align 8
  %16 = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %5, align 8
  %20 = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %5, align 8
  %24 = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 0
  store i32** %7, i32*** %27, align 8
  %28 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_NAME_SIZE, align 4
  %33 = call i32 @strscpy(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %5, align 8
  %35 = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store %struct.cxd2820r_platform_data* %10, %struct.cxd2820r_platform_data** %38, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %40 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %39, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %40, %struct.i2c_client** %8, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %42 = icmp ne %struct.i2c_client* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %10, i32 0, i32 2
  %52 = load %struct.dvb_frontend* (%struct.i2c_client*)*, %struct.dvb_frontend* (%struct.i2c_client*)** %51, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %54 = call %struct.dvb_frontend* %52(%struct.i2c_client* %53)
  store %struct.dvb_frontend* %54, %struct.dvb_frontend** %4, align 8
  br label %55

55:                                               ; preds = %50, %49
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %56
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
