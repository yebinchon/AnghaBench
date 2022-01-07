; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_read_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_read_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.titsc = type { i32 }

@REG_FIFO0 = common dso_local global i32 0, align 4
@titsc_cmp_coord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.titsc*, i32*, i32*, i32*, i32*)* @titsc_read_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @titsc_read_coordinates(%struct.titsc* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.titsc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [7 x i32], align 16
  %12 = alloca [7 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.titsc* %0, %struct.titsc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.titsc*, %struct.titsc** %6, align 8
  %18 = getelementptr inbounds %struct.titsc, %struct.titsc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %37, %5
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.titsc*, %struct.titsc** %6, align 8
  %26 = load i32, i32* @REG_FIFO0, align 4
  %27 = call i8* @titsc_readl(%struct.titsc* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 4095
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.titsc*, %struct.titsc** %6, align 8
  %42 = load i32, i32* @REG_FIFO0, align 4
  %43 = call i8* @titsc_readl(%struct.titsc* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4095
  store i32 %48, i32* %46, align 4
  %49 = load %struct.titsc*, %struct.titsc** %6, align 8
  %50 = load i32, i32* @REG_FIFO0, align 4
  %51 = call i8* @titsc_readl(%struct.titsc* %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 4095
  store i32 %56, i32* %54, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %74, %40
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct.titsc*, %struct.titsc** %6, align 8
  %63 = load i32, i32* @REG_FIFO0, align 4
  %64 = call i8* @titsc_readl(%struct.titsc* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 4095
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %13, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* %16, align 4
  %79 = icmp ule i32 %78, 3
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %81

101:                                              ; preds = %81
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = udiv i32 %103, %102
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %14, align 4
  %107 = udiv i32 %106, %105
  store i32 %107, i32* %14, align 4
  br label %147

108:                                              ; preds = %77
  %109 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @titsc_cmp_coord, align 4
  %112 = call i32 @sort(i32* %109, i32 %110, i32 4, i32 %111, i32* null)
  %113 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @titsc_cmp_coord, align 4
  %116 = call i32 @sort(i32* %113, i32 %114, i32 4, i32 %115, i32* null)
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %135, %108
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sub i32 %119, 1
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %13, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %13, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load i32, i32* %16, align 4
  %140 = sub i32 %139, 2
  %141 = load i32, i32* %15, align 4
  %142 = udiv i32 %141, %140
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub i32 %143, 2
  %145 = load i32, i32* %14, align 4
  %146 = udiv i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %138, %101
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32*, i32** %7, align 8
  store i32 %150, i32* %151, align 4
  ret void
}

declare dso_local i8* @titsc_readl(%struct.titsc*, i32) #1

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
