; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_i2c_boardinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_i2c_boardinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_3__, %struct.device }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_dev_boardinfo = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"I2C device with 10 bit address not supported.\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.device_node*, i32*)* @of_i3c_master_add_i2c_boardinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_i3c_master_add_i2c_boardinfo(%struct.i3c_master_controller* %0, %struct.device_node* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i3c_master_controller*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_dev_boardinfo*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %12 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.device*, %struct.device** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.i2c_dev_boardinfo* @devm_kzalloc(%struct.device* %13, i32 12, i32 %14)
  store %struct.i2c_dev_boardinfo* %15, %struct.i2c_dev_boardinfo** %8, align 8
  %16 = load %struct.i2c_dev_boardinfo*, %struct.i2c_dev_boardinfo** %8, align 8
  %17 = icmp ne %struct.i2c_dev_boardinfo* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = load %struct.i2c_dev_boardinfo*, %struct.i2c_dev_boardinfo** %8, align 8
  %25 = getelementptr inbounds %struct.i2c_dev_boardinfo, %struct.i2c_dev_boardinfo* %24, i32 0, i32 2
  %26 = call i32 @of_i2c_get_board_info(%struct.device* %22, %struct.device_node* %23, %struct.TYPE_4__* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %21
  %32 = load %struct.i2c_dev_boardinfo*, %struct.i2c_dev_boardinfo** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_dev_boardinfo, %struct.i2c_dev_boardinfo* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %41 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %40, i32 0, i32 1
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %31
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i2c_dev_boardinfo*, %struct.i2c_dev_boardinfo** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_dev_boardinfo, %struct.i2c_dev_boardinfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i2c_dev_boardinfo*, %struct.i2c_dev_boardinfo** %8, align 8
  %52 = getelementptr inbounds %struct.i2c_dev_boardinfo, %struct.i2c_dev_boardinfo* %51, i32 0, i32 0
  %53 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %54 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %52, i32* %55)
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i32 @of_node_get(%struct.device_node* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %39, %29, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.i2c_dev_boardinfo* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_i2c_get_board_info(%struct.device*, %struct.device_node*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
