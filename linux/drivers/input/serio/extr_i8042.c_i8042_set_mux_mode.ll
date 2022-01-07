; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_set_mux_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_set_mux_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I8042_CMD_AUX_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i8042_set_mux_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_set_mux_mode(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = call i32 (...) @i8042_flush()
  store i8 -16, i8* %7, align 1
  store i8 -16, i8* %6, align 1
  %9 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %10 = call i64 @i8042_command(i8* %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 86, i32 246
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  store i8 %24, i8* %6, align 1
  %25 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %26 = call i64 @i8042_command(i8* %6, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %19
  store i32 -1, i32* %3, align 4
  br label %63

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 164, i32 165
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %7, align 1
  store i8 %40, i8* %6, align 1
  %41 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %42 = call i64 @i8042_command(i8* %6, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %35
  store i32 -1, i32* %3, align 4
  br label %63

51:                                               ; preds = %44
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 172
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8, i8* %6, align 1
  %61 = load i8*, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55, %50, %34, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i8042_flush(...) #1

declare dso_local i64 @i8042_command(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
