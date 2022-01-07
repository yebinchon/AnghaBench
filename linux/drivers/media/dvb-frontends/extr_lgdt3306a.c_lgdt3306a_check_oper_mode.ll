; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_check_oper_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_check_oper_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"VSB\0A\00", align 1
@LG3306_VSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"QAM256\0A\00", align 1
@LG3306_QAM256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"QAM64\0A\00", align 1
@LG3306_QAM64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@LG3306_UNKNOWN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_check_oper_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_check_oper_mode(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %7 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %6, i32 129, i32* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 @dbg_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @LG3306_VSB, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %24 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %23, i32 166, i32* %4)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @dbg_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @LG3306_QAM256, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %28
  %38 = call i32 @dbg_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @LG3306_QAM64, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %27, %10
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @LG3306_UNKNOWN_MODE, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %37, %34, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @dbg_info(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
