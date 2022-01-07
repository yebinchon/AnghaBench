; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_get_device_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_get_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }

@HIDPP_PAGE_GET_DEVICE_NAME_TYPE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hidpp_device*)* @hidpp_get_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hidpp_get_device_name(%struct.hidpp_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %11 = load i32, i32* @HIDPP_PAGE_GET_DEVICE_NAME_TYPE, align 4
  %12 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %10, i32 %11, i32* %5, i32* %4)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hidpp_devicenametype_get_count(%struct.hidpp_device* %17, i32 %18, i32* %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %62

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i8* null, i8** %2, align 8
  br label %62

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %44, %45
  %47 = call i32 @hidpp_devicenametype_get_device_name(%struct.hidpp_device* %37, i32 %38, i32 %39, i8* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @kfree(i8* %51)
  store i8* null, i8** %2, align 8
  br label %62

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @hidpp_prefix_name(i8** %7, i32 %59)
  %61 = load i8*, i8** %7, align 8
  store i8* %61, i8** %2, align 8
  br label %62

62:                                               ; preds = %57, %50, %30, %22, %15
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #1

declare dso_local i32 @hidpp_devicenametype_get_count(%struct.hidpp_device*, i32, i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hidpp_devicenametype_get_device_name(%struct.hidpp_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hidpp_prefix_name(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
