; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid.c_ishtp_raw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid.c_ishtp_raw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.ishtp_hid_data* }
%struct.ishtp_hid_data = type { i32, i64, i32, i32* }

@HID_OUTPUT_REPORT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8, i32)* @ishtp_raw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_raw_request(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.ishtp_hid_data*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 0
  %20 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %19, align 8
  store %struct.ishtp_hid_data* %20, %struct.ishtp_hid_data** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 4, i32* %17, align 4
  %21 = load i8, i8* %12, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @HID_OUTPUT_REPORT, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %81

29:                                               ; preds = %6
  %30 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %14, align 8
  %31 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %76 [
    i32 129, label %33
    i32 128, label %46
  ]

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %14, align 8
  %36 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %14, align 8
  %39 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %14, align 8
  %41 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %43 = load i8, i8* %9, align 1
  %44 = load i8, i8* %12, align 1
  %45 = call i32 @hid_ishtp_get_report(%struct.hid_device* %42, i8 zeroext %43, i8 zeroext %44)
  br label %76

46:                                               ; preds = %29
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = add i64 %51, 7
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kzalloc(i64 %52, i32 %53)
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %81

60:                                               ; preds = %46
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @memcpy(i32 %65, i32* %66, i64 %67)
  %69 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i8, i8* %9, align 1
  %73 = call i32 @hid_ishtp_set_feature(%struct.hid_device* %69, i8* %70, i64 %71, i8 zeroext %72)
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @kfree(i8* %74)
  br label %76

76:                                               ; preds = %29, %60, %33
  %77 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %78 = call i32 @hid_hw_wait(%struct.hid_device* %77)
  %79 = load i64, i64* %11, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %57, %26
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @hid_ishtp_get_report(%struct.hid_device*, i8 zeroext, i8 zeroext) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @hid_ishtp_set_feature(%struct.hid_device*, i8*, i64, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hid_hw_wait(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
