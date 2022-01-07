; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_i2c_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_i2c_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"of_i2c: register %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"of_i2c: Failure registering %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.i2c_adapter*, %struct.device_node*)* @of_i2c_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @of_i2c_register_device(%struct.i2c_adapter* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_board_info, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.device_node* %11)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call i32 @of_i2c_get_board_info(i32* %14, %struct.device_node* %15, %struct.i2c_board_info* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.i2c_client* @ERR_PTR(i32 %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %3, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %23, %struct.i2c_board_info* %7)
  store %struct.i2c_client* %24, %struct.i2c_client** %6, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = icmp ne %struct.i2c_client* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 0
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.i2c_client* @ERR_PTR(i32 %33)
  store %struct.i2c_client* %34, %struct.i2c_client** %3, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %36, %struct.i2c_client** %3, align 8
  br label %37

37:                                               ; preds = %35, %27, %19
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  ret %struct.i2c_client* %38
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_i2c_get_board_info(i32*, %struct.device_node*, %struct.i2c_board_info*) #1

declare dso_local %struct.i2c_client* @ERR_PTR(i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
