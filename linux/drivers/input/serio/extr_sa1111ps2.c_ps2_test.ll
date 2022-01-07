; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2if = type { i64 }

@PS2CR_FKC = common dso_local global i32 0, align 4
@PS2STAT_KBD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PS/2 interface test failed[1]: %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PS2STAT_KBC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PS/2 interface test failed[2]: %02x\0A\00", align 1
@PS2CR_FKD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"PS/2 interface test failed[3]: %02x\0A\00", align 1
@PS2CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2if*)* @ps2_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_test(%struct.ps2if* %0) #0 {
  %2 = alloca %struct.ps2if*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ps2if* %0, %struct.ps2if** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ps2if*, %struct.ps2if** %2, align 8
  %6 = load i32, i32* @PS2CR_FKC, align 4
  %7 = call i32 @ps2_test_one(%struct.ps2if* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PS2STAT_KBD, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ps2if*, %struct.ps2if** %2, align 8
  %18 = call i32 @ps2_test_one(%struct.ps2if* %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PS2STAT_KBC, align 4
  %21 = load i32, i32* @PS2STAT_KBD, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.ps2if*, %struct.ps2if** %2, align 8
  %31 = load i32, i32* @PS2CR_FKD, align 4
  %32 = call i32 @ps2_test_one(%struct.ps2if* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PS2STAT_KBC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.ps2if*, %struct.ps2if** %2, align 8
  %43 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PS2CR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 0, i64 %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ps2_test_one(%struct.ps2if*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
