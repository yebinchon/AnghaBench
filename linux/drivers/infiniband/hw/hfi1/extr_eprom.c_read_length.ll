; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_read_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_read_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@EP_PAGE_DWORDS = common dso_local global i32 0, align 4
@CMD_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EP_PAGE_MASK = common dso_local global i64 0, align 8
@EP_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i64, i64, i8*)* @read_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_length(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @EP_PAGE_DWORDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %109

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* @CMD_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %109

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @EP_PAGE_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @EP_PAGE_MASK, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %43, %45
  store i64 %46, i64* %14, align 8
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @read_page(%struct.hfi1_devdata* %47, i64 %48, i64* %20)
  %50 = load i64, i64* @EP_PAGE_SIZE, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %20, i64 %58
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @memcpy(i8* %57, i64* %59, i64 %60)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %109

62:                                               ; preds = %42
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i64, i64* %20, i64 %64
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @memcpy(i8* %63, i64* %65, i64 %66)
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr i8, i8* %75, i64 %74
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %62, %36
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @EP_PAGE_SIZE, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @read_page(%struct.hfi1_devdata* %83, i64 %84, i64* %20)
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* @EP_PAGE_SIZE, align 8
  %88 = call i32 @memcpy(i8* %86, i64* %20, i64 %87)
  %89 = load i64, i64* @EP_PAGE_SIZE, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* @EP_PAGE_SIZE, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* @EP_PAGE_SIZE, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr i8, i8* %96, i64 %95
  store i8* %97, i8** %9, align 8
  br label %78

98:                                               ; preds = %78
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @read_page(%struct.hfi1_devdata* %102, i64 %103, i64* %20)
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @memcpy(i8* %105, i64* %20, i64 %106)
  br label %108

108:                                              ; preds = %101, %98
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %108, %56, %33, %23
  %110 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_page(%struct.hfi1_devdata*, i64, i64*) #2

declare dso_local i32 @memcpy(i8*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
