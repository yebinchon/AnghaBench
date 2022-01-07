; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_verify_css_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_verify_css_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.css_header = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"module_type\00", align 1
@CSS_MODULE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"header_len\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"header_version\00", align 1
@CSS_HEADER_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"module_vendor\00", align 1
@CSS_MODULE_VENDOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"key_size\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"modulus_size\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exponent_size\00", align 1
@EXPONENT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.css_header*)* @verify_css_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_css_header(%struct.hfi1_devdata* %0, %struct.css_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.css_header*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.css_header* %1, %struct.css_header** %5, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %7 = load %struct.css_header*, %struct.css_header** %5, align 8
  %8 = getelementptr inbounds %struct.css_header, %struct.css_header* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CSS_MODULE_TYPE, align 4
  %11 = call i64 @invalid_header(%struct.hfi1_devdata* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %2
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %15 = load %struct.css_header*, %struct.css_header** %5, align 8
  %16 = getelementptr inbounds %struct.css_header, %struct.css_header* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @invalid_header(%struct.hfi1_devdata* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %13
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = load %struct.css_header*, %struct.css_header** %5, align 8
  %23 = getelementptr inbounds %struct.css_header, %struct.css_header* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CSS_HEADER_VERSION, align 4
  %26 = call i64 @invalid_header(%struct.hfi1_devdata* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %63, label %28

28:                                               ; preds = %20
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = load %struct.css_header*, %struct.css_header** %5, align 8
  %31 = getelementptr inbounds %struct.css_header, %struct.css_header* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CSS_MODULE_VENDOR, align 4
  %34 = call i64 @invalid_header(%struct.hfi1_devdata* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %28
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = load %struct.css_header*, %struct.css_header** %5, align 8
  %39 = getelementptr inbounds %struct.css_header, %struct.css_header* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KEY_SIZE, align 4
  %42 = sdiv i32 %41, 4
  %43 = call i64 @invalid_header(%struct.hfi1_devdata* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %47 = load %struct.css_header*, %struct.css_header** %5, align 8
  %48 = getelementptr inbounds %struct.css_header, %struct.css_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @KEY_SIZE, align 4
  %51 = sdiv i32 %50, 4
  %52 = call i64 @invalid_header(%struct.hfi1_devdata* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %56 = load %struct.css_header*, %struct.css_header** %5, align 8
  %57 = getelementptr inbounds %struct.css_header, %struct.css_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXPONENT_SIZE, align 4
  %60 = sdiv i32 %59, 4
  %61 = call i64 @invalid_header(%struct.hfi1_devdata* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54, %45, %36, %28, %20, %13, %2
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @invalid_header(%struct.hfi1_devdata*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
