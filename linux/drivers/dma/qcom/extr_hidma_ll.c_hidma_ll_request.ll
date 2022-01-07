; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i32, %struct.hidma_tre* }
%struct.hidma_tre = type { i32, i8*, void (i8*)*, i32, i32*, %struct.hidma_lldev*, i64, i64, i64, i64, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIDMA_TRE_CFG_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_request(%struct.hidma_lldev* %0, i32 %1, i8* %2, void (i8*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidma_lldev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hidma_tre*, align 8
  %16 = alloca i32*, align 8
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store void (i8*)* %3, void (i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %21 = icmp ne %struct.hidma_lldev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %117

25:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %29 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %35 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %34, i32 0, i32 2
  %36 = load %struct.hidma_tre*, %struct.hidma_tre** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %36, i64 %38
  %40 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %39, i32 0, i32 11
  %41 = call i64 @atomic_add_unless(i32* %40, i32 1, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %26

48:                                               ; preds = %43, %26
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %51 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %117

58:                                               ; preds = %48
  %59 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %60 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %59, i32 0, i32 2
  %61 = load %struct.hidma_tre*, %struct.hidma_tre** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %61, i64 %63
  store %struct.hidma_tre* %64, %struct.hidma_tre** %15, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %67 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %70 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load void (i8*)*, void (i8*)** %11, align 8
  %72 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %73 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %72, i32 0, i32 2
  store void (i8*)* %71, void (i8*)** %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %76 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %79 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %81 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %80, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %83 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %85 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %87 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %89 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %90 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %89, i32 0, i32 5
  store %struct.hidma_lldev* %88, %struct.hidma_lldev** %90, align 8
  %91 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %92 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32* %94, i32** %16, align 8
  %95 = load %struct.hidma_lldev*, %struct.hidma_lldev** %8, align 8
  %96 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 255
  %99 = shl i32 %98, 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i64, i64* @HIDMA_TRE_CFG_IDX, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = call i32 @BIT(i32 16)
  %104 = load i32*, i32** %16, align 8
  %105 = load i64, i64* @HIDMA_TRE_CFG_IDX, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %13, align 8
  store i32 %109, i32* %110, align 4
  %111 = load void (i8*)*, void (i8*)** %11, align 8
  %112 = icmp ne void (i8*)* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %58
  %114 = load void (i8*)*, void (i8*)** %11, align 8
  %115 = load i8*, i8** %12, align 8
  call void %114(i8* %115)
  br label %116

116:                                              ; preds = %113, %58
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %55, %22
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
