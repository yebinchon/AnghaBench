; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_setup_ast2500_cf_maps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_setup_ast2500_cf_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i32 }

@SCU_2500_COPRO_SEG0 = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG_SWAP = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG2 = common dso_local global i32 0, align 4
@SYSREG_BASE = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG3 = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG6 = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG7 = common dso_local global i32 0, align 4
@SCU_2500_COPRO_CACHE_CTL = common dso_local global i32 0, align 4
@SCU_2500_COPRO_SEG0_CACHE_EN = common dso_local global i32 0, align 4
@SCU_2500_COPRO_CACHE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_acf*)* @setup_ast2500_cf_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ast2500_cf_maps(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca %struct.fsi_master_acf*, align 8
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %2, align 8
  %3 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %4 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SCU_2500_COPRO_SEG0, align 4
  %7 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %8 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCU_2500_COPRO_SEG_SWAP, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_write(i32 %5, i32 %6, i32 %11)
  %13 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %14 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCU_2500_COPRO_SEG2, align 4
  %17 = load i32, i32* @SYSREG_BASE, align 4
  %18 = load i32, i32* @SCU_2500_COPRO_SEG_SWAP, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_write(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %22 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SCU_2500_COPRO_SEG3, align 4
  %25 = load i32, i32* @SYSREG_BASE, align 4
  %26 = or i32 %25, 1048576
  %27 = load i32, i32* @SCU_2500_COPRO_SEG_SWAP, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write(i32 %23, i32 %24, i32 %28)
  %30 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %31 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SCU_2500_COPRO_SEG6, align 4
  %34 = load i32, i32* @SYSREG_BASE, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %37 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCU_2500_COPRO_SEG7, align 4
  %40 = load i32, i32* @SYSREG_BASE, align 4
  %41 = or i32 %40, 1048576
  %42 = call i32 @regmap_write(i32 %38, i32 %39, i32 %41)
  %43 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %2, align 8
  %44 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCU_2500_COPRO_CACHE_CTL, align 4
  %47 = load i32, i32* @SCU_2500_COPRO_SEG0_CACHE_EN, align 4
  %48 = load i32, i32* @SCU_2500_COPRO_CACHE_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @regmap_write(i32 %45, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
