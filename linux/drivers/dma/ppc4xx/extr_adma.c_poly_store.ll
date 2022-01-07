; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_poly_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_poly_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@ppc440spe_mq_dcr_host = common dso_local global i32 0, align 4
@DCRN_MQ0_CFBHL = common dso_local global i32 0, align 4
@MQ0_CFBHL_POLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @poly_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @poly_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 6
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %50

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  %21 = load i64, i64* %9, align 8
  %22 = and i64 %21, -512
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %50

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %28, 255
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* @ppc440spe_mq_dcr_host, align 4
  %31 = load i32, i32* @DCRN_MQ0_CFBHL, align 4
  %32 = call i64 @dcr_read(i32 %30, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @MQ0_CFBHL_POLY, align 4
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* @MQ0_CFBHL_POLY, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 %39, %41
  %43 = load i64, i64* %8, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i32, i32* @ppc440spe_mq_dcr_host, align 4
  %46 = load i32, i32* @DCRN_MQ0_CFBHL, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @dcr_write(i32 %45, i32 %46, i64 %47)
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %27, %24, %15
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i64 @dcr_read(i32, i32) #1

declare dso_local i32 @dcr_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
