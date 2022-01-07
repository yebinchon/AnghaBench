; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr0014114 = type { i32, i64, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CR_FW_DELAY_MSEC = common dso_local global i32 0, align 4
@CR_SET_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cr0014114*)* @cr0014114_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr0014114_sync(%struct.cr0014114* %0) #0 {
  %2 = alloca %struct.cr0014114*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cr0014114* %0, %struct.cr0014114** %2, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %9 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @time_after(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %16 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %17, %18
  %20 = call i64 @jiffies_to_usecs(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  %24 = call i32 @usleep_range(i64 %21, i64 %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %27 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %33 = call i32 @cr0014114_recount(%struct.cr0014114* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %93

37:                                               ; preds = %31
  %38 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %39 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @CR_FW_DELAY_MSEC, align 4
  %41 = call i32 @msleep(i32 %40)
  br label %42

42:                                               ; preds = %37, %25
  %43 = load i32, i32* @CR_SET_BRIGHTNESS, align 4
  %44 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %45 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %68, %42
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %51 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %56 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %63 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %73 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %76 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 2
  %79 = trunc i64 %78 to i32
  %80 = call i32 @cr0014114_calc_crc(i32* %74, i32 %79)
  %81 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %82 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %85 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %88 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 2
  %91 = trunc i64 %90 to i32
  %92 = call i32 @spi_write(i32 %83, i32* %86, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %71, %36
  %94 = load i64, i64* @jiffies, align 8
  %95 = load i32, i32* @CR_FW_DELAY_MSEC, align 4
  %96 = call i64 @msecs_to_jiffies(i32 %95)
  %97 = add i64 %94, %96
  %98 = load %struct.cr0014114*, %struct.cr0014114** %2, align 8
  %99 = getelementptr inbounds %struct.cr0014114, %struct.cr0014114* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @jiffies_to_usecs(i64) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cr0014114_recount(%struct.cr0014114*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cr0014114_calc_crc(i32*, i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
