; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_get_message_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_get_message_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }

@DIB9000_MSG_CACHE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"waiting for message %d timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32, i32*, i64*, i32)* @dib9000_mbx_get_message_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_mbx_get_message_attr(%struct.dib9000_state* %0, i32 %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 30, i32* %14, align 4
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %65, %5
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @DIB9000_MSG_CACHE_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %23 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %21
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %10, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 2
  %48 = call i32 @memcpy(i32* %42, i32* %44, i64 %47)
  %49 = load i32*, i32** %13, align 8
  store i32 0, i32* %49, align 4
  store i64 0, i64* %12, align 8
  br label %54

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %17

54:                                               ; preds = %35, %17
  %55 = load i64, i64* %12, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %69

58:                                               ; preds = %54
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @dib9000_mbx_process(%struct.dib9000_state* %59, i32 %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %79

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %16, label %69

69:                                               ; preds = %65, %57
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 -1, i32* %6, align 4
  br label %79

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %72, %63
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dib9000_mbx_process(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
