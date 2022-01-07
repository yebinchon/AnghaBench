; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32*, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32, i32)* @dib8000_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_write_word(%struct.dib8000_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %96

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %35 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = call i32 @memset(%struct.TYPE_5__* %47, i32 0, i32 4)
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 1
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %60 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %65 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32* %66, i32** %71, align 8
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 4, i32* %76, align 8
  %77 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %78 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %82 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @i2c_transfer(i32 %80, %struct.TYPE_5__* %83, i32 1)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %17
  %87 = load i32, i32* @EREMOTEIO, align 4
  %88 = sub nsw i32 0, %87
  br label %90

89:                                               ; preds = %17
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %8, align 4
  %92 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %93 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %13
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
