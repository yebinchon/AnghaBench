; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_bt_interlaced_codes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_bt_interlaced_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@CSI_CCIR_ERR_DET_EN = common dso_local global i32 0, align 4
@CSI_CCIR_CODE_1 = common dso_local global i32 0, align 4
@CSI_CCIR_CODE_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"capture field swap\0A\00", align 1
@CSI_CCIR_CODE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_csi*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32)* @ipu_csi_set_bt_interlaced_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csi_set_bt_interlaced_codes(%struct.ipu_csi* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt* %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_csi*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ipu_csi_translate_field(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ipu_csi_translate_field(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @V4L2_FIELD_IS_SEQUENTIAL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @V4L2_FIELD_IS_SEQUENTIAL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %4
  %34 = phi i1 [ false, %25 ], [ false, %4 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %40 = load i32, i32* @CSI_CCIR_ERR_DET_EN, align 4
  %41 = or i32 263574, %40
  %42 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %43 = call i32 @ipu_csi_write(%struct.ipu_csi* %39, i32 %41, i32 %42)
  %44 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %45 = load i32, i32* @CSI_CCIR_CODE_2, align 4
  %46 = call i32 @ipu_csi_write(%struct.ipu_csi* %44, i32 853983, i32 %45)
  br label %62

47:                                               ; preds = %33
  %48 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %49 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %55 = load i32, i32* @CSI_CCIR_ERR_DET_EN, align 4
  %56 = or i32 853983, %55
  %57 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %58 = call i32 @ipu_csi_write(%struct.ipu_csi* %54, i32 %56, i32 %57)
  %59 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %60 = load i32, i32* @CSI_CCIR_CODE_2, align 4
  %61 = call i32 @ipu_csi_write(%struct.ipu_csi* %59, i32 263574, i32 %60)
  br label %62

62:                                               ; preds = %47, %38
  %63 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %64 = load i32, i32* @CSI_CCIR_CODE_3, align 4
  %65 = call i32 @ipu_csi_write(%struct.ipu_csi* %63, i32 16711680, i32 %64)
  ret i32 0
}

declare dso_local i32 @ipu_csi_translate_field(i32, i32) #1

declare dso_local i64 @V4L2_FIELD_IS_SEQUENTIAL(i32) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
