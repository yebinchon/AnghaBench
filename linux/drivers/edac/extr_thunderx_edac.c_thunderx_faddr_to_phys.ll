; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_faddr_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_faddr_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunderx_lmc = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.thunderx_lmc*)* @thunderx_faddr_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_faddr_to_phys(i32 %0, %struct.thunderx_lmc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thunderx_lmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.thunderx_lmc* %1, %struct.thunderx_lmc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %9 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 40
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @LMC_FADR_FDIMM(i32 %14)
  %16 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %17 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @LMC_FADR_FBUNK(i32 %22)
  %24 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %25 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @LMC_FADR_FROW(i32 %30)
  %32 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %33 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @LMC_FADR_FCOL(i32 %38)
  %40 = ashr i32 %39, 4
  %41 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %42 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %40, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @LMC_FADR_FBANK(i32 %47)
  %49 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %50 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %54 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %60 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 12, %61
  %63 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %64 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @get_bits(i32 %58, i32 %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = xor i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %57, %2
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %72 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %78 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %77, i32 0, i32 9
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PCI_FUNC(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %84 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %69
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %90 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @get_bits(i32 %88, i32 20, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %95 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @get_bits(i32 %93, i32 12, i32 %96)
  %98 = xor i32 %92, %97
  %99 = load i32, i32* %7, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %87, %69
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 7
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @LMC_FADR_FDIMM(i32) #1

declare dso_local i32 @LMC_FADR_FBUNK(i32) #1

declare dso_local i32 @LMC_FADR_FROW(i32) #1

declare dso_local i32 @LMC_FADR_FCOL(i32) #1

declare dso_local i32 @LMC_FADR_FBANK(i32) #1

declare dso_local i32 @get_bits(i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
