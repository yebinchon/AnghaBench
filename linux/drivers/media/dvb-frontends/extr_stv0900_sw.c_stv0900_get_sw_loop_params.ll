; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_get_sw_loop_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_get_sw_loop_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0900_internal*, i32*, i32*, i32*, i32)* @stv0900_get_sw_loop_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0900_get_sw_loop_params(%struct.stv0900_internal* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.stv0900_internal*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %18 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %25 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = sdiv i32 %32, 10
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %15, align 4
  %36 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %37 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sdiv i32 %43, 2
  %45 = mul nsw i32 65536, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %47 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 1000
  %50 = load i32, i32* %15, align 4
  %51 = sdiv i32 %50, %49
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 16384
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  store i32 16384, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %5
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %58 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 10
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 6
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  switch i32 %65, label %73 [
    i32 129, label %66
    i32 130, label %66
    i32 128, label %69
    i32 131, label %72
  ]

66:                                               ; preds = %55, %55
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %67, 3
  store i32 %68, i32* %12, align 4
  store i32 20, i32* %11, align 4
  br label %76

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 4
  store i32 %71, i32* %12, align 4
  store i32 25, i32* %11, align 4
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %55, %72
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %74, 3
  store i32 %75, i32* %12, align 4
  store i32 25, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %69, %66
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 100
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %15, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %89, 27500
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = sdiv i32 %94, 1000
  %96 = load i32, i32* %11, align 4
  %97 = sdiv i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 100
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 100, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sdiv i32 %106, %107
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 100
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %105
  store i32 100, i32* %13, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
