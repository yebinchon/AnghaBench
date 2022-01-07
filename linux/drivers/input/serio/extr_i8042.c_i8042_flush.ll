; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8042_lock = common dso_local global i32 0, align 4
@I8042_STR_OBF = common dso_local global i8 0, align 1
@I8042_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%02x <- i8042 (flush, %s)\0A\00", align 1
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i8042_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_flush() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @i8042_lock, i64 %6)
  br label %8

8:                                                ; preds = %36, %0
  %9 = call zeroext i8 (...) @i8042_read_status()
  store i8 %9, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @I8042_STR_OBF, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @I8042_BUFFER_SIZE, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = call i32 @udelay(i32 50)
  %22 = call zeroext i8 (...) @i8042_read_data()
  store i8 %22, i8* %2, align 1
  %23 = load i8, i8* %2, align 1
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 zeroext %23, i8* %31)
  br label %36

33:                                               ; preds = %15
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %20
  br label %8

37:                                               ; preds = %33, %8
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @i8042_lock, i64 %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @i8042_read_status(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @i8042_read_data(...) #1

declare dso_local i32 @dbg(i8*, i8 zeroext, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
