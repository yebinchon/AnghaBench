; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c___i8042_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c___i8042_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8042_noloop = common dso_local global i64 0, align 8
@I8042_CMD_AUX_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%02x -> i8042 (command)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"     -- i8042 (wait write timeout)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%02x -> i8042 (parameter)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"     -- i8042 (wait read timeout)\0A\00", align 1
@I8042_STR_AUXDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"     -- i8042 (auxerr)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%02x <- i8042 (return)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__i8042_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i8042_command(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @i8042_noloop, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %100

15:                                               ; preds = %10, %2
  %16 = call i32 (...) @i8042_wait_write()
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @i8042_write_command(i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %55, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 12
  %32 = and i32 %31, 15
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = call i32 (...) @i8042_wait_write()
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @i8042_write_data(i8 zeroext %53)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %28

58:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %96, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 15
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %59
  %66 = call i32 (...) @i8042_wait_read()
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = call i32 (...) @i8042_read_status()
  %78 = load i32, i32* @I8042_STR_AUXDATA, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %100

83:                                               ; preds = %76, %72
  %84 = call zeroext i8 (...) @i8042_read_data()
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %59

99:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %81, %69, %38, %19, %14
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @i8042_wait_write(...) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @i8042_write_command(i32) #1

declare dso_local i32 @i8042_write_data(i8 zeroext) #1

declare dso_local i32 @i8042_wait_read(...) #1

declare dso_local i32 @i8042_read_status(...) #1

declare dso_local zeroext i8 @i8042_read_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
