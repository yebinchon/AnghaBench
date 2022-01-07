; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_identify_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_identify_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32* }

@GET_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GET_DEVICE_ID command failed, error: %d\0A\00", align 1
@IMS_PCU_DATA_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Detected device ID: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i32*)* @ims_pcu_identify_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_identify_type(%struct.ims_pcu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ims_pcu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ims_pcu*, %struct.ims_pcu** %4, align 8
  %8 = load i32, i32* @GET_DEVICE_ID, align 4
  %9 = call i32 @ims_pcu_execute_query(%struct.ims_pcu* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ims_pcu*, %struct.ims_pcu** %4, align 8
  %14 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.ims_pcu*, %struct.ims_pcu** %4, align 8
  %21 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @IMS_PCU_DATA_OFFSET, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ims_pcu*, %struct.ims_pcu** %4, align 8
  %28 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ims_pcu_execute_query(%struct.ims_pcu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
