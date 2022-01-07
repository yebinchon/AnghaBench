; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32, i32, i32, i32 }

@GET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GET_INFO command failed, error: %d\0A\00", align 1
@IMS_PCU_INFO_PART_OFFSET = common dso_local global i64 0, align 8
@IMS_PCU_INFO_DOM_OFFSET = common dso_local global i64 0, align 8
@IMS_PCU_INFO_SERIAL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_get_info(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %5 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %6 = load i32, i32* @GET_INFO, align 4
  %7 = call i32 @ims_pcu_execute_query(%struct.ims_pcu* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %12 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %19 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %22 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @IMS_PCU_INFO_PART_OFFSET, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @memcpy(i32 %20, i32* %25, i32 4)
  %27 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %28 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %31 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @IMS_PCU_INFO_DOM_OFFSET, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @memcpy(i32 %29, i32* %34, i32 4)
  %36 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %37 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %40 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @IMS_PCU_INFO_SERIAL_OFFSET, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @memcpy(i32 %38, i32* %43, i32 4)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %17, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ims_pcu_execute_query(%struct.ims_pcu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
