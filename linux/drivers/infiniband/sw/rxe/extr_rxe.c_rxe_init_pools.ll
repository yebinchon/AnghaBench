; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RXE_TYPE_UC = common dso_local global i32 0, align 4
@RXE_TYPE_PD = common dso_local global i32 0, align 4
@RXE_TYPE_AH = common dso_local global i32 0, align 4
@RXE_TYPE_SRQ = common dso_local global i32 0, align 4
@RXE_TYPE_QP = common dso_local global i32 0, align 4
@RXE_TYPE_CQ = common dso_local global i32 0, align 4
@RXE_TYPE_MR = common dso_local global i32 0, align 4
@RXE_TYPE_MW = common dso_local global i32 0, align 4
@RXE_TYPE_MC_GRP = common dso_local global i32 0, align 4
@RXE_TYPE_MC_ELEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*)* @rxe_init_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_init_pools(%struct.rxe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %3, align 8
  %5 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %6 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @RXE_TYPE_UC, align 4
  %9 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rxe_pool_init(%struct.rxe_dev* %5, i32* %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %170

16:                                               ; preds = %1
  %17 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %18 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %18, i32 0, i32 1
  %20 = load i32, i32* @RXE_TYPE_PD, align 4
  %21 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rxe_pool_init(%struct.rxe_dev* %17, i32* %19, i32 %20, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %166

29:                                               ; preds = %16
  %30 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %31 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %31, i32 0, i32 2
  %33 = load i32, i32* @RXE_TYPE_AH, align 4
  %34 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rxe_pool_init(%struct.rxe_dev* %30, i32* %32, i32 %33, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %162

42:                                               ; preds = %29
  %43 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %44 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %44, i32 0, i32 3
  %46 = load i32, i32* @RXE_TYPE_SRQ, align 4
  %47 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rxe_pool_init(%struct.rxe_dev* %43, i32* %45, i32 %46, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %158

55:                                               ; preds = %42
  %56 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %57 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %57, i32 0, i32 4
  %59 = load i32, i32* @RXE_TYPE_QP, align 4
  %60 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %61 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rxe_pool_init(%struct.rxe_dev* %56, i32* %58, i32 %59, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %154

68:                                               ; preds = %55
  %69 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %70 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %70, i32 0, i32 5
  %72 = load i32, i32* @RXE_TYPE_CQ, align 4
  %73 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rxe_pool_init(%struct.rxe_dev* %69, i32* %71, i32 %72, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %150

81:                                               ; preds = %68
  %82 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %83 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %84 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %83, i32 0, i32 6
  %85 = load i32, i32* @RXE_TYPE_MR, align 4
  %86 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %87 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rxe_pool_init(%struct.rxe_dev* %82, i32* %84, i32 %85, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %146

94:                                               ; preds = %81
  %95 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %96 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %97 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %96, i32 0, i32 7
  %98 = load i32, i32* @RXE_TYPE_MW, align 4
  %99 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %100 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rxe_pool_init(%struct.rxe_dev* %95, i32* %97, i32 %98, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %142

107:                                              ; preds = %94
  %108 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %109 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %110 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %109, i32 0, i32 8
  %111 = load i32, i32* @RXE_TYPE_MC_GRP, align 4
  %112 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %113 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rxe_pool_init(%struct.rxe_dev* %108, i32* %110, i32 %111, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %138

120:                                              ; preds = %107
  %121 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %122 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %123 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %122, i32 0, i32 10
  %124 = load i32, i32* @RXE_TYPE_MC_ELEM, align 4
  %125 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %126 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rxe_pool_init(%struct.rxe_dev* %121, i32* %123, i32 %124, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %134

133:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %172

134:                                              ; preds = %132
  %135 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %136 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %135, i32 0, i32 8
  %137 = call i32 @rxe_pool_cleanup(i32* %136)
  br label %138

138:                                              ; preds = %134, %119
  %139 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %140 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %139, i32 0, i32 7
  %141 = call i32 @rxe_pool_cleanup(i32* %140)
  br label %142

142:                                              ; preds = %138, %106
  %143 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %144 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %143, i32 0, i32 6
  %145 = call i32 @rxe_pool_cleanup(i32* %144)
  br label %146

146:                                              ; preds = %142, %93
  %147 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %148 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %147, i32 0, i32 5
  %149 = call i32 @rxe_pool_cleanup(i32* %148)
  br label %150

150:                                              ; preds = %146, %80
  %151 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %152 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %151, i32 0, i32 4
  %153 = call i32 @rxe_pool_cleanup(i32* %152)
  br label %154

154:                                              ; preds = %150, %67
  %155 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %156 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %155, i32 0, i32 3
  %157 = call i32 @rxe_pool_cleanup(i32* %156)
  br label %158

158:                                              ; preds = %154, %54
  %159 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %160 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %159, i32 0, i32 2
  %161 = call i32 @rxe_pool_cleanup(i32* %160)
  br label %162

162:                                              ; preds = %158, %41
  %163 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %164 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %163, i32 0, i32 1
  %165 = call i32 @rxe_pool_cleanup(i32* %164)
  br label %166

166:                                              ; preds = %162, %28
  %167 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %168 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %167, i32 0, i32 0
  %169 = call i32 @rxe_pool_cleanup(i32* %168)
  br label %170

170:                                              ; preds = %166, %15
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %133
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @rxe_pool_init(%struct.rxe_dev*, i32*, i32, i32) #1

declare dso_local i32 @rxe_pool_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
