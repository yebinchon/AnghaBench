; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_message_sendrcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_message_sendrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { i32 }
%struct.cx24120_cmd = type { i64, i32* }

@CX24120_MAX_CMD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Too many registers to read. cmd->reg = %d\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, %struct.cx24120_cmd*, i32)* @cx24120_message_sendrcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_message_sendrcv(%struct.cx24120_state* %0, %struct.cx24120_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx24120_state*, align 8
  %6 = alloca %struct.cx24120_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %5, align 8
  store %struct.cx24120_cmd* %1, %struct.cx24120_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @CX24120_MAX_CMD_LEN, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EREMOTEIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %20 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %6, align 8
  %21 = call i32 @cx24120_message_send(%struct.cx24120_state* %19, %struct.cx24120_cmd* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %55

30:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %37 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = add nsw i64 %42, 1
  %44 = call i32 @cx24120_readreg(%struct.cx24120_state* %36, i64 %43)
  %45 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %31

54:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %29, %24, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
