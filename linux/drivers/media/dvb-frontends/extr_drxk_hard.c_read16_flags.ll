; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_read16_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_read16_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"(0x%08x, 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*, i32, i32*, i32)* @read16_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read16_flags(%struct.drxk_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drxk_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.drxk_state* %0, %struct.drxk_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  %16 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  %19 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, 192
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @DRXDAP_FASI_LONG_FORMAT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 1
  %35 = and i32 %34, 255
  %36 = or i32 %35, 1
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 7
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  store i32 4, i32* %14, align 4
  br label %65

52:                                               ; preds = %29
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 1
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %55, i32* %56, align 16
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 15
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 18
  %62 = and i32 %61, 240
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  store i32 2, i32* %14, align 4
  br label %65

65:                                               ; preds = %52, %32
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %74 = call i32 @i2c_read(%struct.drxk_state* %69, i32 %70, i32* %71, i32 %72, i32* %73, i32 2)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %91

79:                                               ; preds = %65
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %84, %87
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %79
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %77
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @DRXDAP_FASI_LONG_FORMAT(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.drxk_state*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
