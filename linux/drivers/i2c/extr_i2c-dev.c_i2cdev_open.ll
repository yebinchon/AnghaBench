; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.i2c_client* }
%struct.i2c_client = type { %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i2c-dev %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @i2cdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %11)
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %14 = icmp ne %struct.i2c_adapter* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.i2c_client* @kzalloc(i32 16, i32 %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %22 = icmp ne %struct.i2c_client* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %25 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I2C_NAME_SIZE, align 4
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  store %struct.i2c_adapter* %37, %struct.i2c_adapter** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %23, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
