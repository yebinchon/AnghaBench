; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_jig_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_jig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32, i32 }

@CTRL1_SW_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@CTRL1_SW_USB = common dso_local global i32 0, align 4
@CTRL1_SW_UART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to detect %s jig cable\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXTCON_JIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*, i32, i32)* @max14577_muic_jig_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_jig_handler(%struct.max14577_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max14577_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @CTRL1_SW_OPEN, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %12 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %21
    i32 130, label %23
  ]

21:                                               ; preds = %3, %3
  %22 = load i32, i32* @CTRL1_SW_USB, align 4
  store i32 %22, i32* %9, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* @CTRL1_SW_UART, align 4
  store i32 %24, i32* %9, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %27 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %23, %21
  %37 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @max14577_muic_set_path(%struct.max14577_muic_info* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %36
  %46 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %47 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EXTCON_JIG, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @extcon_set_state_sync(i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %43, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @max14577_muic_set_path(%struct.max14577_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
