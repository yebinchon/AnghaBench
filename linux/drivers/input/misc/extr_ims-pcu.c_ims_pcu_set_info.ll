; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32*, i32, i32, i32 }

@IMS_PCU_INFO_PART_OFFSET = common dso_local global i64 0, align 8
@IMS_PCU_INFO_DOM_OFFSET = common dso_local global i64 0, align 8
@IMS_PCU_INFO_SERIAL_OFFSET = common dso_local global i64 0, align 8
@SET_INFO = common dso_local global i32 0, align 4
@IMS_PCU_DATA_OFFSET = common dso_local global i64 0, align 8
@IMS_PCU_SET_INFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to update device information, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_set_info(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %5 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %6 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @IMS_PCU_INFO_PART_OFFSET, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %11 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @memcpy(i32* %9, i32 %12, i32 4)
  %14 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %15 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @IMS_PCU_INFO_DOM_OFFSET, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %20 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %18, i32 %21, i32 4)
  %23 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %24 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @IMS_PCU_INFO_SERIAL_OFFSET, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %29 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 4)
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %33 = load i32, i32* @SET_INFO, align 4
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @IMS_PCU_DATA_OFFSET, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* @IMS_PCU_SET_INFO_SIZE, align 4
  %40 = call i32 @ims_pcu_execute_command(%struct.ims_pcu* %32, i32 %33, i32* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %45 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ims_pcu_execute_command(%struct.ims_pcu*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
