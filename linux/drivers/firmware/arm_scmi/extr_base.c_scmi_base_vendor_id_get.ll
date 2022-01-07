; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_vendor_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_vendor_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_revision_info* }
%struct.scmi_revision_info = type { i8*, i8* }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BASE_DISCOVER_SUB_VENDOR = common dso_local global i32 0, align 4
@BASE_DISCOVER_VENDOR = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32)* @scmi_base_vendor_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_base_vendor_id_get(%struct.scmi_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scmi_xfer*, align 8
  %11 = alloca %struct.scmi_revision_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %13 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %12, i32 0, i32 0
  %14 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %13, align 8
  store %struct.scmi_revision_info* %14, %struct.scmi_revision_info** %11, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @BASE_DISCOVER_SUB_VENDOR, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %11, align 8
  %20 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %11, align 8
  %23 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i8* %24)
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @BASE_DISCOVER_VENDOR, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %11, align 8
  %29 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %11, align 8
  %32 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i8* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SCMI_PROTOCOL_BASE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %36, i32 %37, i32 %38, i32 0, i32 %39, %struct.scmi_xfer** %10)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %35
  %46 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %47 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %48 = call i32 @scmi_do_xfer(%struct.scmi_handle* %46, %struct.scmi_xfer* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %54 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memcpy(i8* %52, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %61 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %62 = call i32 @scmi_xfer_put(%struct.scmi_handle* %60, %struct.scmi_xfer* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
