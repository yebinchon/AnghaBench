; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_get_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_get_snr(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %11, align 8
  store %struct.dib7000p_state* %12, %struct.dib7000p_state** %3, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %14 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %13, i32 479)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 15
  %20 = shl i32 %19, 2
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %22 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %21, i32 480)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 14
  %25 = and i32 %24, 3
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 64
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 255
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 63
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 64
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = call i32 @intlog10(i32 2)
  %51 = mul nsw i32 %50, 10
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @intlog10(i32 %54)
  %56 = mul nsw i32 10, %55
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %9, align 4
  br label %64

58:                                               ; preds = %46
  %59 = call i32 @intlog10(i32 2)
  %60 = mul nsw i32 %59, 10
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sub nsw i32 %62, 100
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = call i32 @intlog10(i32 2)
  %69 = mul nsw i32 %68, 10
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @intlog10(i32 %72)
  %74 = mul nsw i32 10, %73
  %75 = add nsw i32 %71, %74
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %86

78:                                               ; preds = %64
  %79 = call i32 @intlog10(i32 2)
  %80 = mul nsw i32 %79, 10
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sub nsw i32 %82, 100
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %78, %67
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
