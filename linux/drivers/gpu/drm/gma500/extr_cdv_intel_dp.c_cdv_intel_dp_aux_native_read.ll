; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_aux_native_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_aux_native_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { i32 }

@DP_AUX_NATIVE_READ = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*, i32, i32*, i32)* @cdv_intel_dp_aux_native_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_aux_native_read(%struct.gma_encoder* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @DP_AUX_NATIVE_READ, align 4
  %17 = shl i32 %16, 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  store i32 4, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %77, %4
  %31 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @cdv_intel_dp_aux_ch(%struct.gma_encoder* %31, i32* %32, i32 %33, i32* %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %30
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %5, align 4
  br label %78

47:                                               ; preds = %42
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = ashr i32 %49, 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @DP_AUX_NATIVE_REPLY_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @DP_AUX_NATIVE_REPLY_ACK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @memcpy(i32* %57, i32* %59, i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %78

65:                                               ; preds = %47
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @DP_AUX_NATIVE_REPLY_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @DP_AUX_NATIVE_REPLY_DEFER, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @udelay(i32 100)
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  br label %30

78:                                               ; preds = %73, %56, %45, %39
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @cdv_intel_dp_aux_ch(%struct.gma_encoder*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
