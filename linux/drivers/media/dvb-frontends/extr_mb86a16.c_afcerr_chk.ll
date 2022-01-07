; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_afcerr_chk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_afcerr_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*)* @afcerr_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afcerr_chk(%struct.mb86a16_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb86a16_state*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  %9 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %10 = call i32 @mb86a16_read(%struct.mb86a16_state* %9, i32 14, i8* %4)
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %15 = call i32 @mb86a16_read(%struct.mb86a16_state* %14, i32 15, i8* %5)
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %40

18:                                               ; preds = %13
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 2048
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 4096
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %35 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %37, 8192
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %17, %12
  %41 = load i32, i32* @verbose, align 4
  %42 = load i32, i32* @MB86A16_ERROR, align 4
  %43 = call i32 @dprintk(i32 %41, i32 %42, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
