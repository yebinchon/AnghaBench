; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_make_sensor_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_make_sensor_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sensor_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ibm,pir\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" phy%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ibm,chip-id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.sensor_data*, i8*)* @make_sensor_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_sensor_label(%struct.device_node* %0, %struct.sensor_data* %1, i8* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sensor_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.sensor_data* %1, %struct.sensor_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %11 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 (i32, i32, i8*, ...) @snprintf(i32 %12, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @get_logical_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %25 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = call i64 (i32, i32, i8*, ...) @snprintf(i32 %30, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %53

38:                                               ; preds = %18
  %39 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %40 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = call i64 (i32, i32, i8*, ...) @snprintf(i32 %45, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %38, %23
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %60 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65535
  %71 = call i64 (i32, i32, i8*, ...) @snprintf(i32 %65, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %58, %54
  ret void
}

declare dso_local i64 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @get_logical_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
