; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_fill_transmit_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_fill_transmit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@TXBUFFER_BASE = common dso_local global i64 0, align 8
@REG_MTXCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*)* @rk3x_i2c_fill_transmit_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_fill_transmit_buf(%struct.rk3x_i2c* %0) #0 {
  %2 = alloca %struct.rk3x_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %87, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %90

11:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %64, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  %16 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %67

29:                                               ; preds = %25, %15
  %30 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %31 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %39 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 127
  %42 = shl i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %55

43:                                               ; preds = %34, %29
  %44 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %45 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %50 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %51
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %43, %37
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul i32 %57, 8
  %59 = shl i32 %56, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %12

67:                                               ; preds = %28, %12
  %68 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* @TXBUFFER_BASE, align 8
  %71 = load i32, i32* %3, align 4
  %72 = mul i32 4, %71
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @i2c_writel(%struct.rk3x_i2c* %68, i32 %69, i64 %74)
  %76 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %77 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %80 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %90

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %8

90:                                               ; preds = %85, %8
  %91 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i64, i64* @REG_MTXCNT, align 8
  %94 = call i32 @i2c_writel(%struct.rk3x_i2c* %91, i32 %92, i64 %93)
  ret void
}

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
