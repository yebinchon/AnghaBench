; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_lightning.c_l4_getcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_lightning.c_l4_getcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L4_SELECT_ANALOG = common dso_local global i32 0, align 4
@L4_PORT = common dso_local global i32 0, align 4
@L4_SELECT_DIGITAL = common dso_local global i32 0, align 4
@L4_BUSY = common dso_local global i32 0, align 4
@L4_CMD_GETCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @l4_getcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4_getcal(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* @L4_SELECT_ANALOG, align 4
  %8 = load i32, i32* @L4_PORT, align 4
  %9 = call i32 @outb(i32 %7, i32 %8)
  %10 = load i32, i32* @L4_SELECT_DIGITAL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 2
  %13 = add nsw i32 %10, %12
  %14 = load i32, i32* @L4_PORT, align 4
  %15 = call i32 @outb(i32 %13, i32 %14)
  %16 = load i32, i32* @L4_PORT, align 4
  %17 = call i32 @inb(i32 %16)
  %18 = load i32, i32* @L4_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* @L4_CMD_GETCAL, align 4
  %24 = load i32, i32* @L4_PORT, align 4
  %25 = call i32 @outb(i32 %23, i32 %24)
  %26 = call i64 (...) @l4_wait_ready()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %65

29:                                               ; preds = %22
  %30 = load i32, i32* @L4_PORT, align 4
  %31 = call i32 @inb(i32 %30)
  %32 = load i32, i32* @L4_SELECT_DIGITAL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 2
  %35 = add nsw i32 %32, %34
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %65

38:                                               ; preds = %29
  %39 = call i64 (...) @l4_wait_ready()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %65

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 3
  %45 = load i32, i32* @L4_PORT, align 4
  %46 = call i32 @outb(i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %61, %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = call i64 (...) @l4_wait_ready()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %65

54:                                               ; preds = %50
  %55 = load i32, i32* @L4_PORT, align 4
  %56 = call i32 @inb(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %47

64:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %53, %41, %37, %28, %21
  %66 = load i32, i32* @L4_SELECT_ANALOG, align 4
  %67 = load i32, i32* @L4_PORT, align 4
  %68 = call i32 @outb(i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @l4_wait_ready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
