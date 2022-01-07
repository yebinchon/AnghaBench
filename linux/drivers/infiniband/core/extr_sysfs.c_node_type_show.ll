; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_node_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_node_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d: CA\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d: RNIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d: usNIC\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%d: usNIC UDP\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%d: unspecified\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%d: switch\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%d: router\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%d: <unknown>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @node_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_type_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.ib_device* @rdma_device_to_ibdev(%struct.device* %9)
  store %struct.ib_device* %10, %struct.ib_device** %8, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %56 [
    i32 134, label %14
    i32 131, label %20
    i32 129, label %26
    i32 128, label %32
    i32 130, label %38
    i32 132, label %44
    i32 133, label %50
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %3
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %47 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %53 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %3
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %59 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %50, %44, %38, %32, %26, %20, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ib_device* @rdma_device_to_ibdev(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
