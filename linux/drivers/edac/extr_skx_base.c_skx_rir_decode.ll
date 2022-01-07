; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_rir_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_rir_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoded_addr = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SKX_MAX_RIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No RIR entry for 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"0x%llx: dimm=%d rank=%d chan_rank=%d rank_addr=0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoded_addr*)* @skx_rir_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_rir_decode(%struct.decoded_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.decoded_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.decoded_addr* %0, %struct.decoded_addr** %3, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %14 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %13, i32 0, i32 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %19 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %25 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 6, i32* %7, align 4
  br label %36

35:                                               ; preds = %1
  store i32 13, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SKX_MAX_RIR, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %43 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %42, i32 0, i32 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %46 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %49 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @SKX_GET_RIRWAYNESS(%struct.TYPE_9__* %44, i64 %47, i64 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @SKX_RIR_LIMIT(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @SKX_RIR_VALID(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %62 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %67 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %83

72:                                               ; preds = %65, %59
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %37

78:                                               ; preds = %37
  %79 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %80 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 0, i32* %2, align 4
  br label %164

83:                                               ; preds = %71
  %84 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %85 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @SKX_RIR_WAYS(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %97 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @GENMASK_ULL(i32 %100, i32 0)
  %102 = and i32 %98, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %107 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %109 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @SKX_RIR_WAYS(i32 %113)
  %115 = srem i32 %112, %114
  store i32 %115, i32* %5, align 4
  %116 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %117 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %116, i32 0, i32 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %120 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %123 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @SKX_GET_RIRILV(%struct.TYPE_9__* %118, i64 %121, i64 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @SKX_RIR_OFFSET(i32 %130)
  %132 = sub nsw i32 %129, %131
  %133 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %134 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @SKX_RIR_CHAN_RANK(i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %139 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %140, 4
  %142 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %143 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %6, align 4
  %145 = srem i32 %144, 4
  %146 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %147 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 8
  %148 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %149 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %152 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %155 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %158 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.decoded_addr*, %struct.decoded_addr** %3, align 8
  %161 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %159, i32 %162)
  store i32 1, i32* %2, align 4
  br label %164

164:                                              ; preds = %83, %78
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @SKX_GET_RIRWAYNESS(%struct.TYPE_9__*, i64, i64, i32, i32) #1

declare dso_local i32 @SKX_RIR_LIMIT(i32) #1

declare dso_local i64 @SKX_RIR_VALID(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @SKX_RIR_WAYS(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @SKX_GET_RIRILV(%struct.TYPE_9__*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @SKX_RIR_OFFSET(i32) #1

declare dso_local i32 @SKX_RIR_CHAN_RANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
