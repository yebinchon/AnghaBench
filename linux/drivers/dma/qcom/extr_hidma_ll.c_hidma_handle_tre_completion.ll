; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_handle_tre_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_handle_tre_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i32, i32*, i64, i32 }

@HIDMA_EVCA_WRITE_PTR_REG = common dso_local global i64 0, align 8
@HIDMA_EVRE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HW reports invalid EVRE write offset\0A\00", align 1
@HIDMA_EVRE_CFG_IDX = common dso_local global i64 0, align 8
@HIDMA_EVRE_ERRINFO_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_EVRE_ERRINFO_MASK = common dso_local global i32 0, align 4
@HIDMA_EVRE_CODE_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_EVRE_CODE_MASK = common dso_local global i32 0, align 4
@HIDMA_EVCA_DOORBELL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_lldev*)* @hidma_handle_tre_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_handle_tre_completion(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %13 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %14 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %17 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HIDMA_EVCA_WRITE_PTR_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %23 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @HIDMA_EVRE_SIZE, align 4
  %31 = srem i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %1
  %34 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %35 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %88, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %39
  %44 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %45 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* @HIDMA_EVRE_CFG_IDX, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @HIDMA_EVRE_ERRINFO_BIT_POS, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @HIDMA_EVRE_ERRINFO_MASK, align 4
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @HIDMA_EVRE_CODE_BIT_POS, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* @HIDMA_EVRE_CODE_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @hidma_post_completed(%struct.hidma_lldev* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %43
  br label %89

71:                                               ; preds = %43
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HIDMA_EVRE_SIZE, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @HIDMA_INCREMENT_ITERATOR(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %77 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HIDMA_EVCA_WRITE_PTR_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl_relaxed(i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %85 = call i32 @hidma_ll_isenabled(%struct.hidma_lldev* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %71
  br label %89

88:                                               ; preds = %71
  br label %39

89:                                               ; preds = %87, %70, %39
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %94 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HIDMA_EVRE_SIZE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %4, align 4
  %102 = srem i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %105 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @HIDMA_EVCA_DOORBELL_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %112 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %92, %89
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %33
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @hidma_post_completed(%struct.hidma_lldev*, i32, i32) #1

declare dso_local i32 @HIDMA_INCREMENT_ITERATOR(i32, i32, i32) #1

declare dso_local i32 @hidma_ll_isenabled(%struct.hidma_lldev*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
