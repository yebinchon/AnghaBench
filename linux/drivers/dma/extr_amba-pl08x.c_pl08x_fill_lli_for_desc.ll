; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_fill_lli_for_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_fill_lli_for_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.pl08x_lli_build_data = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@MAX_NUM_TSFR_LLIS = common dso_local global i32 0, align 4
@PL080_LLI_SRC = common dso_local global i64 0, align 8
@PL080_LLI_DST = common dso_local global i64 0, align 8
@PL080_LLI_LLI = common dso_local global i64 0, align 8
@PL080_LLI_CCTL = common dso_local global i64 0, align 8
@PL080S_LLI_CCTL2 = common dso_local global i64 0, align 8
@PL080_CONTROL_SRC_INCR = common dso_local global i32 0, align 4
@PL080_CONTROL_DST_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*, %struct.pl08x_lli_build_data*, i32, i32, i32, i32)* @pl08x_fill_lli_for_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_fill_lli_for_desc(%struct.pl08x_driver_data* %0, %struct.pl08x_lli_build_data* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pl08x_driver_data*, align 8
  %8 = alloca %struct.pl08x_lli_build_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %7, align 8
  store %struct.pl08x_lli_build_data* %1, %struct.pl08x_lli_build_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %7, align 8
  %18 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %22 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %14, align 8
  %29 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %30 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX_NUM_TSFR_LLIS, align 4
  %36 = icmp sge i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %7, align 8
  %40 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %45 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* @PL080_LLI_SRC, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %52 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i64, i64* @PL080_LLI_DST, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = add i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %14, align 8
  %66 = load i64, i64* @PL080_LLI_LLI, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %69 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i64, i64* @PL080_LLI_LLI, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i64, i64* @PL080_LLI_CCTL, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %7, align 8
  %81 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %6
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* @PL080S_LLI_CCTL2, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %6
  %92 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %7, align 8
  %93 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %101 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %107 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %136

111:                                              ; preds = %91
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @PL080_CONTROL_SRC_INCR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %119 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %117
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %116, %111
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @PL080_CONTROL_DST_INCR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %131 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %123
  br label %136

136:                                              ; preds = %135, %98
  %137 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %138 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @BUG_ON(i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %8, align 8
  %146 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
