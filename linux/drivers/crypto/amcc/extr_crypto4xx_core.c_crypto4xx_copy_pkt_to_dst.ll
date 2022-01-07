; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_pkt_to_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_pkt_to_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i8* }
%struct.ce_pd = type { i32 }
%struct.pd_uinfo = type { i32, i32 }
%struct.scatterlist = type { i32 }

@PPC4XX_LAST_SD = common dso_local global i32 0, align 4
@PPC4XX_NUM_SD = common dso_local global i32 0, align 4
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, %struct.ce_pd*, %struct.pd_uinfo*, i64, %struct.scatterlist*)* @crypto4xx_copy_pkt_to_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device* %0, %struct.ce_pd* %1, %struct.pd_uinfo* %2, i64 %3, %struct.scatterlist* %4) #0 {
  %6 = alloca %struct.crypto4xx_device*, align 8
  %7 = alloca %struct.ce_pd*, align 8
  %8 = alloca %struct.pd_uinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %6, align 8
  store %struct.ce_pd* %1, %struct.ce_pd** %7, align 8
  store %struct.pd_uinfo* %2, %struct.pd_uinfo** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %10, align 8
  %17 = load %struct.pd_uinfo*, %struct.pd_uinfo** %8, align 8
  %18 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.pd_uinfo*, %struct.pd_uinfo** %8, align 8
  %22 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %20, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PPC4XX_LAST_SD, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32, i32* @PPC4XX_LAST_SD, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %32 = urem i32 %30, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %28, %5
  br label %34

34:                                               ; preds = %70, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %39 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %43 = mul i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  store i8* %45, i8** %16, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add i32 1, %48
  %50 = load i32, i32* %11, align 4
  %51 = sub i32 %49, %50
  %52 = mul i32 %47, %51
  %53 = call i32 @min(i64 %46, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i8*, i8** %16, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @scatterwalk_map_and_copy(i8* %54, %struct.scatterlist* %55, i32 %56, i32 %57, i32 1)
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %37
  br label %34

71:                                               ; preds = %34
  ret void
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i8*, %struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
