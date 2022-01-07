; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_chg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_chg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32, i32, i32, i32 }

@MAX14577_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SLOW = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_FAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*)* @max14577_muic_chg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_chg_handler(%struct.max14577_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max14577_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %8 = load i32, i32* @MAX14577_CABLE_GROUP_CHG, align 4
  %9 = call i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %11 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %19 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %76 [
    i32 128, label %23
    i32 133, label %47
    i32 132, label %54
    i32 129, label %61
    i32 130, label %68
    i32 131, label %75
    i32 134, label %75
  ]

23:                                               ; preds = %1
  %24 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %25 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %26 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @max14577_muic_set_path(%struct.max14577_muic_info* %24, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %23
  %35 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %36 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EXTCON_USB, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @extcon_set_state_sync(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %42 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @extcon_set_state_sync(i32 %43, i32 %44, i32 %45)
  br label %88

47:                                               ; preds = %1
  %48 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %49 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @extcon_set_state_sync(i32 %50, i32 %51, i32 %52)
  br label %88

54:                                               ; preds = %1
  %55 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %56 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @extcon_set_state_sync(i32 %57, i32 %58, i32 %59)
  br label %88

61:                                               ; preds = %1
  %62 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %63 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EXTCON_CHG_USB_SLOW, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @extcon_set_state_sync(i32 %64, i32 %65, i32 %66)
  br label %88

68:                                               ; preds = %1
  %69 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %70 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EXTCON_CHG_USB_FAST, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @extcon_set_state_sync(i32 %71, i32 %72, i32 %73)
  br label %88

75:                                               ; preds = %1, %1
  br label %88

76:                                               ; preds = %1
  %77 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %78 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %75, %68, %61, %54, %47, %34
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %76, %32
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @max14577_muic_set_path(%struct.max14577_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
