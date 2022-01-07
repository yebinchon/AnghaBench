; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid.c_ishtp_hid_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid.c_ishtp_hid_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.ishtp_hid_data* }
%struct.ishtp_hid_data = type { i32, i32 }
%struct.hid_report = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i32)* @ishtp_hid_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_hid_request(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ishtp_hid_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %12, align 8
  store %struct.ishtp_hid_data* %13, %struct.ishtp_hid_data** %7, align 8
  %14 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %15 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = ashr i32 %17, 3
  %19 = add nsw i32 %18, 1
  %20 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %21 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %8, align 4
  store i32 4, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %7, align 8
  %30 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %68 [
    i32 129, label %32
    i32 128, label %43
  ]

32:                                               ; preds = %3
  %33 = load %struct.ishtp_hid_data*, %struct.ishtp_hid_data** %7, align 8
  %34 = getelementptr inbounds %struct.ishtp_hid_data, %struct.ishtp_hid_data* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %37 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %40 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hid_ishtp_get_report(%struct.hid_device* %35, i64 %38, i32 %41)
  br label %68

43:                                               ; preds = %3
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 7
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 %45, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %68

51:                                               ; preds = %43
  %52 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = ptrtoint i8* %56 to i32
  %58 = call i32 @hid_output_report(%struct.hid_report* %52, i32 %57)
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %63 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @hid_ishtp_set_feature(%struct.hid_device* %59, i8* %60, i32 %61, i64 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @kfree(i8* %66)
  br label %68

68:                                               ; preds = %50, %3, %51, %32
  ret void
}

declare dso_local i32 @hid_ishtp_get_report(%struct.hid_device*, i64, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_output_report(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_ishtp_set_feature(%struct.hid_device*, i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
