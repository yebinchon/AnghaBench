; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sa11x0_dma_dev = type { %struct.sa11x0_dma_phy* }
%struct.sa11x0_dma_phy = type { i32, i64, i8**, i8** }

@NR_PHY_CHAN = common dso_local global i32 0, align 4
@DMA_DCSR_R = common dso_local global i64 0, align 8
@DCSR_RUN = common dso_local global i32 0, align 4
@DCSR_IE = common dso_local global i32 0, align 4
@DMA_DCSR_C = common dso_local global i64 0, align 8
@DCSR_BIU = common dso_local global i32 0, align 4
@DMA_DBSB = common dso_local global i64 0, align 8
@DMA_DBTB = common dso_local global i64 0, align 8
@DMA_DBSA = common dso_local global i64 0, align 8
@DMA_DBTA = common dso_local global i64 0, align 8
@DCSR_STRTA = common dso_local global i32 0, align 4
@DCSR_STRTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sa11x0_dma_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_dma_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sa11x0_dma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa11x0_dma_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.sa11x0_dma_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.sa11x0_dma_dev* %9, %struct.sa11x0_dma_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %182, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NR_PHY_CHAN, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %185

14:                                               ; preds = %10
  %15 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %15, i32 0, i32 0
  %17 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %17, i64 %19
  store %struct.sa11x0_dma_phy* %20, %struct.sa11x0_dma_phy** %5, align 8
  %21 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %22 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_DCSR_R, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readl_relaxed(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %7, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DCSR_RUN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %14
  %33 = load i32, i32* @DCSR_RUN, align 4
  %34 = load i32, i32* @DCSR_IE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %37 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DMA_DCSR_C, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %43 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DMA_DCSR_R, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i8* @readl_relaxed(i64 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %32, %14
  %50 = load i32, i32* @DCSR_RUN, align 4
  %51 = load i32, i32* @DCSR_IE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DCSR_BIU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %121

59:                                               ; preds = %49
  %60 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %61 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_DBSB, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i8* @readl_relaxed(i64 %64)
  %66 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %67 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %71 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DMA_DBTB, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i8* @readl_relaxed(i64 %74)
  %76 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %77 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %75, i8** %79, align 8
  %80 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %81 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DMA_DBSA, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i8* @readl_relaxed(i64 %84)
  %86 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %87 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %86, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* %85, i8** %89, align 8
  %90 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %91 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DMA_DBTA, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i8* @readl_relaxed(i64 %94)
  %96 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %97 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %96, i32 0, i32 2
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @DCSR_STRTA, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %59
  %105 = load i32, i32* @DCSR_STRTB, align 4
  br label %107

106:                                              ; preds = %59
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @DCSR_STRTB, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @DCSR_STRTA, align 4
  br label %116

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %108, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %169

121:                                              ; preds = %49
  %122 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %123 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DMA_DBSA, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i8* @readl_relaxed(i64 %126)
  %128 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %129 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %128, i32 0, i32 3
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  store i8* %127, i8** %131, align 8
  %132 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %133 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DMA_DBTA, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i8* @readl_relaxed(i64 %136)
  %138 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %139 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %138, i32 0, i32 2
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  store i8* %137, i8** %141, align 8
  %142 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %143 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DMA_DBSB, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i8* @readl_relaxed(i64 %146)
  %148 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %149 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %148, i32 0, i32 3
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  store i8* %147, i8** %151, align 8
  %152 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %153 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DMA_DBTB, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i8* @readl_relaxed(i64 %156)
  %158 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %159 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %158, i32 0, i32 2
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  store i8* %157, i8** %161, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @DCSR_STRTA, align 4
  %164 = load i32, i32* @DCSR_STRTB, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = load i32, i32* %7, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %121, %116
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %172 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @DCSR_STRTA, align 4
  %174 = load i32, i32* @DCSR_STRTB, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.sa11x0_dma_phy*, %struct.sa11x0_dma_phy** %5, align 8
  %177 = getelementptr inbounds %struct.sa11x0_dma_phy, %struct.sa11x0_dma_phy* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DMA_DCSR_C, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i32 %175, i64 %180)
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %4, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %10

185:                                              ; preds = %10
  ret i32 0
}

declare dso_local %struct.sa11x0_dma_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
