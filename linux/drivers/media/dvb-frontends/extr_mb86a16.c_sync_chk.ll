; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_sync_chk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_sync_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Status = %02x,\00", align 1
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i8*)* @sync_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_chk(%struct.mb86a16_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mb86a16_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %9 = call i32 @mb86a16_read(%struct.mb86a16_state* %8, i32 13, i8* %6)
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @verbose, align 4
  %14 = load i32, i32* @MB86A16_INFO, align 4
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %13, i32 %14, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 28
  %24 = ashr i32 %23, 2
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %5, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %11
  %29 = load i32, i32* @verbose, align 4
  %30 = load i32, i32* @MB86A16_ERROR, align 4
  %31 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %29, i32 %30, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @EREMOTEIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
