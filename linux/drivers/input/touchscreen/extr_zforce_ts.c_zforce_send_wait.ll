; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_send_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_send_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { i8, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"already waiting for a command\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sending %d bytes for command 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"i2c send data request error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"waiting for result for command 0x%x\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i8*, i32)* @zforce_send_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_send_wait(%struct.zforce_ts* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zforce_ts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.zforce_ts* %0, %struct.zforce_ts** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %11 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %10, i32 0, i32 5
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %14 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %13, i32 0, i32 2
  %15 = call i32 @mutex_trylock(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8 signext %29, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %39 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %41 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %40, i32 0, i32 4
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @i2c_master_send(%struct.i2c_client* %43, i8* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %48 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %47, i32 0, i32 4
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %24
  %53 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %76

57:                                               ; preds = %24
  %58 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8 signext %62)
  %64 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %65 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %64, i32 0, i32 3
  %66 = load i32, i32* @WAIT_TIMEOUT, align 4
  %67 = call i64 @wait_for_completion_timeout(i32* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @ETIME, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %76

72:                                               ; preds = %57
  %73 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %74 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %69, %52
  %77 = load %struct.zforce_ts*, %struct.zforce_ts** %5, align 8
  %78 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
