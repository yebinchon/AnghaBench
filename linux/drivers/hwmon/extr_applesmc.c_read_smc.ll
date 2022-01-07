; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_read_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_read_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%.4s: read arg fail\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@APPLESMC_DATA_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%.4s: read len fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%.4s: read data[%d] fail\0A\00", align 1
@APPLESMC_MIN_WAIT = common dso_local global i32 0, align 4
@APPLESMC_CMD_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"flushed %d bytes, last value is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32)* @read_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_smc(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @send_command(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @send_argument(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %16
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @APPLESMC_DATA_PORT, align 4
  %28 = call i64 @send_byte(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = call i64 (...) @wait_read()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %86

49:                                               ; preds = %40
  %50 = load i32, i32* @APPLESMC_DATA_PORT, align 4
  %51 = call i32 @inb(i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %36

59:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32, i32* @APPLESMC_MIN_WAIT, align 4
  %65 = call i32 @udelay(i32 %64)
  %66 = load i32, i32* @APPLESMC_CMD_PORT, align 4
  %67 = call i32 @inb(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @APPLESMC_DATA_PORT, align 4
  %74 = call i32 @inb(i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %60

78:                                               ; preds = %71, %60
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %43, %30, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @send_command(i32) #1

declare dso_local i64 @send_argument(i8*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @send_byte(i32, i32) #1

declare dso_local i64 @wait_read(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
