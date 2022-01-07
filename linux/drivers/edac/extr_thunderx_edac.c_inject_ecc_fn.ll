; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_inject_ecc_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_inject_ecc_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunderx_lmc = type { i64, i32, i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@LMC_CHAR_MASK0 = common dso_local global i64 0, align 8
@LMC_CHAR_MASK2 = common dso_local global i64 0, align 8
@LMC_ECC_PARITY_TEST = common dso_local global i64 0, align 8
@TEST_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @inject_ecc_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_ecc_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thunderx_lmc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.thunderx_lmc*
  store %struct.thunderx_lmc* %11, %struct.thunderx_lmc** %3, align 8
  %12 = call i32 (...) @cache_line_size()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = udiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %17 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @page_address(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %21 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @page_to_phys(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 127
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %29 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, -1793
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %36 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %40 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %43 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LMC_CHAR_MASK0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeq(i32 %41, i64 %46)
  %48 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %49 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %52 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LMC_CHAR_MASK2, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeq(i32 %50, i64 %55)
  %57 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %58 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %62 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LMC_ECC_PARITY_TEST, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeq(i32 %60, i64 %65)
  %67 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %68 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LMC_CHAR_MASK0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readq(i64 %71)
  %73 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %74 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LMC_CHAR_MASK2, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readq(i64 %77)
  %79 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %3, align 8
  %80 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LMC_ECC_PARITY_TEST, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readq(i64 %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %102, %1
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i64, i64* %4, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* @TEST_PATTERN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @memset(i8* %91, i32 %92, i32 %93)
  %95 = call i32 (...) @barrier()
  %96 = load i64, i64* %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = mul i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = add i64 %96, %100
  call void asm sideeffect "dc civac, $0\0Adsb sy\0A", "r,~{dirflag},~{fpsr},~{flags}"(i64 %101) #2, !srcloc !2
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %85

105:                                              ; preds = %85
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %117, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = add i64 %111, %115
  call void asm sideeffect "sys #0,c11,C1,#2, $0\0A", "r,~{dirflag},~{fpsr},~{flags}"(i64 %116) #2, !srcloc !3
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %106

120:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %132, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = mul i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = add i64 %126, %130
  call void asm sideeffect "sys #0,c11,C1,#1, $0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %131) #2, !srcloc !4
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %121

135:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %147, %135
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load i64, i64* %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %6, align 4
  %144 = mul i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = add i64 %141, %145
  call void asm sideeffect "dc ivac, $0\0Adsb sy\0A", "r,~{dirflag},~{fpsr},~{flags}"(i64 %146) #2, !srcloc !5
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %8, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %136

150:                                              ; preds = %136
  ret i32 0
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1446, i32 1472}
!3 = !{i32 1582}
!4 = !{i32 1704}
!5 = !{i32 1820, i32 1845}
