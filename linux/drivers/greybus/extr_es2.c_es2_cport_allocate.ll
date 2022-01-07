; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32, i32, %struct.ida }
%struct.ida = type { i32 }
%struct.es2_ap_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"cport %d not available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GB_CONNECTION_FLAG_OFFLOADED = common dso_local global i64 0, align 8
@GB_CONNECTION_FLAG_CDSI1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"CDSI1 already in use\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_host_device*, i32, i64)* @es2_cport_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_cport_allocate(%struct.gb_host_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_host_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.es2_ap_dev*, align 8
  %9 = alloca %struct.ida*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %13 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %12)
  store %struct.es2_ap_dev* %13, %struct.es2_ap_dev** %8, align 8
  %14 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %15 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %14, i32 0, i32 2
  store %struct.ida* %15, %struct.ida** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %24 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %19 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %18, i32 0, i32 1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @GB_CONNECTION_FLAG_OFFLOADED, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @GB_CONNECTION_FLAG_CDSI1, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %36 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %41 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %40, i32 0, i32 1
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %34
  %46 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %47 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  store i32 128, i32* %4, align 4
  br label %79

48:                                               ; preds = %29, %24
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  %52 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %53 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %73

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %58 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %72

65:                                               ; preds = %55
  %66 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %67 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %66, i32 0, i32 1
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.ida*, %struct.ida** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @ida_simple_get(%struct.ida* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %65, %45, %39, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ida_simple_get(%struct.ida*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
