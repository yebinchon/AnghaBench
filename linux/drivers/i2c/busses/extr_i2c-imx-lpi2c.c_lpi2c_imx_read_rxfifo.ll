; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_read_rxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_read_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i32*, i32, i32, i64, i64, i32 }

@LPI2C_MRDR = common dso_local global i64 0, align 8
@MRDR_RXEMPTY = common dso_local global i32 0, align 4
@RECV_DATA = common dso_local global i32 0, align 4
@LPI2C_MTDR = common dso_local global i64 0, align 8
@CHUNK_DATA = common dso_local global i32 0, align 4
@MIER_RDIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi2c_imx_struct*)* @lpi2c_imx_read_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi2c_imx_read_rxfifo(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca %struct.lpi2c_imx_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %2, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %9 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPI2C_MRDR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MRDR_RXEMPTY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %32

19:                                               ; preds = %7
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %23 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %26 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32 %21, i32* %30, align 4
  br label %31

31:                                               ; preds = %19
  br i1 true, label %7, label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %34 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %39 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %45 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %50 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %53 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sub i32 %51, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %60 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %59, i32 0, i32 5
  %61 = call i32 @complete(i32* %60)
  br label %117

62:                                               ; preds = %48
  %63 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %64 = call i32 @lpi2c_imx_set_rx_watermark(%struct.lpi2c_imx_struct* %63)
  %65 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %66 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %71 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @RECV_DATA, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %79 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LPI2C_MTDR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %113

84:                                               ; preds = %62
  %85 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %86 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 255
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @CHUNK_DATA, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @CHUNK_DATA, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = sub i32 %99, 1
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @RECV_DATA, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %107 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LPI2C_MTDR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %98, %84
  br label %113

113:                                              ; preds = %112, %69
  %114 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %115 = load i32, i32* @MIER_RDIE, align 4
  %116 = call i32 @lpi2c_imx_intctrl(%struct.lpi2c_imx_struct* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %58
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @lpi2c_imx_set_rx_watermark(%struct.lpi2c_imx_struct*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lpi2c_imx_intctrl(%struct.lpi2c_imx_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
