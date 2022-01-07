; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32*, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32, i32)* @dib7000p_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_write_word(%struct.dib7000p_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %9, i32 0, i32 2
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %94

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %35 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = call i32 @memset(%struct.TYPE_3__* %47, i32 0, i32 4)
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 1
  %53 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %54 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %59 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %64 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %67 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32* %65, i32** %70, align 8
  %71 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %72 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 4, i32* %75, align 8
  %76 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %77 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %80 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @i2c_transfer(i32 %78, %struct.TYPE_3__* %81, i32 1)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %17
  %85 = load i32, i32* @EREMOTEIO, align 4
  %86 = sub nsw i32 0, %85
  br label %88

87:                                               ; preds = %17
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %8, align 4
  %90 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %91 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %13
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
