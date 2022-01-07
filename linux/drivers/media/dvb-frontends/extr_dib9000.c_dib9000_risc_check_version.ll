; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_check_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32 }

@OUT_MSG_REQ_VERSION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IN_MSG_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RISC: ver: %d.%02d (IC: %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RISC: invalid firmware version\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RISC: valid firmware version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*)* @dib9000_risc_check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_risc_check_version(%struct.dib9000_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib9000_state*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %8 = load i32, i32* @OUT_MSG_REQ_VERSION, align 4
  %9 = call i64 @dib9000_mbx_send(%struct.dib9000_state* %7, i32 %8, i32* %6, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %16 = load i32, i32* @IN_MSG_VERSION, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %18 = call i64 @dib9000_mbx_get_message(%struct.dib9000_state* %15, i32 %16, i32* %17, i32* %5)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %14
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 10
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 1023
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %36, %38
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 10
  %43 = icmp ne i32 %42, 7
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %23
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 1023
  switch i32 %49, label %51 [
    i32 11, label %50
    i32 12, label %50
    i32 14, label %50
    i32 15, label %50
    i32 16, label %50
    i32 17, label %50
  ]

50:                                               ; preds = %47, %47, %47, %47, %47, %47
  br label %55

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %51, %44, %20, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @dib9000_mbx_send(%struct.dib9000_state*, i32, i32*, i32) #1

declare dso_local i64 @dib9000_mbx_get_message(%struct.dib9000_state*, i32, i32*, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
