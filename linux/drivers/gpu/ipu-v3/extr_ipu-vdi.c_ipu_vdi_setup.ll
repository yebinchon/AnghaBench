; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_vdi = type { i32 }

@VDI_FSIZE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_1X16 = common dso_local global i64 0, align 8
@VDI_C_CH_422 = common dso_local global i64 0, align 8
@VDI_C_CH_420 = common dso_local global i64 0, align 8
@VDI_C = common dso_local global i32 0, align 4
@VDI_C_BURST_SIZE2_4 = common dso_local global i64 0, align 8
@VDI_C_BURST_SIZE1_4 = common dso_local global i64 0, align 8
@VDI_C_VWM1_CLR_2 = common dso_local global i64 0, align 8
@VDI_C_BURST_SIZE3_4 = common dso_local global i64 0, align 8
@VDI_C_VWM3_CLR_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_vdi_setup(%struct.ipu_vdi* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_vdi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ipu_vdi* %0, %struct.ipu_vdi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ipu_vdi*, %struct.ipu_vdi** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = or i32 %18, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load %struct.ipu_vdi*, %struct.ipu_vdi** %5, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @VDI_FSIZE, align 4
  %26 = call i32 @ipu_vdi_write(%struct.ipu_vdi* %23, i64 %24, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_1X16, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_1X16, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30, %4
  %43 = load i64, i64* @VDI_C_CH_422, align 8
  store i64 %43, i64* %10, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @VDI_C_CH_420, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.ipu_vdi*, %struct.ipu_vdi** %5, align 8
  %48 = load i32, i32* @VDI_C, align 4
  %49 = call i64 @ipu_vdi_read(%struct.ipu_vdi* %47, i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* @VDI_C_BURST_SIZE2_4, align 8
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* @VDI_C_BURST_SIZE1_4, align 8
  %57 = load i64, i64* @VDI_C_VWM1_CLR_2, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* @VDI_C_BURST_SIZE3_4, align 8
  %62 = load i64, i64* @VDI_C_VWM3_CLR_2, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load %struct.ipu_vdi*, %struct.ipu_vdi** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @VDI_C, align 4
  %69 = call i32 @ipu_vdi_write(%struct.ipu_vdi* %66, i64 %67, i32 %68)
  %70 = load %struct.ipu_vdi*, %struct.ipu_vdi** %5, align 8
  %71 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %70, i32 0, i32 0
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_vdi_write(%struct.ipu_vdi*, i64, i32) #1

declare dso_local i64 @ipu_vdi_read(%struct.ipu_vdi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
