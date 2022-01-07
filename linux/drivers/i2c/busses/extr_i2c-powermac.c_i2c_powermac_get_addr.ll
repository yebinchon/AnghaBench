; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.pmac_i2c_bus = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"i2c-address\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cereal\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"deq\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No i2c address for %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.pmac_i2c_bus*, %struct.device_node*)* @i2c_powermac_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_get_addr(%struct.i2c_adapter* %0, %struct.pmac_i2c_bus* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.pmac_i2c_bus*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.pmac_i2c_bus* %1, %struct.pmac_i2c_bus** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = call i32* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @be32_to_cpup(i32* %19)
  %21 = and i32 %20, 255
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %14, %3
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @be32_to_cpup(i32* %33)
  %35 = and i32 %34, 255
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %28, %23
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call i64 @of_node_name_eq(%struct.device_node* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 96, i32* %4, align 4
  br label %53

42:                                               ; preds = %37
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = call i64 @of_node_name_eq(%struct.device_node* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 52, i32* %4, align 4
  br label %53

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %51)
  store i32 -1, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %46, %41, %32, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
