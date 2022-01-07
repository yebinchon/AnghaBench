; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPU2_FMD = type { i8*, i8*, i8*, i8* }

@SPU2_CIPH_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPU2_CIPH_MODE_SHIFT = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_RET_FMD_ONLY = common dso_local global i64 0, align 8
@SPU2_RETURN_MD_SHIFT = common dso_local global i32 0, align 4
@SPU2_RETURN_PAY = common dso_local global i32 0, align 4
@SPU2_AAD1_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_AAD2_OFFSET_SHIFT = common dso_local global i32 0, align 4
@SPU2_PL_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SPU2_FMD*, i32, i32, i32, i32)* @spu2_fmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu2_fmd_init(%struct.SPU2_FMD* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.SPU2_FMD*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.SPU2_FMD* %0, %struct.SPU2_FMD** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SPU2_CIPH_TYPE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SPU2_CIPH_MODE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SPU2_CIPH_KEY_LEN_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SPU2_IV_LEN_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i64, i64* @SPU2_RET_FMD_ONLY, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @SPU2_RETURN_MD_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %32, %36
  %38 = load i32, i32* @SPU2_RETURN_PAY, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @SPU2_AAD1_LEN_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @SPU2_AAD2_OFFSET_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @SPU2_PL_OFFSET_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  store i32 %53, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @cpu_to_le64(i32 %54)
  %56 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %6, align 8
  %57 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i8* @cpu_to_le64(i32 %58)
  %60 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %6, align 8
  %61 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i8* @cpu_to_le64(i32 %62)
  %64 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %6, align 8
  %65 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i8* @cpu_to_le64(i32 %66)
  %68 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %6, align 8
  %69 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
