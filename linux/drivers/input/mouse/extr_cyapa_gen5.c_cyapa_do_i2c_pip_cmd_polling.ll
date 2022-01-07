; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_do_i2c_pip_cmd_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_do_i2c_pip_cmd_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i64, i32*, i32*, i64, i64)* @cyapa_do_i2c_pip_cmd_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_do_i2c_pip_cmd_polling(%struct.cyapa* %0, i32* %1, i64 %2, i32* %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cyapa*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %22, %struct.cyapa_pip_cmd_states** %16, align 8
  %23 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %16, align 8
  %24 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  %26 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @cyapa_i2c_pip_write(%struct.cyapa* %26, i32* %27, i64 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %7
  %33 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %16, align 8
  %34 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec(i32* %34)
  %36 = load i32, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %19, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ]
  store i32 %44, i32* %8, align 4
  br label %116

45:                                               ; preds = %7
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %18, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %111

59:                                               ; preds = %56
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  %66 = load i64, i64* %14, align 8
  %67 = udiv i64 %66, 5
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %86, %65
  %70 = call i32 @usleep_range(i32 3000, i32 5000)
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %73, i32* %74, i32* %75, i64 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %69
  br label %86

85:                                               ; preds = %80
  br label %90

86:                                               ; preds = %84
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %17, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %69, label %90

90:                                               ; preds = %86, %85
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %17, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97, %93, %90
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  br label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %108, %97
  br label %111

111:                                              ; preds = %110, %62, %59, %56, %52
  %112 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %16, align 8
  %113 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %112, i32 0, i32 0
  %114 = call i32 @atomic_dec(i32* %113)
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %43
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cyapa_i2c_pip_write(%struct.cyapa*, i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
