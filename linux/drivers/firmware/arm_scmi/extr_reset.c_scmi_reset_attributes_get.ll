; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_reset_info = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PROTOCOL_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_RESET = common dso_local global i32 0, align 4
@NUM_RESET_DOMAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.scmi_reset_info*)* @scmi_reset_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_reset_attributes_get(%struct.scmi_handle* %0, %struct.scmi_reset_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.scmi_reset_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_xfer*, align 8
  %8 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.scmi_reset_info* %1, %struct.scmi_reset_info** %5, align 8
  %9 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %10 = load i32, i32* @PROTOCOL_ATTRIBUTES, align 4
  %11 = load i32, i32* @SCMI_PROTOCOL_RESET, align 4
  %12 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %9, i32 %10, i32 %11, i32 0, i32 4, %struct.scmi_xfer** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %19 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %20 = call i32 @scmi_do_xfer(%struct.scmi_handle* %18, %struct.scmi_xfer* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %25 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_unaligned_le32(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NUM_RESET_DOMAIN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %5, align 8
  %33 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %17
  %35 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %36 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %37 = call i32 @scmi_xfer_put(%struct.scmi_handle* %35, %struct.scmi_xfer* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
