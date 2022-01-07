; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7887_state = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7887_state*, i32)* @ad7887_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7887_scan_direct(%struct.ad7887_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7887_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7887_state* %0, %struct.ad7887_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ad7887_state*, %struct.ad7887_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ad7887_state*, %struct.ad7887_state** %4, align 8
  %11 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @spi_sync(i32 %9, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.ad7887_state*, %struct.ad7887_state** %4, align 8
  %23 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.ad7887_state*, %struct.ad7887_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %34, 2
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %30, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
