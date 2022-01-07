; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_fetch_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_fetch_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio_raw = type { i64, i64, i8*, i32 }

@SERIO_RAW_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio_raw*, i8*)* @serio_raw_fetch_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_raw_fetch_byte(%struct.serio_raw* %0, i8* %1) #0 {
  %3 = alloca %struct.serio_raw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.serio_raw* %0, %struct.serio_raw** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %7 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @serio_pause_rx(i32 %8)
  %10 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %11 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %14 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %2
  %21 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %22 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %25 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %4, align 8
  store i8 %28, i8* %29, align 1
  %30 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %31 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  %34 = load i32, i32* @SERIO_RAW_QUEUE_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %33, %35
  %37 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %38 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %20, %2
  %40 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %41 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @serio_continue_rx(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @serio_continue_rx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
