; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"MAC,%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"deq\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MAC,tas3001\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MAC,tas3004\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"i2c-powermac: modalias failure on %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.device_node*, i32, i8*, i32)* @i2c_powermac_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_get_type(%struct.i2c_adapter* %0, %struct.device_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.device_node*, %struct.device_node** %8, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %15 = call i64 @of_modalias_node(%struct.device_node* %13, i8* %14, i32 16)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %6, align 4
  br label %47

22:                                               ; preds = %5
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = call i64 @of_node_name_eq(%struct.device_node* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 52
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %47

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 53
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %47

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load %struct.device_node*, %struct.device_node** %8, align 8
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %36, %29, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @of_modalias_node(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
