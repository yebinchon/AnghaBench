; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_program_interrupt_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_program_interrupt_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FIRST_SMC_INT_VECT_REG = common dso_local global i32 0, align 4
@SMC_ISR_FFD8_FFDB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32*, i32)* @rv770_program_interrupt_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_program_interrupt_vectors(%struct.radeon_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = srem i32 %12, 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %84

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FIRST_SMC_INT_VECT_REG, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* @FIRST_SMC_INT_VECT_REG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %84

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i32, i32* @FIRST_SMC_INT_VECT_REG, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %18
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %50, %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %58, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %66, %72
  store i32 %73, i32* %10, align 4
  %74 = load i64, i64* @SMC_ISR_FFD8_FFDB, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @WREG32(i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %44
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %11, align 4
  br label %40

83:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %29, %15
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
