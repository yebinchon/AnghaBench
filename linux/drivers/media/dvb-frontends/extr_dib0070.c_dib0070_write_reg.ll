; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0070_state = type { i32*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DiB0070 I2C write failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0070_state*, i32, i32)* @dib0070_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_write_reg(%struct.dib0070_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib0070_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib0070_state* %0, %struct.dib0070_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %20 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %26 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %32 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  %35 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %36 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @memset(%struct.TYPE_5__* %37, i32 0, i32 4)
  %39 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %40 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %43, i32* %48, align 8
  %49 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %55 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %58 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* %56, i32** %61, align 8
  %62 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %63 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 3, i32* %66, align 8
  %67 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %68 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %71 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @i2c_transfer(i32 %69, %struct.TYPE_5__* %72, i32 1)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %17
  %76 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EREMOTEIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %80

79:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %82 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
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
