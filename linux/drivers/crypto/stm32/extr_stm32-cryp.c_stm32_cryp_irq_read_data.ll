; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i64, i32, i64, i32, i32 }

@_walked_out = common dso_local global i32 0, align 4
@CRYP_DOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*)* @stm32_cryp_irq_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_irq_read_data(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %9 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %10 = call i64 @is_encrypt(%struct.stm32_cryp* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %14 = call i64 @is_gcm(%struct.stm32_cryp* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %18 = call i64 @is_ccm(%struct.stm32_cryp* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %12
  %21 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %22 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %25

24:                                               ; preds = %16, %1
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %27 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @sg_virt(i32 %28)
  %30 = load i32, i32* @_walked_out, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %104, %25
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %37 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = icmp ult i64 %35, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %33
  %43 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %44 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %45, %46
  %48 = icmp uge i64 %47, 4
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %54 = load i32, i32* @CRYP_DOUT, align 4
  %55 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @stm32_cryp_next_out(%struct.stm32_cryp* %57, i32* %58, i32 4)
  store i32* %59, i32** %6, align 8
  %60 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %61 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 4
  store i64 %63, i64* %61, align 8
  br label %103

64:                                               ; preds = %42
  %65 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %66 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %72 = load i32, i32* @CRYP_DOUT, align 4
  %73 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %102

74:                                               ; preds = %64
  %75 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %76 = load i32, i32* @CRYP_DOUT, align 4
  %77 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  store i32* %5, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %95, %74
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %82 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %83, %84
  %86 = icmp ult i64 %80, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  %90 = load i32, i32* %88, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32* @stm32_cryp_next_out(%struct.stm32_cryp* %92, i32* %93, i32 1)
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %101 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %70
  br label %103

103:                                              ; preds = %102, %52
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %33

107:                                              ; preds = %33
  %108 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %109 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %116 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %114, %107
  %121 = phi i1 [ true, %107 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  ret i32 %122
}

declare dso_local i64 @is_encrypt(%struct.stm32_cryp*) #1

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i32* @sg_virt(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @stm32_cryp_read(%struct.stm32_cryp*, i32) #1

declare dso_local i32* @stm32_cryp_next_out(%struct.stm32_cryp*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
