; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_io.c_cxd2880_io_write_multi_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_io.c_cxd2880_io_write_multi_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_io = type { i32 (%struct.cxd2880_io*, i32, i32, i32)* }
%struct.cxd2880_reg_value = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_io_write_multi_regs(%struct.cxd2880_io* %0, i32 %1, %struct.cxd2880_reg_value* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd2880_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_reg_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxd2880_io* %0, %struct.cxd2880_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cxd2880_reg_value* %2, %struct.cxd2880_reg_value** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.cxd2880_io*, %struct.cxd2880_io** %6, align 8
  %13 = icmp ne %struct.cxd2880_io* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %50

17:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load %struct.cxd2880_io*, %struct.cxd2880_io** %6, align 8
  %24 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %23, i32 0, i32 0
  %25 = load i32 (%struct.cxd2880_io*, i32, i32, i32)*, i32 (%struct.cxd2880_io*, i32, i32, i32)** %24, align 8
  %26 = load %struct.cxd2880_io*, %struct.cxd2880_io** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.cxd2880_reg_value*, %struct.cxd2880_reg_value** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cxd2880_reg_value, %struct.cxd2880_reg_value* %28, i64 %30
  %32 = getelementptr inbounds %struct.cxd2880_reg_value, %struct.cxd2880_reg_value* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cxd2880_reg_value*, %struct.cxd2880_reg_value** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cxd2880_reg_value, %struct.cxd2880_reg_value* %34, i64 %36
  %38 = getelementptr inbounds %struct.cxd2880_reg_value, %struct.cxd2880_reg_value* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %25(%struct.cxd2880_io* %26, i32 %27, i32 %33, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %18

49:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
