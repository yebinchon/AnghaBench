; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_calc_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_calc_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp_mc_drvdata = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp_mc_drvdata*, i64, i64, i32, i32)* @axp_mc_calc_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp_mc_calc_address(%struct.axp_mc_drvdata* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.axp_mc_drvdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.axp_mc_drvdata* %0, %struct.axp_mc_drvdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %7, align 8
  %13 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %58

16:                                               ; preds = %5
  %17 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %7, align 8
  %18 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 65528
  %27 = shl i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %29, 7
  %31 = shl i64 %30, 16
  %32 = or i64 %28, %31
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 7
  %35 = shl i32 %34, 13
  %36 = sext i32 %35 to i64
  %37 = or i64 %32, %36
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 1023
  %40 = shl i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = or i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %147

44:                                               ; preds = %16
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, -65536
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, 7
  %50 = shl i64 %49, 13
  %51 = or i64 %47, %50
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 1023
  %54 = shl i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = or i64 %51, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %147

58:                                               ; preds = %5
  %59 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %7, align 8
  %60 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %105

63:                                               ; preds = %58
  %64 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %7, align 8
  %65 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 65520
  %74 = shl i32 %73, 15
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = and i64 %76, 7
  %78 = shl i64 %77, 16
  %79 = or i64 %75, %78
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 15
  %82 = shl i32 %81, 12
  %83 = sext i32 %82 to i64
  %84 = or i64 %79, %83
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 1023
  %87 = shl i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = or i64 %84, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %147

91:                                               ; preds = %63
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 2147450880
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = and i64 %95, 7
  %97 = shl i64 %96, 12
  %98 = or i64 %94, %97
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 1023
  %101 = shl i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = or i64 %98, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %6, align 4
  br label %147

105:                                              ; preds = %58
  %106 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %7, align 8
  %107 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %105
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 65504
  %116 = shl i32 %115, 14
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %9, align 8
  %119 = and i64 %118, 7
  %120 = shl i64 %119, 16
  %121 = or i64 %117, %120
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, 31
  %124 = shl i32 %123, 11
  %125 = sext i32 %124 to i64
  %126 = or i64 %121, %125
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 1023
  %129 = shl i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = or i64 %126, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %147

133:                                              ; preds = %105
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 1073725440
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %9, align 8
  %138 = and i64 %137, 7
  %139 = shl i64 %138, 11
  %140 = or i64 %136, %139
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, 1023
  %143 = shl i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = or i64 %140, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %133, %113, %91, %71, %44, %24
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
