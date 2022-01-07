; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_alloc_test_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_alloc_test_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_data = type { i32, i64*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmatest_data*, i32, i32)* @dmatest_alloc_test_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_alloc_test_data(%struct.dmatest_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmatest_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dmatest_data* %0, %struct.dmatest_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %10 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kcalloc(i32 %12, i32 8, i32 %13)
  %15 = bitcast i8* %14 to i64*
  %16 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %17 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %16, i32 0, i32 1
  store i64* %15, i64** %17, align 8
  %18 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %19 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %27 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to i64*
  %33 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %34 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %33, i32 0, i32 2
  store i64* %32, i64** %34, align 8
  %35 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %36 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %106

40:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %102, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %44 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %54 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  %59 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %60 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %47
  br label %106

68:                                               ; preds = %47
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %73 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @PTR_ALIGN(i64 %78, i32 %79)
  %81 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %82 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %80, i64* %86, align 8
  br label %101

87:                                               ; preds = %68
  %88 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %89 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %96 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  br label %101

101:                                              ; preds = %87, %71
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %41

105:                                              ; preds = %41
  store i32 0, i32* %4, align 4
  br label %112

106:                                              ; preds = %67, %39
  %107 = load %struct.dmatest_data*, %struct.dmatest_data** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @__dmatest_free_test_data(%struct.dmatest_data* %107, i32 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %105, %22
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @PTR_ALIGN(i64, i32) #1

declare dso_local i32 @__dmatest_free_test_data(%struct.dmatest_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
