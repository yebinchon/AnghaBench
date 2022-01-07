; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32, i32 }

@SW_TWSI_OP_TWSI_CLK = common dso_local global i32 0, align 4
@SW_TWSI_EOP_TWSI_CLKCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_i2c_set_clock(%struct.octeon_i2c* %0) #0 {
  %2 = alloca %struct.octeon_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %2, align 8
  store i32 24, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1000000, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %104, %1
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %107

23:                                               ; preds = %21
  store i32 15, i32* %7, align 4
  br label %24

24:                                               ; preds = %100, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %103

32:                                               ; preds = %30
  %33 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %34 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %35, %37
  %39 = mul nsw i32 %38, 10
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %45 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sdiv i32 %46, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %96, %32
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %99

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %54
  br label %96

64:                                               ; preds = %60
  %65 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %66 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 2, %69
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = sdiv i32 %72, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sdiv i32 %76, %78
  %80 = sdiv i32 %79, 10
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %83 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = call i32 @abs(i32 %85) #3
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %64
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %64
  br label %96

96:                                               ; preds = %95, %63
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %51

99:                                               ; preds = %51
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %24

103:                                              ; preds = %30
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %15

107:                                              ; preds = %21
  %108 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %109 = load i32, i32* @SW_TWSI_OP_TWSI_CLK, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @octeon_i2c_reg_write(%struct.octeon_i2c* %108, i32 %109, i32 %110)
  %112 = load %struct.octeon_i2c*, %struct.octeon_i2c** %2, align 8
  %113 = load i32, i32* @SW_TWSI_EOP_TWSI_CLKCTL, align 4
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 %114, 3
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @octeon_i2c_reg_write(%struct.octeon_i2c* %112, i32 %113, i32 %117)
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @octeon_i2c_reg_write(%struct.octeon_i2c*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
