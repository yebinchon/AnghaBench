; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_loop_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_loop_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32*, i32*, i32*)* @stv090x_get_loop_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_loop_params(%struct.stv090x_state* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = sdiv i32 %21, 10
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sdiv i32 %25, 2
  %27 = mul nsw i32 65536, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %29 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 1000
  %34 = load i32, i32* %13, align 4
  %35 = sdiv i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 16384
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 16384, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %42 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 1000
  %47 = load i32, i32* %10, align 4
  %48 = sdiv i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 256
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 256
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 1000
  store i32 %54, i32* %10, align 4
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %65 [
    i32 129, label %58
    i32 130, label %58
    i32 128, label %61
    i32 131, label %64
  ]

58:                                               ; preds = %39, %39
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 3
  store i32 %60, i32* %10, align 4
  store i32 20, i32* %9, align 4
  br label %68

61:                                               ; preds = %39
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %10, align 4
  store i32 25, i32* %9, align 4
  br label %68

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %39, %64
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, 3
  store i32 %67, i32* %10, align 4
  store i32 25, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %61, %58
  %69 = load i32, i32* %10, align 4
  %70 = sdiv i32 %69, 100
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %68
  %78 = load i32, i32* %13, align 4
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 27500
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = sdiv i32 %86, 1000
  %88 = load i32, i32* %9, align 4
  %89 = sdiv i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 100
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  store i32 100, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %98, %99
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, 100
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %97
  store i32 100, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
