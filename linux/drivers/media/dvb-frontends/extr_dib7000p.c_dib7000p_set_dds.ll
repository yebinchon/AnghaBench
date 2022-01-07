; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_dds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"DIB7000P: dib7000p_get_internal_freq returned 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"setting a frequency offset of %dkHz internal freq = %d invert = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i64)* @dib7000p_set_dds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_set_dds(%struct.dib7000p_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %12 = call i32 @dib7000p_get_internal_freq(%struct.dib7000p_state* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @abs(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 33554431
  store i32 %21, i32* %9, align 4
  %22 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 33554432
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %90

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 67108864, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = mul nsw i64 %48, -1
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %7, align 8
  %57 = mul nsw i64 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %71

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = mul nsw i64 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 2
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 511
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 9
  %83 = or i32 %80, %82
  %84 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %77, i32 21, i32 %83)
  %85 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 65535
  %88 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %85, i32 22, i32 %87)
  br label %89

89:                                               ; preds = %76, %71
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dib7000p_get_internal_freq(%struct.dib7000p_state*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @dprintk(i8*, i64, i32, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
