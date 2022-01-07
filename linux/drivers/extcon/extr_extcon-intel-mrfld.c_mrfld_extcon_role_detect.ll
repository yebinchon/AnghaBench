; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_role_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_role_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrfld_extcon_data = type { i32 }

@INTEL_USB_ID_GND = common dso_local global i32 0, align 4
@INTEL_USB_RID_A = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrfld_extcon_data*)* @mrfld_extcon_role_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_extcon_role_detect(%struct.mrfld_extcon_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrfld_extcon_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mrfld_extcon_data* %0, %struct.mrfld_extcon_data** %3, align 8
  %7 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %8 = call i32 @mrfld_extcon_get_id(%struct.mrfld_extcon_data* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @INTEL_USB_ID_GND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @INTEL_USB_RID_A, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ true, %13 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %26 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EXTCON_USB_HOST, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @extcon_set_state_sync(i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mrfld_extcon_get_id(%struct.mrfld_extcon_data*) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
