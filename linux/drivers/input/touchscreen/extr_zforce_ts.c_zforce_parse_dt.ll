; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts_platdata = type { i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate platform data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"x-size\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get x-size property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"y-size\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get y-size property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zforce_ts_platdata* (%struct.device*)* @zforce_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zforce_ts_platdata* @zforce_parse_dt(%struct.device* %0) #0 {
  %2 = alloca %struct.zforce_ts_platdata*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.zforce_ts_platdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.zforce_ts_platdata* @ERR_PTR(i32 %13)
  store %struct.zforce_ts_platdata* %14, %struct.zforce_ts_platdata** %2, align 8
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.zforce_ts_platdata* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.zforce_ts_platdata* %18, %struct.zforce_ts_platdata** %4, align 8
  %19 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %4, align 8
  %20 = icmp ne %struct.zforce_ts_platdata* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.zforce_ts_platdata* @ERR_PTR(i32 %25)
  store %struct.zforce_ts_platdata* %26, %struct.zforce_ts_platdata** %2, align 8
  br label %53

27:                                               ; preds = %15
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %4, align 8
  %30 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %29, i32 0, i32 1
  %31 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.zforce_ts_platdata* @ERR_PTR(i32 %37)
  store %struct.zforce_ts_platdata* %38, %struct.zforce_ts_platdata** %2, align 8
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %4, align 8
  %42 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %41, i32 0, i32 0
  %43 = call i64 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.zforce_ts_platdata* @ERR_PTR(i32 %49)
  store %struct.zforce_ts_platdata* %50, %struct.zforce_ts_platdata** %2, align 8
  br label %53

51:                                               ; preds = %39
  %52 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %4, align 8
  store %struct.zforce_ts_platdata* %52, %struct.zforce_ts_platdata** %2, align 8
  br label %53

53:                                               ; preds = %51, %45, %33, %21, %11
  %54 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %2, align 8
  ret %struct.zforce_ts_platdata* %54
}

declare dso_local %struct.zforce_ts_platdata* @ERR_PTR(i32) #1

declare dso_local %struct.zforce_ts_platdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
