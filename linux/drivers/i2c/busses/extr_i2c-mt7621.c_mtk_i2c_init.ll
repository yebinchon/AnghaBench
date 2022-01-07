; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i32, i32 }

@SM0CTL0_CLK_DIV_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_i2c*)* @mtk_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_i2c_init(%struct.mtk_i2c* %0) #0 {
  %2 = alloca %struct.mtk_i2c*, align 8
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %2, align 8
  %3 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_get_rate(i32 %5)
  %7 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %6, %9
  %11 = sub nsw i32 %10, 1
  %12 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 99
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %19, i32 0, i32 0
  store i32 99, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %23 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SM0CTL0_CLK_DIV_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @SM0CTL0_CLK_DIV_MAX, align 4
  %29 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %33 = call i32 @mtk_i2c_reset(%struct.mtk_i2c* %32)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mtk_i2c_reset(%struct.mtk_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
