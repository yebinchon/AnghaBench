; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_set_updater_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_set_updater_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxad_desc_sw = type { i32, i8*, %struct.pxad_desc_hw**, i64 }
%struct.pxad_desc_hw = type { i32, i8*, i8*, i8* }

@DDADR_STOP = common dso_local global i8* null, align 8
@PXA_DCMD_WIDTH4 = common dso_local global i32 0, align 4
@PXA_DCMD_BURST32 = common dso_local global i32 0, align 4
@PXA_DCMD_LENGTH = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@PXA_DCMD_ENDIRQEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxad_desc_sw*, i64)* @set_updater_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_updater_desc(%struct.pxad_desc_sw* %0, i64 %1) #0 {
  %3 = alloca %struct.pxad_desc_sw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pxad_desc_hw*, align 8
  %6 = alloca i8*, align 8
  store %struct.pxad_desc_sw* %0, %struct.pxad_desc_sw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %8 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %7, i32 0, i32 2
  %9 = load %struct.pxad_desc_hw**, %struct.pxad_desc_hw*** %8, align 8
  %10 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %11 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %9, i64 %14
  %16 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %15, align 8
  store %struct.pxad_desc_hw* %16, %struct.pxad_desc_hw** %5, align 8
  %17 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %18 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %17, i32 0, i32 2
  %19 = load %struct.pxad_desc_hw**, %struct.pxad_desc_hw*** %18, align 8
  %20 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %21 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %19, i64 %24
  %26 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %25, align 8
  %27 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** @DDADR_STOP, align 8
  %30 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %5, align 8
  %31 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %5, align 8
  %34 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr i8, i8* %35, i64 8
  %37 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %5, align 8
  %38 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @PXA_DCMD_WIDTH4, align 4
  %40 = load i32, i32* @PXA_DCMD_BURST32, align 4
  %41 = or i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* @PXA_DCMD_LENGTH, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4
  %46 = or i64 %42, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %5, align 8
  %49 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load i32, i32* @PXA_DCMD_ENDIRQEN, align 4
  %56 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %5, align 8
  %57 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %2
  %61 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %62 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %67 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %70 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %69, i32 0, i32 2
  %71 = load %struct.pxad_desc_hw**, %struct.pxad_desc_hw*** %70, align 8
  %72 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %3, align 8
  %73 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %71, i64 %76
  %78 = load %struct.pxad_desc_hw*, %struct.pxad_desc_hw** %77, align 8
  %79 = getelementptr inbounds %struct.pxad_desc_hw, %struct.pxad_desc_hw* %78, i32 0, i32 1
  store i8* %68, i8** %79, align 8
  br label %80

80:                                               ; preds = %65, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
