; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"i2c write error at addr 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*, i32, i32*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(%struct.drxk_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.drxk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.drxk_state* %0, %struct.drxk_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @debug, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %23

37:                                               ; preds = %23
  %38 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %4
  %40 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %41 = call i32 @drxk_i2c_transfer(%struct.drxk_state* %40, %struct.i2c_msg* %10, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44, %39
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @drxk_i2c_transfer(%struct.drxk_state*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
