; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*, i32)* @lgdt3306a_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_power(%struct.lgdt3306a_state* %0, i32 %1) #0 {
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @dbg_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %12 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %11, i32 0, i32 7, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @lg_chkerr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %19 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %18, i32 0, i32 0, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @lg_chkerr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %27 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %26, i32 0, i32 7, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @lg_chkerr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %25
  %33 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %34 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %33, i32 0, i32 0, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @lg_chkerr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %38, %31, %23, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @dbg_info(i8*, i32) #1

declare dso_local i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state*, i32, i32, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
