; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_compute_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_compute_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_device = type { i32 }
%struct.mt_application = type { i32, i32 }
%struct.mt_usages = type { i32* }
%struct.input_dev = type { i32 }

@MT_QUIRK_SLOT_IS_CONTACTID = common dso_local global i32 0, align 4
@MT_QUIRK_CYPRESS = common dso_local global i32 0, align 4
@MT_QUIRK_SLOT_IS_CONTACTNUMBER = common dso_local global i32 0, align 4
@MT_QUIRK_SLOT_IS_CONTACTID_MINUS_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt_device*, %struct.mt_application*, %struct.mt_usages*, %struct.input_dev*)* @mt_compute_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_compute_slot(%struct.mt_device* %0, %struct.mt_application* %1, %struct.mt_usages* %2, %struct.input_dev* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt_device*, align 8
  %7 = alloca %struct.mt_application*, align 8
  %8 = alloca %struct.mt_usages*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.mt_device* %0, %struct.mt_device** %6, align 8
  store %struct.mt_application* %1, %struct.mt_application** %7, align 8
  store %struct.mt_usages* %2, %struct.mt_usages** %8, align 8
  store %struct.input_dev* %3, %struct.input_dev** %9, align 8
  %11 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %12 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @MT_QUIRK_SLOT_IS_CONTACTID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.mt_usages*, %struct.mt_usages** %8, align 8
  %20 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MT_QUIRK_CYPRESS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %30 = load %struct.mt_usages*, %struct.mt_usages** %8, align 8
  %31 = call i32 @cypress_compute_slot(%struct.mt_application* %29, %struct.mt_usages* %30)
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MT_QUIRK_SLOT_IS_CONTACTNUMBER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %39 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %59

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MT_QUIRK_SLOT_IS_CONTACTID_MINUS_ONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.mt_usages*, %struct.mt_usages** %8, align 8
  %48 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %54 = load %struct.mt_usages*, %struct.mt_usages** %8, align 8
  %55 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %53, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %46, %37, %28, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @cypress_compute_slot(%struct.mt_application*, %struct.mt_usages*) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
