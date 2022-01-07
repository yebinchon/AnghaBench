; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_destroy_application_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_destroy_application_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IMS_PCU_PCU_B_DEVICE_ID = common dso_local global i64 0, align 8
@ims_pcu_ofn_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*)* @ims_pcu_destroy_application_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_destroy_application_mode(%struct.ims_pcu* %0) #0 {
  %2 = alloca %struct.ims_pcu*, align 8
  store %struct.ims_pcu* %0, %struct.ims_pcu** %2, align 8
  %3 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %4 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %9 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = call i32 (...) @mb()
  %11 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %12 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %17 = call i32 @ims_pcu_destroy_gamepad(%struct.ims_pcu* %16)
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %20 = call i32 @ims_pcu_destroy_buttons(%struct.ims_pcu* %19)
  %21 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %22 = call i32 @ims_pcu_destroy_backlight(%struct.ims_pcu* %21)
  %23 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %24 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IMS_PCU_PCU_B_DEVICE_ID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %30 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @sysfs_remove_group(i32* %32, i32* @ims_pcu_ofn_attr_group)
  br label %34

34:                                               ; preds = %28, %18
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @ims_pcu_destroy_gamepad(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_destroy_buttons(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_destroy_backlight(%struct.ims_pcu*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
