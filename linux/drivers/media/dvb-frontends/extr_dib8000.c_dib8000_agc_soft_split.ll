; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_agc_soft_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_agc_soft_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"AGC split_offset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @dib8000_agc_soft_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_agc_soft_split(%struct.dib8000_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %10, %1
  store i32 0, i32* %2, align 4
  br label %104

26:                                               ; preds = %17
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %28 = call i32 @dib8000_read_word(%struct.dib8000_state* %27, i32 390)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %30, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %40 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  br label %92

45:                                               ; preds = %26
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %48 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %46, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %5, align 8
  br label %91

61:                                               ; preds = %45
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %63 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %70 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %68, %74
  %76 = mul nsw i64 %67, %75
  %77 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %78 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %84 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %82, %88
  %90 = sdiv i64 %76, %89
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %61, %54
  br label %92

92:                                               ; preds = %91, %38
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %96 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %97 = call i32 @dib8000_read_word(%struct.dib8000_state* %96, i32 107)
  %98 = and i32 %97, 65280
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %5, align 8
  %101 = or i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @dib8000_write_word(%struct.dib8000_state* %95, i32 107, i32 %102)
  store i32 5000, i32* %2, align 4
  br label %104

104:                                              ; preds = %92, %25
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
