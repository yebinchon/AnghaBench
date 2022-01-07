; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_setup_one_pamu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_setup_one_pamu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pamu_mmap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAMU_PC = common dso_local global i64 0, align 8
@PAMU_MMAP_REGS_BASE = common dso_local global i64 0, align 8
@PAACT_SIZE = common dso_local global i64 0, align 8
@SPAACT_SIZE = common dso_local global i64 0, align 8
@OMT_SIZE = common dso_local global i64 0, align 8
@PAMU_PICS = common dso_local global i64 0, align 8
@PAMU_ACCESS_VIOLATION_ENABLE = common dso_local global i32 0, align 4
@PAMU_PC_PE = common dso_local global i32 0, align 4
@PAMU_PC_OCE = common dso_local global i32 0, align 4
@PAMU_PC_SPCC = common dso_local global i32 0, align 4
@PAMU_PC_PPCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64)* @setup_one_pamu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_one_pamu(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pamu_mmap_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAMU_PC, align 8
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PAMU_MMAP_REGS_BASE, align 8
  %19 = add i64 %17, %18
  %20 = inttoptr i64 %19 to %struct.pamu_mmap_regs*
  store %struct.pamu_mmap_regs* %20, %struct.pamu_mmap_regs** %12, align 8
  %21 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %22 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %21, i32 0, i32 11
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @upper_32_bits(i64 %23)
  %25 = call i32 @out_be32(i32* %22, i32 %24)
  %26 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %27 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %26, i32 0, i32 10
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @lower_32_bits(i64 %28)
  %30 = call i32 @out_be32(i32* %27, i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @PAACT_SIZE, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %35 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %34, i32 0, i32 9
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @upper_32_bits(i64 %36)
  %38 = call i32 @out_be32(i32* %35, i32 %37)
  %39 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %40 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %39, i32 0, i32 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @lower_32_bits(i64 %41)
  %43 = call i32 @out_be32(i32* %40, i32 %42)
  %44 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %45 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %44, i32 0, i32 7
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @upper_32_bits(i64 %46)
  %48 = call i32 @out_be32(i32* %45, i32 %47)
  %49 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %50 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %49, i32 0, i32 6
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @lower_32_bits(i64 %51)
  %53 = call i32 @out_be32(i32* %50, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @SPAACT_SIZE, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %9, align 8
  %57 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %58 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %57, i32 0, i32 5
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @upper_32_bits(i64 %59)
  %61 = call i32 @out_be32(i32* %58, i32 %60)
  %62 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %63 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %62, i32 0, i32 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @lower_32_bits(i64 %64)
  %66 = call i32 @out_be32(i32* %63, i32 %65)
  %67 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %68 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %67, i32 0, i32 3
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @upper_32_bits(i64 %69)
  %71 = call i32 @out_be32(i32* %68, i32 %70)
  %72 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %73 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %72, i32 0, i32 2
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @lower_32_bits(i64 %74)
  %76 = call i32 @out_be32(i32* %73, i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @OMT_SIZE, align 8
  %79 = add nsw i64 %77, %78
  store i64 %79, i64* %10, align 8
  %80 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %81 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @upper_32_bits(i64 %82)
  %84 = call i32 @out_be32(i32* %81, i32 %83)
  %85 = load %struct.pamu_mmap_regs*, %struct.pamu_mmap_regs** %12, align 8
  %86 = getelementptr inbounds %struct.pamu_mmap_regs, %struct.pamu_mmap_regs* %85, i32 0, i32 0
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @lower_32_bits(i64 %87)
  %89 = call i32 @out_be32(i32* %86, i32 %88)
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @PAMU_PICS, align 8
  %92 = add i64 %90, %91
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* @PAMU_ACCESS_VIOLATION_ENABLE, align 4
  %95 = call i32 @out_be32(i32* %93, i32 %94)
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @PAMU_PC_PE, align 4
  %98 = load i32, i32* @PAMU_PC_OCE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PAMU_PC_SPCC, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PAMU_PC_PPCC, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @out_be32(i32* %96, i32 %103)
  ret i32 0
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
