; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_if_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_if_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Set IF Freq to %dkHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Set IF Freq to baseband\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"AFC_INIT_FREQ = 0x%08X\0A\00", align 1
@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*, i64)* @lgs8gxx_set_if_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_if_freq(%struct.lgs8gxx_state* %0, i64 %1) #0 {
  %3 = alloca %struct.lgs8gxx_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 32
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @do_div(i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %33

31:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %37 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %33
  %44 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = and i64 255, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %44, i32 8, i32 %47)
  %49 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = ashr i64 %50, 8
  %52 = and i64 255, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %49, i32 9, i32 %53)
  %55 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = ashr i64 %56, 16
  %58 = and i64 255, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %55, i32 10, i32 %59)
  %61 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = ashr i64 %62, 24
  %64 = and i64 255, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %61, i32 11, i32 %65)
  br label %91

67:                                               ; preds = %33
  %68 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %69 = load i64, i64* %6, align 8
  %70 = and i64 255, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %68, i32 9, i32 %71)
  %73 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = ashr i64 %74, 8
  %76 = and i64 255, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %73, i32 10, i32 %77)
  %79 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = ashr i64 %80, 16
  %82 = and i64 255, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %79, i32 11, i32 %83)
  %85 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %86 = load i64, i64* %6, align 8
  %87 = ashr i64 %86, 24
  %88 = and i64 255, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %85, i32 12, i32 %89)
  br label %91

91:                                               ; preds = %67, %43
  ret i32 0
}

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
