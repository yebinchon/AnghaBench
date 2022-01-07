; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f17_addr_mask_to_cs_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f17_addr_mask_to_cs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@CS_EVEN = common dso_local global i32 0, align 4
@CS_ODD = common dso_local global i32 0, align 4
@CS_ODD_SECONDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CS%d DIMM%d AddrMasks:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  Original AddrMask: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  Deinterleaved AddrMask: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32, i32)* @f17_addr_mask_to_cs_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f17_addr_mask_to_cs_size(%struct.amd64_pvt* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %16, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CS_EVEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %103

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CS_ODD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %103

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @CS_ODD_SECONDARY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %56 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  br label %78

66:                                               ; preds = %49, %43
  %67 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %68 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %66, %54
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @fls(i32 %79)
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @hweight_long(i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @GENMASK_ULL(i32 %89, i32 1)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = ashr i32 %98, 2
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = ashr i32 %101, 10
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %78, %41, %30, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
