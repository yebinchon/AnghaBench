; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0070_state = type { i32*, i32*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"DiB0070 I2C read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0070_state*, i32)* @dib0070_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_read_reg(%struct.dib0070_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib0070_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib0070_state* %0, %struct.dib0070_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %8 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %7, i32 0, i32 2
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %108

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %20 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i32 8)
  %23 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %29 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %27, i32* %32, align 8
  %33 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %34 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %39 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %42 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32* %40, i32** %45, align 8
  %46 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %47 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %52 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %57 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %55, i32* %60, align 8
  %61 = load i64, i64* @I2C_M_RD, align 8
  %62 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %63 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i64 %61, i64* %66, align 8
  %67 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %68 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %71 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* %69, i32** %74, align 8
  %75 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %76 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 2, i32* %79, align 8
  %80 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %81 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %84 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @i2c_transfer(i32 %82, %struct.TYPE_5__* %85, i32 2)
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %13
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %103

90:                                               ; preds = %13
  %91 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %92 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %98 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %96, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %90, %88
  %104 = load %struct.dib0070_state*, %struct.dib0070_state** %4, align 8
  %105 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %11
  %109 = load i32, i32* %3, align 4
  ret i32 %109
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
