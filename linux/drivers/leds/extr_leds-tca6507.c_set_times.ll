; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_set_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_set_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6507_chip = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Chose on  times %d(%d) %d(%d) for %dms\0A\00", align 1
@time_codes = common dso_local global i32* null, align 8
@TCA6507_FADE_ON = common dso_local global i32 0, align 4
@TCA6507_FULL_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Chose off times %d(%d) %d(%d) for %dms\0A\00", align 1
@TCA6507_FADE_OFF = common dso_local global i32 0, align 4
@TCA6507_FIRST_OFF = common dso_local global i32 0, align 4
@TCA6507_SECOND_OFF = common dso_local global i32 0, align 4
@TCA6507_INITIALIZE = common dso_local global i32 0, align 4
@INIT_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tca6507_chip*, i32)* @set_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_times(%struct.tca6507_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tca6507_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tca6507_chip* %0, %struct.tca6507_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @choose_times(i32 %15, i32* %5, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %126

20:                                               ; preds = %2
  %21 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %22 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** @time_codes, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** @time_codes, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %38 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %31, i32 %36, i32 %44)
  %46 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %47 = load i32, i32* @TCA6507_FADE_ON, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @set_code(%struct.tca6507_chip* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %52 = load i32, i32* @TCA6507_FULL_ON, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @set_code(%struct.tca6507_chip* %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %58 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  %64 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %65 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @choose_times(i32 %71, i32* %5, i32* %6)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %74 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = load i32*, i32** @time_codes, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32*, i32** @time_codes, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %90 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %82, i32 %83, i32 %88, i32 %96)
  %98 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %99 = load i32, i32* @TCA6507_FADE_OFF, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @set_code(%struct.tca6507_chip* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %104 = load i32, i32* @TCA6507_FIRST_OFF, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @set_code(%struct.tca6507_chip* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %109 = load i32, i32* @TCA6507_SECOND_OFF, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @set_code(%struct.tca6507_chip* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %115 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 4
  %121 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %122 = load i32, i32* @TCA6507_INITIALIZE, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @INIT_CODE, align 4
  %125 = call i32 @set_code(%struct.tca6507_chip* %121, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %20, %19
  ret void
}

declare dso_local i32 @choose_times(i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_code(%struct.tca6507_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
