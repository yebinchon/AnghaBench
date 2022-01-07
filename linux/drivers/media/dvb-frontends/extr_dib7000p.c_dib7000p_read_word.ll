; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32*, i32, i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32)* @dib7000p_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_read_word(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %8 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %7, i32 0, i32 3
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %113

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %17 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @memset(%struct.TYPE_3__* %28, i32 0, i32 8)
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 1
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %35 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32* %46, i32** %51, align 8
  %52 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %53 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 2, i32* %56, align 8
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %58 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 1
  %61 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %62 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 8
  %66 = load i64, i64* @I2C_M_RD, align 8
  %67 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %68 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i64 %66, i64* %71, align 8
  %72 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %73 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %76 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %75, i32 0, i32 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32* %74, i32** %79, align 8
  %80 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %81 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i32 2, i32* %84, align 8
  %85 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %86 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %89 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %88, i32 0, i32 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @i2c_transfer(i32 %87, %struct.TYPE_3__* %90, i32 2)
  %92 = icmp ne i32 %91, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %13
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %13
  %97 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %98 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %104 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %102, %107
  store i32 %108, i32* %6, align 4
  %109 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %110 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %96, %11
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
