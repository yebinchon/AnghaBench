; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_i2c_of_match_device_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_i2c_of_match_device_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i8* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.of_device_id* (%struct.of_device_id*, %struct.i2c_client*)* @i2c_of_match_device_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.of_device_id* @i2c_of_match_device_sysfs(%struct.of_device_id* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.of_device_id*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8*, align 8
  store %struct.of_device_id* %0, %struct.of_device_id** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  br label %7

7:                                                ; preds = %49, %2
  %8 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %9 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %7
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @sysfs_streq(i32 %17, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  store %struct.of_device_id* %24, %struct.of_device_id** %3, align 8
  br label %53

25:                                               ; preds = %14
  %26 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 44)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  br label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @sysfs_streq(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  store %struct.of_device_id* %47, %struct.of_device_id** %3, align 8
  br label %53

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %51 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %50, i32 1
  store %struct.of_device_id* %51, %struct.of_device_id** %4, align 8
  br label %7

52:                                               ; preds = %7
  store %struct.of_device_id* null, %struct.of_device_id** %3, align 8
  br label %53

53:                                               ; preds = %52, %46, %23
  %54 = load %struct.of_device_id*, %struct.of_device_id** %3, align 8
  ret %struct.of_device_id* %54
}

declare dso_local i64 @sysfs_streq(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
