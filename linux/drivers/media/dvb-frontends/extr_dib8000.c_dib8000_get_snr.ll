; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_get_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_get_snr(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %11, align 8
  store %struct.dib8000_state* %12, %struct.dib8000_state** %4, align 8
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 32912
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %19 = call i32 @dib8000_read_word(%struct.dib8000_state* %18, i32 542)
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %22 = call i32 @dib8000_read_word(%struct.dib8000_state* %21, i32 544)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 255
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 63
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 64
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 16
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 32912
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %46 = call i32 @dib8000_read_word(%struct.dib8000_state* %45, i32 543)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %49 = call i32 @dib8000_read_word(%struct.dib8000_state* %48, i32 545)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 6
  %53 = and i32 %52, 255
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 63
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 64
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 16
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %70, %71
  %73 = shl i32 %72, 16
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sub nsw i32 %76, %79
  %81 = load i32, i32* %5, align 4
  %82 = sdiv i32 %80, %81
  %83 = add nsw i32 %74, %82
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
