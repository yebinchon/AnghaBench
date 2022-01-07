; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_fetch_to_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_fetch_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }

@DIB9000_MSG_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"MBX: no free cache-slot found for new message...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32)* @dib9000_mbx_fetch_to_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_mbx_fetch_to_cache(%struct.dib9000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib9000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.dib9000_state* %0, %struct.dib9000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DIB9000_MSG_CACHE_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %13
  %27 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dib9000_mbx_read(%struct.dib9000_state* %27, i32* %28, i32 1, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  switch i32 %33, label %41 [
    i32 128, label %34
  ]

34:                                               ; preds = %26
  %35 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dib9000_risc_debug_buf(%struct.dib9000_state* %35, i32* %37, i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  br label %42

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %34
  store i32 1, i32* %3, align 4
  br label %49

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %9
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dib9000_mbx_read(%struct.dib9000_state*, i32*, i32, i32) #1

declare dso_local i32 @dib9000_risc_debug_buf(%struct.dib9000_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
