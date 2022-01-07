; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_io.c_cxd2880_io_set_reg_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_io.c_cxd2880_io_set_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_io = type { i32 (%struct.cxd2880_io*, i32, i32, i32*, i32)*, i32 (%struct.cxd2880_io*, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_io_set_reg_bits(%struct.cxd2880_io* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cxd2880_io* %0, %struct.cxd2880_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %15 = icmp ne %struct.cxd2880_io* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %56

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 255
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  %27 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %28 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %27, i32 0, i32 0
  %29 = load i32 (%struct.cxd2880_io*, i32, i32, i32*, i32)*, i32 (%struct.cxd2880_io*, i32, i32, i32*, i32)** %28, align 8
  %30 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 %29(%struct.cxd2880_io* %30, i32 %31, i32 %32, i32* %13, i32 1)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %56

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = xor i32 %43, 255
  %45 = and i32 %42, %44
  %46 = or i32 %41, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %38, %23
  %48 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %49 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %48, i32 0, i32 1
  %50 = load i32 (%struct.cxd2880_io*, i32, i32, i32)*, i32 (%struct.cxd2880_io*, i32, i32, i32)** %49, align 8
  %51 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 %50(%struct.cxd2880_io* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %47, %36, %22, %16
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
