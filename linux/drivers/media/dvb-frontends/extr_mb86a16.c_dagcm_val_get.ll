; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_dagcm_val_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_dagcm_val_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*)* @dagcm_val_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dagcm_val_get(%struct.mb86a16_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb86a16_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  %7 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %8 = call i32 @mb86a16_read(%struct.mb86a16_state* %7, i32 69, i8* %6)
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %13 = call i32 @mb86a16_read(%struct.mb86a16_state* %12, i32 70, i8* %5)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %24

16:                                               ; preds = %11
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %15, %10
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @MB86A16_ERROR, align 4
  %27 = call i32 @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EREMOTEIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
