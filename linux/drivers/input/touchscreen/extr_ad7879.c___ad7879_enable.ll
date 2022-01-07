; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c___ad7879_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c___ad7879_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, i32, i32, i32 }

@AD7879_REG_CTRL2 = common dso_local global i32 0, align 4
@AD7879_REG_CTRL3 = common dso_local global i32 0, align 4
@AD7879_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7879*)* @__ad7879_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ad7879_enable(%struct.ad7879* %0) #0 {
  %2 = alloca %struct.ad7879*, align 8
  store %struct.ad7879* %0, %struct.ad7879** %2, align 8
  %3 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %4 = load i32, i32* @AD7879_REG_CTRL2, align 4
  %5 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %6 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ad7879_write(%struct.ad7879* %3, i32 %4, i32 %7)
  %9 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %10 = load i32, i32* @AD7879_REG_CTRL3, align 4
  %11 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %12 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ad7879_write(%struct.ad7879* %9, i32 %10, i32 %13)
  %15 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %16 = load i32, i32* @AD7879_REG_CTRL1, align 4
  %17 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %18 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ad7879_write(%struct.ad7879* %15, i32 %16, i32 %19)
  %21 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %22 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @enable_irq(i32 %23)
  ret void
}

declare dso_local i32 @ad7879_write(%struct.ad7879*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
