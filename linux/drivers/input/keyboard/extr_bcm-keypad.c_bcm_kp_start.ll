; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kp = type { i32, i32, i32, i32, i32, i64, i8**, i64 }

@KPIOR_OFFSET = common dso_local global i64 0, align 8
@KPIMR0_OFFSET = common dso_local global i64 0, align 8
@KPIMR1_OFFSET = common dso_local global i64 0, align 8
@KPEMR0_OFFSET = common dso_local global i64 0, align 8
@KPEMR1_OFFSET = common dso_local global i64 0, align 8
@KPEMR2_OFFSET = common dso_local global i64 0, align 8
@KPEMR3_OFFSET = common dso_local global i64 0, align 8
@KPICR0_OFFSET = common dso_local global i64 0, align 8
@KPICR1_OFFSET = common dso_local global i64 0, align 8
@KPSSR0_OFFSET = common dso_local global i64 0, align 8
@KPSSR1_OFFSET = common dso_local global i64 0, align 8
@KPCR_ENABLE = common dso_local global i32 0, align 4
@KPCR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kp*)* @bcm_kp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kp_start(%struct.bcm_kp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_kp*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm_kp* %0, %struct.bcm_kp** %3, align 8
  %5 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %6 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clk_prepare_enable(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %126

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %21 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KPIOR_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %30 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %33 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KPIMR0_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %39 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KPIMR1_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %48 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %51 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KPEMR0_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %57 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %60 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @KPEMR1_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %66 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @KPEMR2_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %78 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KPEMR3_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %84 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @KPICR0_OFFSET, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 -1, i64 %87)
  %89 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %90 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @KPICR1_OFFSET, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 -1, i64 %93)
  %95 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %96 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @KPSSR0_OFFSET, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i8* @readl(i64 %99)
  %101 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %102 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %101, i32 0, i32 6
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  store i8* %100, i8** %104, align 8
  %105 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %106 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @KPSSR1_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i8* @readl(i64 %109)
  %111 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %112 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %111, i32 0, i32 6
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  store i8* %110, i8** %114, align 8
  %115 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %116 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @KPCR_ENABLE, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %121 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @KPCR_OFFSET, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %19, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
