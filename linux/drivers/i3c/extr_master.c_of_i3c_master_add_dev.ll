; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.device_node*)* @of_i3c_master_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_i3c_master_add_dev(%struct.i3c_master_controller* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %9 = icmp ne %struct.i3c_master_controller* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @of_property_read_u32_array(%struct.device_node* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %16
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %34 = call i32 @of_i3c_master_add_i2c_boardinfo(%struct.i3c_master_controller* %31, %struct.device_node* %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %39 = call i32 @of_i3c_master_add_i3c_boardinfo(%struct.i3c_master_controller* %36, %struct.device_node* %37, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %24, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @of_i3c_master_add_i2c_boardinfo(%struct.i3c_master_controller*, %struct.device_node*, i32*) #1

declare dso_local i32 @of_i3c_master_add_i3c_boardinfo(%struct.i3c_master_controller*, %struct.device_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
