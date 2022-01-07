; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_handle_dock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_handle_dock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32 }

@CONTROL1_SW_AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to update muic register\0A\00", align 1
@EXTCON_DOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to detect %s dock device\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*, i32, i32)* @max8997_muic_handle_dock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_handle_dock(%struct.max8997_muic_info* %0, i32 %1, i32 %2) #0 {
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
  %10 = load i32, i32* @CONTROL1_SW_AUDIO, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @max8997_muic_set_path(%struct.max8997_muic_info* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %17 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %30 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %21, %21
  %24 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %25 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EXTCON_DOCK, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @extcon_set_state_sync(i32 %26, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %21
  %31 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %32 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %30, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
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
