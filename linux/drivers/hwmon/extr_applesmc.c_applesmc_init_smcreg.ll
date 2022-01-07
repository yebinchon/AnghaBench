; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_smcreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_smcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INIT_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"init_smcreg() took %d ms\0A\00", align 1
@INIT_WAIT_MSECS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @applesmc_init_smcreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_init_smcreg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @INIT_TIMEOUT_MSECS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = call i32 (...) @applesmc_init_smcreg_try()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %1, align 4
  br label %31

19:                                               ; preds = %8
  %20 = load i64, i64* @INIT_WAIT_MSECS, align 8
  %21 = call i32 @msleep(i64 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @INIT_WAIT_MSECS, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %4

28:                                               ; preds = %4
  %29 = call i32 (...) @applesmc_destroy_smcreg()
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @applesmc_init_smcreg_try(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @applesmc_destroy_smcreg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
