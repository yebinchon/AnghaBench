; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_parkbd.c_parkbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_parkbd.c_parkbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parkbd_writing = common dso_local global i64 0, align 8
@parkbd_counter = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@parkbd_last = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@parkbd_buffer = common dso_local global i32 0, align 4
@parkbd_mode = common dso_local global i32 0, align 4
@parkbd_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parkbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parkbd_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @parkbd_writing, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load i32, i32* @parkbd_counter, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, i32* @parkbd_counter, align 4
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @parkbd_last, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %14, 100
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_after(i64 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11, %8
  store i32 0, i32* @parkbd_counter, align 4
  store i32 0, i32* @parkbd_buffer, align 4
  store i64 0, i64* @parkbd_writing, align 8
  %21 = call i32 @parkbd_writelines(i32 3)
  br label %73

22:                                               ; preds = %11, %5
  %23 = load i32, i32* @parkbd_buffer, align 4
  %24 = load i32, i32* @parkbd_counter, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @parkbd_counter, align 4
  %26 = ashr i32 %23, %24
  %27 = and i32 %26, 1
  %28 = or i32 %27, 2
  %29 = call i32 @parkbd_writelines(i32 %28)
  %30 = load i32, i32* @parkbd_counter, align 4
  %31 = icmp eq i32 %30, 11
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  store i32 0, i32* @parkbd_counter, align 4
  store i32 0, i32* @parkbd_buffer, align 4
  store i64 0, i64* @parkbd_writing, align 8
  %33 = call i32 @parkbd_writelines(i32 3)
  br label %34

34:                                               ; preds = %32, %22
  br label %71

35:                                               ; preds = %1
  %36 = load i32, i32* @parkbd_counter, align 4
  %37 = load i32, i32* @parkbd_mode, align 4
  %38 = add nsw i32 %37, 10
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* @parkbd_last, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %43, 100
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i64 @time_after(i64 %41, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %35
  store i32 0, i32* @parkbd_counter, align 4
  store i32 0, i32* @parkbd_buffer, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = call i32 (...) @parkbd_readlines()
  %52 = ashr i32 %51, 1
  %53 = load i32, i32* @parkbd_counter, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @parkbd_counter, align 4
  %55 = shl i32 %52, %53
  %56 = load i32, i32* @parkbd_buffer, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @parkbd_buffer, align 4
  %58 = load i32, i32* @parkbd_counter, align 4
  %59 = load i32, i32* @parkbd_mode, align 4
  %60 = add nsw i32 %59, 10
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32, i32* @parkbd_port, align 4
  %64 = load i32, i32* @parkbd_buffer, align 4
  %65 = load i32, i32* @parkbd_mode, align 4
  %66 = sub nsw i32 2, %65
  %67 = ashr i32 %64, %66
  %68 = and i32 %67, 255
  %69 = call i32 @serio_interrupt(i32 %63, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %62, %50
  br label %71

71:                                               ; preds = %70, %34
  %72 = load i64, i64* @jiffies, align 8
  store i64 %72, i64* @parkbd_last, align 8
  br label %73

73:                                               ; preds = %71, %20
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @parkbd_writelines(i32) #1

declare dso_local i32 @parkbd_readlines(...) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
