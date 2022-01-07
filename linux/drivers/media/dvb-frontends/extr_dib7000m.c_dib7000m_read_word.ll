; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32*, i32, i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_read_word(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %8 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %7, i32 0, i32 3
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %114

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = or i32 %15, 128
  %17 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %18 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  %23 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %28 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @memset(%struct.TYPE_3__* %29, i32 0, i32 8)
  %31 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 1
  %35 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %36 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %41 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %46 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %49 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32* %47, i32** %52, align 8
  %53 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %54 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %53, i32 0, i32 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 2, i32* %57, align 8
  %58 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %59 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 1
  %62 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %63 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  %67 = load i64, i64* @I2C_M_RD, align 8
  %68 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %69 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i64 %67, i64* %72, align 8
  %73 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %74 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %77 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32* %75, i32** %80, align 8
  %81 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %82 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %81, i32 0, i32 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 2, i32* %85, align 8
  %86 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %87 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %90 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i32 @i2c_transfer(i32 %88, %struct.TYPE_3__* %91, i32 2)
  %93 = icmp ne i32 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %13
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %13
  %98 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %99 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %105 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %111 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %110, i32 0, i32 3
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %97, %11
  %115 = load i32, i32* %3, align 4
  ret i32 %115
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
