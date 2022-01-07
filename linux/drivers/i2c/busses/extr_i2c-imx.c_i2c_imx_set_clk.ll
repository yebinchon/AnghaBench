; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.imx_i2c_clk_pair* }
%struct.imx_i2c_clk_pair = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_i2c_struct*, i32)* @i2c_imx_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_imx_set_clk(%struct.imx_i2c_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_i2c_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_i2c_clk_pair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx_i2c_struct* %0, %struct.imx_i2c_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %9 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %8, i32 0, i32 5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %11, align 8
  store %struct.imx_i2c_clk_pair* %12, %struct.imx_i2c_clk_pair** %5, align 8
  %13 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %14 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %102

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %22 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %25 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = sub i32 %27, 1
  %29 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %30 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %5, align 8
  %35 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %34, i64 0
  %36 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %77

40:                                               ; preds = %19
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %5, align 8
  %43 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %44 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %42, i64 %49
  %51 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ugt i32 %41, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %56 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %55, i32 0, i32 5
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %76

61:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %72, %61
  %63 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %63, i64 %65
  %67 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %78, i64 %80
  %82 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %85 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.imx_i2c_clk_pair*, %struct.imx_i2c_clk_pair** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %86, i64 %88
  %90 = getelementptr inbounds %struct.imx_i2c_clk_pair, %struct.imx_i2c_clk_pair* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = mul i32 500000, %91
  %93 = load i32, i32* %4, align 4
  %94 = udiv i32 %93, 2
  %95 = add i32 %92, %94
  %96 = sub i32 %95, 1
  %97 = load i32, i32* %4, align 4
  %98 = udiv i32 %97, 2
  %99 = udiv i32 %96, %98
  %100 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %101 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %77, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
