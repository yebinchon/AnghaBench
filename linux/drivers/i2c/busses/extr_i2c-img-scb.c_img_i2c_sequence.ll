; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i32, i64, i32, i32* }

@img_i2c_sequence.continue_bits = internal constant [138 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131, i32 134, i32 128, i32 129, i32 131], align 16
@INT_SLAVE_EVENT = common dso_local global i32 0, align 4
@INT_TRANSACTION_DONE = common dso_local global i32 0, align 4
@LINESTAT_ABORT_DET = common dso_local global i32 0, align 4
@SCB_OVERRIDE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_i2c*, i32)* @img_i2c_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_sequence(%struct.img_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.img_i2c* %0, %struct.img_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @INT_TRANSACTION_DONE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %26 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %100

35:                                               ; preds = %29
  %36 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %37 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %42 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([138 x i32], [138 x i32]* @img_i2c_sequence.continue_bits, i64 0, i64 0))
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %48 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [138 x i32], [138 x i32]* @img_i2c_sequence.continue_bits, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i32, i32* @LINESTAT_ABORT_DET, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %59 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %100

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %40, %35
  %68 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %69 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %76 = load i32, i32* @SCB_OVERRIDE_REG, align 4
  %77 = call i32 @img_i2c_writel(%struct.img_i2c* %75, i32 %76, i32 0)
  %78 = call i32 @ISR_COMPLETE(i32 0)
  store i32 %78, i32* %3, align 4
  br label %100

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 137
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %84 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %84, align 8
  %87 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %88 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %82, %79
  %92 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %93 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %93, align 8
  %96 = load %struct.img_i2c*, %struct.img_i2c** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @img_i2c_atomic_op(%struct.img_i2c* %96, i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %74, %64, %34
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @ISR_COMPLETE(i32) #1

declare dso_local i32 @img_i2c_atomic_op(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
