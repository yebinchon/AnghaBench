; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }
%struct.lgdt3305_reg = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"writing %d registers...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.lgdt3305_reg*, i32)* @lgdt3305_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_write_regs(%struct.lgdt3305_state* %0, %struct.lgdt3305_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lgdt3305_state*, align 8
  %6 = alloca %struct.lgdt3305_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %5, align 8
  store %struct.lgdt3305_reg* %1, %struct.lgdt3305_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @lg_reg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %19 = load %struct.lgdt3305_reg*, %struct.lgdt3305_reg** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lgdt3305_reg, %struct.lgdt3305_reg* %19, i64 %21
  %23 = getelementptr inbounds %struct.lgdt3305_reg, %struct.lgdt3305_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lgdt3305_reg*, %struct.lgdt3305_reg** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lgdt3305_reg, %struct.lgdt3305_reg* %25, i64 %27
  %29 = getelementptr inbounds %struct.lgdt3305_reg, %struct.lgdt3305_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %18, i32 %24, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @lg_fail(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %12

41:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @lg_reg(i8*, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i64 @lg_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
