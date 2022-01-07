; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i64, i32, i64, i32 }

@_walked_in = common dso_local global i32 0, align 4
@CRYP_DIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_irq_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_irq_write_block(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i64, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %8 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %9 = call i64 @is_decrypt(%struct.stm32_cryp* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %13 = call i64 @is_gcm(%struct.stm32_cryp* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %17 = call i64 @is_ccm(%struct.stm32_cryp* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %11
  %20 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %21 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %24

23:                                               ; preds = %15, %1
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @sg_virt(i32 %27)
  %29 = load i32, i32* @_walked_in, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %109, %24
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %36 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %112

41:                                               ; preds = %32
  %42 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %43 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  %47 = icmp uge i64 %46, 4
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %53 = load i32, i32* @CRYP_DIN, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %52, i32 %53, i32 %55)
  %57 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32* @stm32_cryp_next_in(%struct.stm32_cryp* %57, i32* %58, i32 4)
  store i32* %59, i32** %5, align 8
  %60 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %61 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 4
  store i64 %63, i64* %61, align 8
  br label %108

64:                                               ; preds = %41
  %65 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %66 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %72 = load i32, i32* @CRYP_DIN, align 4
  %73 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %71, i32 %72, i32 0)
  br label %107

74:                                               ; preds = %64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %95, %74
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %81 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %82, %83
  %85 = icmp ult i64 %79, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %77
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32* @stm32_cryp_next_in(%struct.stm32_cryp* %92, i32* %93, i32 1)
  store i32* %94, i32** %5, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %77

98:                                               ; preds = %77
  %99 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %100 = load i32, i32* @CRYP_DIN, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %99, i32 %100, i32 %102)
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %106 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %70
  br label %108

108:                                              ; preds = %107, %51
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %32

112:                                              ; preds = %32
  ret void
}

declare dso_local i64 @is_decrypt(%struct.stm32_cryp*) #1

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i32* @sg_virt(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32* @stm32_cryp_next_in(%struct.stm32_cryp*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
