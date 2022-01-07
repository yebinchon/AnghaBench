; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrfld_extcon_data = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@BCOVE_USBIDSTS = common dso_local global i32 0, align 4
@BCOVE_USBIDSTS_FLOAT = common dso_local global i32 0, align 4
@INTEL_USB_ID_FLOAT = common dso_local global i32 0, align 4
@BCOVE_USBIDSTS_RARBRC_MASK = common dso_local global i32 0, align 4
@BCOVE_USBIDSTS_RARBRC_SHIFT = common dso_local global i32 0, align 4
@INTEL_USB_RID_A = common dso_local global i32 0, align 4
@INTEL_USB_RID_B = common dso_local global i32 0, align 4
@INTEL_USB_RID_C = common dso_local global i32 0, align 4
@BCOVE_USBIDSTS_GND = common dso_local global i32 0, align 4
@INTEL_USB_ID_GND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrfld_extcon_data*)* @mrfld_extcon_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_extcon_get_id(%struct.mrfld_extcon_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrfld_extcon_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mrfld_extcon_data* %0, %struct.mrfld_extcon_data** %3, align 8
  %8 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %9 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = load i32, i32* @BCOVE_USBIDSTS, align 4
  %13 = call i32 @regmap_read(%struct.regmap* %11, i32 %12, i32* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BCOVE_USBIDSTS_FLOAT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @INTEL_USB_ID_FLOAT, align 4
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BCOVE_USBIDSTS_RARBRC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @BCOVE_USBIDSTS_RARBRC_SHIFT, align 4
  %30 = lshr i32 %28, %29
  switch i32 %30, label %37 [
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* @INTEL_USB_RID_A, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %25
  %34 = load i32, i32* @INTEL_USB_RID_B, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %25
  %36 = load i32, i32* @INTEL_USB_RID_C, align 4
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BCOVE_USBIDSTS_GND, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %42 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call signext i8 @BCOVE_MAJOR(i32 %43)
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 65, %45
  switch i32 %46, label %65 [
    i32 65, label %47
    i32 66, label %56
  ]

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @INTEL_USB_ID_GND, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @INTEL_USB_ID_FLOAT, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %2, align 4
  br label %67

56:                                               ; preds = %37
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @INTEL_USB_ID_FLOAT, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @INTEL_USB_ID_GND, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %37
  %66 = load i32, i32* @INTEL_USB_ID_FLOAT, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %63, %54, %35, %33, %31, %23, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local signext i8 @BCOVE_MAJOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
