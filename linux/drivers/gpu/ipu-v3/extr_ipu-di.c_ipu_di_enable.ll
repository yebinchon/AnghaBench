; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_di_enable(%struct.ipu_di* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_di*, align 8
  %4 = alloca i32, align 4
  store %struct.ipu_di* %0, %struct.ipu_di** %3, align 8
  %5 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %6 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IS_ERR(i32 %7)
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %11 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %20 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %23 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ipu_module_enable(i32 %21, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ipu_module_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
