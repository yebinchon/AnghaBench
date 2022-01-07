; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_save_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgpio_instance = type { i32*, i64, i32*, i32* }

@XGPIO_DATA_OFFSET = common dso_local global i64 0, align 8
@XGPIO_TRI_OFFSET = common dso_local global i64 0, align 8
@XGPIO_CHANNEL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgpio_instance*)* @xgpio_save_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgpio_save_regs(%struct.xgpio_instance* %0) #0 {
  %2 = alloca %struct.xgpio_instance*, align 8
  store %struct.xgpio_instance* %0, %struct.xgpio_instance** %2, align 8
  %3 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %4 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @XGPIO_DATA_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %9 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xgpio_writereg(i64 %7, i32 %12)
  %14 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %15 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XGPIO_TRI_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %20 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xgpio_writereg(i64 %18, i32 %23)
  %25 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %26 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %34 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XGPIO_DATA_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @XGPIO_CHANNEL_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %41 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xgpio_writereg(i64 %39, i32 %44)
  %46 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %47 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XGPIO_TRI_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @XGPIO_CHANNEL_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.xgpio_instance*, %struct.xgpio_instance** %2, align 8
  %54 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xgpio_writereg(i64 %52, i32 %57)
  br label %59

59:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @xgpio_writereg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
