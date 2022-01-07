; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_iter = type { i64, i64, i32, i64, i64, i64, %struct.msc* }
%struct.msc = type { i32 }

@MSC_BDESC = common dso_local global i32 0, align 4
@DATA_IN_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.msc_iter*, i64, i8*, i64 (i8*, i8*, i64)*)* @msc_buffer_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msc_buffer_iterate(%struct.msc_iter* %0, i64 %1, i8* %2, i64 (i8*, i8*, i64)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.msc_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i8*, i64)*, align 8
  %10 = alloca %struct.msc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.msc_iter* %0, %struct.msc_iter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 (i8*, i8*, i64)* %3, i64 (i8*, i8*, i64)** %9, align 8
  %18 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %19 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %18, i32 0, i32 6
  %20 = load %struct.msc*, %struct.msc** %19, align 8
  store %struct.msc* %20, %struct.msc** %10, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %23 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %127

27:                                               ; preds = %4
  %28 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %29 = load %struct.msc*, %struct.msc** %10, align 8
  %30 = call i64 @msc_iter_win_start(%struct.msc_iter* %28, %struct.msc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %127

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %120, %33
  %35 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %36 = call i64 @msc_iter_bdesc(%struct.msc_iter* %35)
  %37 = call i64 @msc_data_sz(i64 %36)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %39 = call i64 @msc_iter_bdesc(%struct.msc_iter* %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* @MSC_BDESC, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  store i8* %43, i8** %14, align 8
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 1, i32* %12, align 4
  %45 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %46 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %49 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %34
  %53 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %54 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i64, i64* @DATA_IN_PAGE, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr i8, i8* %62, i64 %61
  store i8* %63, i8** %14, align 8
  br label %64

64:                                               ; preds = %57, %52, %34
  %65 = load i64, i64* %15, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %114

68:                                               ; preds = %64
  %69 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %70 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %15, align 8
  %74 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %75 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr i8, i8* %77, i64 %76
  store i8* %78, i8** %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %15, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i64, i64* %11, align 8
  store i64 %83, i64* %15, align 8
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %68
  %85 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i64 %85(i8* %86, i8* %87, i64 %88)
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %17, align 8
  %96 = sub i64 %94, %95
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %102 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %107 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %93
  br label %123

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %67
  %115 = load %struct.msc_iter*, %struct.msc_iter** %6, align 8
  %116 = call i64 @msc_iter_block_advance(%struct.msc_iter* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %123

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %34, label %123

123:                                              ; preds = %120, %118, %112
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %11, align 8
  %126 = sub i64 %124, %125
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %123, %32, %26
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i64 @msc_iter_win_start(%struct.msc_iter*, %struct.msc*) #1

declare dso_local i64 @msc_data_sz(i64) #1

declare dso_local i64 @msc_iter_bdesc(%struct.msc_iter*) #1

declare dso_local i64 @msc_iter_block_advance(%struct.msc_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
