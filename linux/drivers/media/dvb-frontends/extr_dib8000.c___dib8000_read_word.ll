; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c___dib8000_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c___dib8000_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @__dib8000_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dib8000_read_word(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 8
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %9 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @memset(%struct.TYPE_5__* %20, i32 0, i32 8)
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 1
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* %39, i32** %44, align 8
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %46 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 2, i32* %49, align 8
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %51 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 1
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load i64, i64* @I2C_M_RD, align 8
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i64 %60, i64* %65, align 8
  %66 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %67 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %70 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32* %68, i32** %73, align 8
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 2, i32* %78, align 8
  %79 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %80 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %84 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @i2c_transfer(i32 %82, %struct.TYPE_5__* %85, i32 2)
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %2
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %2
  %92 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %93 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %99 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %97, %102
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
