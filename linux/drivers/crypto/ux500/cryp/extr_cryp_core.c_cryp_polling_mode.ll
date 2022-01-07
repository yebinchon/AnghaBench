; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp_core.c_cryp_polling_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp_core.c_cryp_polling_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_ctx = type { i32, i32, i64, i64 }
%struct.cryp_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BYTES_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryp_ctx*, %struct.cryp_device_data*)* @cryp_polling_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryp_polling_mode(%struct.cryp_ctx* %0, %struct.cryp_device_data* %1) #0 {
  %3 = alloca %struct.cryp_ctx*, align 8
  %4 = alloca %struct.cryp_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cryp_ctx* %0, %struct.cryp_ctx** %3, align 8
  store %struct.cryp_device_data* %1, %struct.cryp_device_data** %4, align 8
  %9 = load %struct.cryp_ctx*, %struct.cryp_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cryp_ctx, %struct.cryp_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BYTES_PER_WORD, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.cryp_ctx*, %struct.cryp_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.cryp_ctx, %struct.cryp_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cryp_ctx*, %struct.cryp_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.cryp_ctx, %struct.cryp_ctx* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.cryp_ctx*, %struct.cryp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.cryp_ctx, %struct.cryp_ctx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %28, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct.cryp_device_data*, %struct.cryp_device_data** %4, align 8
  %30 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @writesl(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BYTES_PER_WORD, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.cryp_device_data*, %struct.cryp_device_data** %4, align 8
  %46 = call i32 @cryp_wait_until_done(%struct.cryp_device_data* %45)
  %47 = load %struct.cryp_device_data*, %struct.cryp_device_data** %4, align 8
  %48 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @readsl(i32* %50, i32* %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %8, align 8
  %58 = load %struct.cryp_device_data*, %struct.cryp_device_data** %4, align 8
  %59 = call i32 @cryp_wait_until_done(%struct.cryp_device_data* %58)
  br label %25

60:                                               ; preds = %25
  ret void
}

declare dso_local i32 @writesl(i32*, i32*, i32) #1

declare dso_local i32 @cryp_wait_until_done(%struct.cryp_device_data*) #1

declare dso_local i32 @readsl(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
