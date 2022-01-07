; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_i3c.c_st_lsm6dsx_i3c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_i3c.c_st_lsm6dsx_i3c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.i3c_device = type { i32 }
%struct.i3c_device_id = type { i64 }
%struct.regmap = type { i32 }

@__const.st_lsm6dsx_i3c_probe.st_lsm6dsx_i3c_regmap_config = private unnamed_addr constant %struct.regmap_config { i32 8, i32 8 }, align 4
@st_lsm6dsx_i3c_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register i3c regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_device*)* @st_lsm6dsx_i3c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_i3c_probe(%struct.i3c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_device*, align 8
  %4 = alloca %struct.regmap_config, align 4
  %5 = alloca %struct.i3c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.i3c_device* %0, %struct.i3c_device** %3, align 8
  %7 = bitcast %struct.regmap_config* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.regmap_config* @__const.st_lsm6dsx_i3c_probe.st_lsm6dsx_i3c_regmap_config to i8*), i64 8, i1 false)
  %8 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %9 = load i32, i32* @st_lsm6dsx_i3c_ids, align 4
  %10 = call %struct.i3c_device_id* @i3c_device_match_id(%struct.i3c_device* %8, i32 %9)
  store %struct.i3c_device_id* %10, %struct.i3c_device_id** %5, align 8
  %11 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %12 = call %struct.regmap* @devm_regmap_init_i3c(%struct.i3c_device* %11, %struct.regmap_config* %4)
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = call i64 @IS_ERR(%struct.regmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %18 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  %21 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.regmap* %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %26 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %25, i32 0, i32 0
  %27 = load %struct.i3c_device_id*, %struct.i3c_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.regmap*, %struct.regmap** %6, align 8
  %31 = call i32 @st_lsm6dsx_probe(i32* %26, i32 0, i64 %29, %struct.regmap* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.i3c_device_id* @i3c_device_match_id(%struct.i3c_device*, i32) #2

declare dso_local %struct.regmap* @devm_regmap_init_i3c(%struct.i3c_device*, %struct.regmap_config*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @st_lsm6dsx_probe(i32*, i32, i64, %struct.regmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
