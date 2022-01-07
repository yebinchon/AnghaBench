; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_tad_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_tad_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoded_addr = type { i64, i32, i32, i64, i32, i32, i32 }

@SKX_MAX_TAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No TAD entry for 0x%llx\0A\00", align 1
@skx_granularity = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"0x%llx: chan_addr=0x%llx sktways=%d chanways=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoded_addr*)* @skx_tad_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_tad_decode(%struct.decoded_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.decoded_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.decoded_addr* %0, %struct.decoded_addr** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SKX_MAX_TAD, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %17 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %20 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SKX_GET_TADBASE(i32 %18, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %26 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %29 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SKX_GET_TADWAYNESS(i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @SKX_TAD_BASE(i32 %34)
  %36 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %37 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %15
  %41 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %42 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @SKX_TAD_LIMIT(i32 %44)
  %46 = icmp sle i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %57

48:                                               ; preds = %40, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %54 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %55)
  store i32 0, i32* %2, align 4
  br label %153

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @SKX_TAD_SKTWAYS(i32 %58)
  %60 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %61 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SKX_TAD_CHNWAYS(i32 %62)
  %64 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %65 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** @skx_granularity, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @SKX_TAD_SKT_GRAN(i32 %67)
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** @skx_granularity, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @SKX_TAD_CHN_GRAN(i32 %72)
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %77 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %80 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %83 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @SKX_GET_TADCHNILVOFFSET(i32 %78, i32 %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %89 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @SKX_TAD_OFFSET(i32 %91)
  %93 = sub nsw i64 %90, %92
  store i64 %93, i64* %10, align 8
  %94 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %95 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %117

98:                                               ; preds = %57
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %106 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @skx_do_interleave(i64 %103, i32 %104, i32 %107, i64 %108)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %113 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @skx_do_interleave(i64 %110, i32 %111, i32 %114, i64 %115)
  store i64 %116, i64* %10, align 8
  br label %136

117:                                              ; preds = %98, %57
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %121 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %124 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @skx_do_interleave(i64 %118, i32 %119, i32 %122, i64 %125)
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %130 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %133 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @skx_do_interleave(i64 %127, i32 %128, i32 %131, i64 %134)
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %117, %102
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %139 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  %140 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %141 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %144 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %147 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %150 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, i64, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %142, i64 %145, i32 %148, i32 %151)
  store i32 1, i32* %2, align 4
  br label %153

153:                                              ; preds = %136, %52
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @SKX_GET_TADBASE(i32, i32, i32, i32) #1

declare dso_local i32 @SKX_GET_TADWAYNESS(i32, i32, i32, i32) #1

declare dso_local i64 @SKX_TAD_BASE(i32) #1

declare dso_local i64 @SKX_TAD_LIMIT(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @SKX_TAD_SKTWAYS(i32) #1

declare dso_local i32 @SKX_TAD_CHNWAYS(i32) #1

declare dso_local i64 @SKX_TAD_SKT_GRAN(i32) #1

declare dso_local i64 @SKX_TAD_CHN_GRAN(i32) #1

declare dso_local i32 @SKX_GET_TADCHNILVOFFSET(i32, i32, i32, i32, i32) #1

declare dso_local i64 @SKX_TAD_OFFSET(i32) #1

declare dso_local i64 @skx_do_interleave(i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
