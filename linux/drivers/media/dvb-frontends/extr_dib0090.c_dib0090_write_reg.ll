; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DiB0090 I2C write failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_state*, i32, i32)* @dib0090_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_write_reg(%struct.dib0090_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib0090_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %86

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %21 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 8
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %27 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %33 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %37 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @memset(%struct.TYPE_5__* %38, i32 0, i32 4)
  %40 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %46 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32 %44, i32* %49, align 8
  %50 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %51 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %56 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %59 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32* %57, i32** %62, align 8
  %63 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %64 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 3, i32* %67, align 8
  %68 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %69 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %72 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @i2c_transfer(i32 %70, %struct.TYPE_5__* %73, i32 1)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %17
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EREMOTEIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %81

80:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %76
  %82 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %83 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
