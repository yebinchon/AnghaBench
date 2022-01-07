; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_write16_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_write16_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"(0x%08x, 0x%04x, 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*, i32, i32, i32)* @write16_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write16_flags(%struct.drxk_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drxk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.drxk_state* %0, %struct.drxk_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %13 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %16 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 192
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @DRXDAP_FASI_LONG_FORMAT(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 1
  %32 = and i32 %31, 255
  %33 = or i32 %32, 1
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 7
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %47, i32* %48, align 4
  store i32 4, i32* %11, align 4
  br label %62

49:                                               ; preds = %26
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 1
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 15
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 18
  %59 = and i32 %58, 240
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  store i32 2, i32* %11, align 4
  br label %62

62:                                               ; preds = %49, %29
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 255
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 2
  %84 = call i32 @i2c_write(%struct.drxk_state* %79, i32 %80, i32* %81, i32 %83)
  ret i32 %84
}

declare dso_local i64 @DRXDAP_FASI_LONG_FORMAT(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.drxk_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
