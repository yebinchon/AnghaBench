; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_mp_in_mp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_mp_in_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @wiimod_mp_in_mp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_mp_in_mp(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 6
  %21 = and i32 %20, 65280
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 6
  %28 = and i32 %27, 65280
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 6
  %35 = and i32 %34, 65280
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 8192
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 8192
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 8192
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 2000
  %52 = mul nsw i32 %51, 9
  %53 = sdiv i32 %52, 440
  store i32 %53, i32* %5, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 9
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 2000
  %66 = mul nsw i32 %65, 9
  %67 = sdiv i32 %66, 440
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 9
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 2000
  %80 = mul nsw i32 %79, 9
  %81 = sdiv i32 %80, 440
  store i32 %81, i32* %7, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 9
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %87 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ABS_RX, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @input_report_abs(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %93 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ABS_RY, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @input_report_abs(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %99 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ABS_RZ, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @input_report_abs(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %105 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @input_sync(i32 %106)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
