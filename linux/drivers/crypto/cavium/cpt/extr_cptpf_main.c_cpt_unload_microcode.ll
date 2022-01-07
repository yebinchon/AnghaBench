; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_unload_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_unload_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32, %struct.TYPE_2__*, %struct.microcode* }
%struct.TYPE_2__ = type { i32 }
%struct.microcode = type { i32*, i32, i32 }

@CPT_MAX_CORE_GROUPS = common dso_local global i64 0, align 8
@CPT_MAX_TOTAL_CORES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*)* @cpt_unload_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_unload_microcode(%struct.cpt_device* %0) #0 {
  %2 = alloca %struct.cpt_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.microcode*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @CPT_MAX_CORE_GROUPS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %12 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %11, i32 0, i32 2
  %13 = load %struct.microcode*, %struct.microcode** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.microcode, %struct.microcode* %13, i64 %14
  store %struct.microcode* %15, %struct.microcode** %5, align 8
  %16 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %17 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %16, i32 0, i32 2
  %18 = load %struct.microcode*, %struct.microcode** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.microcode, %struct.microcode* %18, i64 %19
  %21 = getelementptr inbounds %struct.microcode, %struct.microcode* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %10
  %25 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %26 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.microcode*, %struct.microcode** %5, align 8
  %30 = getelementptr inbounds %struct.microcode, %struct.microcode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.microcode*, %struct.microcode** %5, align 8
  %33 = getelementptr inbounds %struct.microcode, %struct.microcode* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.microcode*, %struct.microcode** %5, align 8
  %36 = getelementptr inbounds %struct.microcode, %struct.microcode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(i32* %28, i32 %31, i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %24, %10
  %40 = load %struct.microcode*, %struct.microcode** %5, align 8
  %41 = getelementptr inbounds %struct.microcode, %struct.microcode* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %6

45:                                               ; preds = %6
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @CPT_MAX_TOTAL_CORES, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %52 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @CPTX_PF_ENGX_UCODE_BASE(i32 0, i64 %54)
  %56 = call i32 @cpt_write_csr64(i32 %53, i32 %55, i64 0)
  br label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %46

60:                                               ; preds = %46
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i64) #1

declare dso_local i32 @CPTX_PF_ENGX_UCODE_BASE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
