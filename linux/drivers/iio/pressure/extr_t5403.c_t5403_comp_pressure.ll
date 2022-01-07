; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_comp_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_comp_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t5403_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t5403_data*, i32*, i32*)* @t5403_comp_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_comp_pressure(%struct.t5403_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.t5403_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.t5403_data* %0, %struct.t5403_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %14 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %17 = call i32 @t5403_read(%struct.t5403_data* %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %105

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %24 = call i32 @t5403_read(%struct.t5403_data* %23, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %105

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %9, align 4
  %30 = call i32 @T5403_C_U16(i32 3)
  %31 = call i32 @T5403_C_U16(i32 4)
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 131072
  %35 = add nsw i32 %30, %34
  %36 = call i32 @T5403_C(i32 5)
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sdiv i32 %38, 32768
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 524288
  %43 = add nsw i32 %35, %42
  %44 = call i32 @T5403_C(i32 9)
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 32768
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 32768
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sdiv i32 %52, 65536
  %54 = add nsw i32 %43, %53
  store i32 %54, i32* %10, align 4
  %55 = call i32 @T5403_C(i32 6)
  %56 = mul nsw i32 %55, 16384
  %57 = call i32 @T5403_C(i32 7)
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 8
  %61 = add nsw i32 %56, %60
  %62 = call i32 @T5403_C(i32 8)
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %64, 32768
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 16
  %69 = add nsw i32 %61, %68
  %70 = call i32 @T5403_C(i32 9)
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 32768
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sdiv i32 %75, 65536
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %69, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = sdiv i32 %84, 16384
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 75000
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 75000
  %90 = mul nsw i32 %87, %89
  %91 = sdiv i32 %90, 65536
  %92 = sub nsw i32 %91, 9537
  %93 = call i32 @T5403_C(i32 10)
  %94 = mul nsw i32 %92, %93
  %95 = sdiv i32 %94, 65536
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sdiv i32 %98, 1000
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = srem i32 %101, 1000
  %103 = mul nsw i32 %102, 1000
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %28, %27, %20
  %106 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %107 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @t5403_read(%struct.t5403_data*, i32) #1

declare dso_local i32 @T5403_C_U16(i32) #1

declare dso_local i32 @T5403_C(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
