; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_handle_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_handle_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to update muic register\0A\00", align 1
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to detect %s usb cable\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*, i32, i32)* @max8997_muic_handle_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_handle_usb(%struct.max8997_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max8997_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %10 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %11 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @max8997_muic_set_path(%struct.max8997_muic_info* %9, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %19 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %45 [
    i32 128, label %25
    i32 129, label %32
  ]

25:                                               ; preds = %23
  %26 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %27 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EXTCON_USB_HOST, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @extcon_set_state_sync(i32 %28, i32 %29, i32 %30)
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %34 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EXTCON_USB, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @extcon_set_state_sync(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %40 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @extcon_set_state_sync(i32 %41, i32 %42, i32 %43)
  br label %56

45:                                               ; preds = %23
  %46 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %47 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %32, %25
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %45, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @max8997_muic_set_path(%struct.max8997_muic_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
