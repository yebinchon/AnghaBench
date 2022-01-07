; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.m88ds3103_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_board_info = type { %struct.m88ds3103_platform_data*, i32, i32 }
%struct.m88ds3103_platform_data = type { i32, %struct.dvb_frontend* (%struct.i2c_client.0*)*, %struct.i2c_adapter* (%struct.i2c_client.1*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client.0 = type opaque
%struct.i2c_client.1 = type opaque

@.str = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @m88ds3103_attach(%struct.m88ds3103_config* %0, %struct.i2c_adapter* %1, %struct.i2c_adapter** %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.m88ds3103_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_adapter**, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.m88ds3103_platform_data, align 8
  store %struct.m88ds3103_config* %0, %struct.m88ds3103_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_adapter** %2, %struct.i2c_adapter*** %7, align 8
  %11 = bitcast %struct.m88ds3103_platform_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 72, i1 false)
  %12 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %13 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 14
  store i32 %14, i32* %15, align 4
  %16 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %17 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 13
  store i32 %18, i32* %19, align 8
  %20 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %21 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 12
  store i32 %22, i32* %23, align 4
  %24 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %25 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 11
  store i32 %26, i32* %27, align 8
  %28 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %29 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 10
  store i32 %30, i32* %31, align 4
  %32 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %33 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 9
  store i32 %34, i32* %35, align 8
  %36 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %37 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %41 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 7
  store i32 %42, i32* %43, align 8
  %44 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %45 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 6
  store i32 %46, i32* %47, align 4
  %48 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %49 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  %52 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %53 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %57 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 16)
  %62 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_NAME_SIZE, align 4
  %65 = call i32 @strscpy(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.m88ds3103_config*, %struct.m88ds3103_config** %5, align 8
  %67 = getelementptr inbounds %struct.m88ds3103_config, %struct.m88ds3103_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store %struct.m88ds3103_platform_data* %10, %struct.m88ds3103_platform_data** %70, align 8
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %72 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %71, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %72, %struct.i2c_client** %8, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %74 = icmp ne %struct.i2c_client* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %3
  %76 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %94

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 2
  %84 = load %struct.i2c_adapter* (%struct.i2c_client.1*)*, %struct.i2c_adapter* (%struct.i2c_client.1*)** %83, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %86 = bitcast %struct.i2c_client* %85 to %struct.i2c_client.1*
  %87 = call %struct.i2c_adapter* %84(%struct.i2c_client.1* %86)
  %88 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %7, align 8
  store %struct.i2c_adapter* %87, %struct.i2c_adapter** %88, align 8
  %89 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %10, i32 0, i32 1
  %90 = load %struct.dvb_frontend* (%struct.i2c_client.0*)*, %struct.dvb_frontend* (%struct.i2c_client.0*)** %89, align 8
  %91 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %92 = bitcast %struct.i2c_client* %91 to %struct.i2c_client.0*
  %93 = call %struct.dvb_frontend* %90(%struct.i2c_client.0* %92)
  store %struct.dvb_frontend* %93, %struct.dvb_frontend** %4, align 8
  br label %94

94:                                               ; preds = %82, %81
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
