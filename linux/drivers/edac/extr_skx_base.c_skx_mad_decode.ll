; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_mad_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_mad_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoded_addr = type { i64, i64, i64, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.skx_dimm* }
%struct.skx_dimm = type { i32, i32, i32, i64, i64 }

@skx_close_row = common dso_local global i32 0, align 4
@skx_close_column = common dso_local global i32 0, align 4
@skx_open_row = common dso_local global i32 0, align 4
@skx_open_fine_column = common dso_local global i32 0, align 4
@skx_open_column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"0x%llx: row=0x%x col=0x%x bank_addr=%d bank_group=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoded_addr*)* @skx_mad_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_mad_decode(%struct.decoded_addr* %0) #0 {
  %2 = alloca %struct.decoded_addr*, align 8
  %3 = alloca %struct.skx_dimm*, align 8
  %4 = alloca i32, align 4
  store %struct.decoded_addr* %0, %struct.decoded_addr** %2, align 8
  %5 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %6 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %5, i32 0, i32 9
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %11 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %17 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.skx_dimm*, %struct.skx_dimm** %20, align 8
  %22 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %23 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %21, i64 %24
  store %struct.skx_dimm* %25, %struct.skx_dimm** %3, align 8
  %26 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %27 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 6, i32 13
  store i32 %31, i32* %4, align 4
  %32 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %33 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %1
  %37 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %38 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %41 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @skx_close_row, align 4
  %44 = call i8* @skx_bits(i32 %39, i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %47 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %49 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %52 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @skx_close_column, align 4
  %55 = call i8* @skx_bits(i32 %50, i32 %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %58 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %60 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 1024
  store i32 %62, i32* %60, align 4
  %63 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %64 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %67 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @skx_bank_bits(i32 %65, i32 8, i32 9, i32 %68, i32 22, i32 28)
  %70 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %71 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %73 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %76 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @skx_bank_bits(i32 %74, i32 6, i32 7, i32 %77, i32 20, i32 21)
  %79 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %80 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  br label %141

81:                                               ; preds = %1
  %82 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %83 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %86 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @skx_open_row, align 4
  %89 = call i8* @skx_bits(i32 %84, i32 %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %92 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %94 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %81
  %98 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %99 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %102 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @skx_open_fine_column, align 4
  %105 = call i8* @skx_bits(i32 %100, i32 %103, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %108 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  br label %121

109:                                              ; preds = %81
  %110 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %111 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %114 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @skx_open_column, align 4
  %117 = call i8* @skx_bits(i32 %112, i32 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %120 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %109, %97
  %122 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %123 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %126 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @skx_bank_bits(i32 %124, i32 18, i32 19, i32 %127, i32 22, i32 23)
  %129 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %130 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %132 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %136 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @skx_bank_bits(i32 %133, i32 %134, i32 17, i32 %137, i32 20, i32 21)
  %139 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %140 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %121, %36
  %142 = load %struct.skx_dimm*, %struct.skx_dimm** %3, align 8
  %143 = getelementptr inbounds %struct.skx_dimm, %struct.skx_dimm* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 1, %144
  %146 = sub i32 %145, 1
  %147 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %148 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %152 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %155 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %158 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %161 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %164 = getelementptr inbounds %struct.decoded_addr, %struct.decoded_addr* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %156, i32 %159, i8* %162, i8* %165)
  ret i32 1
}

declare dso_local i8* @skx_bits(i32, i32, i32) #1

declare dso_local i8* @skx_bank_bits(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
