; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_clk_map_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_clk_map_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_clk_fld = type { i64 }
%struct.geni_i2c_dev = type { i64, %struct.geni_i2c_clk_fld* }

@geni_i2c_clk_map = common dso_local global %struct.geni_i2c_clk_fld* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geni_i2c_dev*)* @geni_i2c_clk_map_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_i2c_clk_map_idx(%struct.geni_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.geni_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.geni_i2c_clk_fld*, align 8
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %3, align 8
  %6 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** @geni_i2c_clk_map, align 8
  store %struct.geni_i2c_clk_fld* %6, %struct.geni_i2c_clk_fld** %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** @geni_i2c_clk_map, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.geni_i2c_clk_fld* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %5, align 8
  %14 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %5, align 8
  %22 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %23 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %22, i32 0, i32 1
  store %struct.geni_i2c_clk_fld* %21, %struct.geni_i2c_clk_fld** %23, align 8
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %5, align 8
  %29 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %28, i32 1
  store %struct.geni_i2c_clk_fld* %29, %struct.geni_i2c_clk_fld** %5, align 8
  br label %7

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ARRAY_SIZE(%struct.geni_i2c_clk_fld*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
