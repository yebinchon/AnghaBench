; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_get_receiver_id_list_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_get_receiver_id_list_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDCP_2_2_RXINFO_LEN = common dso_local global i32 0, align 4
@DP_HDCP_2_2_REG_RXINFO_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HDCP_2_2_MAX_DEVICE_COUNT = common dso_local global i32 0, align 4
@HDCP_2_2_RECEIVER_IDS_MAX_LEN = common dso_local global i32 0, align 4
@HDCP_2_2_RECEIVER_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @get_receiver_id_list_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_receiver_id_list_size(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %9 = load i32, i32* @HDCP_2_2_RXINFO_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @DP_HDCP_2_2_REG_RXINFO_OFFSET, align 4
  %17 = bitcast i32* %12 to i8*
  %18 = load i32, i32* @HDCP_2_2_RXINFO_LEN, align 4
  %19 = call i32 @drm_dp_dpcd_read(i32* %15, i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HDCP_2_2_RXINFO_LEN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %58

33:                                               ; preds = %1
  %34 = getelementptr inbounds i32, i32* %12, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = call i32 @HDCP_2_2_DEV_COUNT_HI(i32 %35)
  %37 = shl i32 %36, 4
  %38 = getelementptr inbounds i32, i32* %12, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HDCP_2_2_DEV_COUNT_LO(i32 %39)
  %41 = or i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HDCP_2_2_MAX_DEVICE_COUNT, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @HDCP_2_2_MAX_DEVICE_COUNT, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* @HDCP_2_2_RECEIVER_IDS_MAX_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 4, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HDCP_2_2_RECEIVER_ID_LEN, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = add i64 %50, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %47, %31
  %59 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i8*, i32) #2

declare dso_local i32 @HDCP_2_2_DEV_COUNT_HI(i32) #2

declare dso_local i32 @HDCP_2_2_DEV_COUNT_LO(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
