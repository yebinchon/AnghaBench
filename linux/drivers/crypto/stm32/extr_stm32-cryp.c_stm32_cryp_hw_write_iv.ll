; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_write_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_write_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32 }

@CRYP_IV0LR = common dso_local global i32 0, align 4
@CRYP_IV0RR = common dso_local global i32 0, align 4
@CRYP_IV1LR = common dso_local global i32 0, align 4
@CRYP_IV1RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*, i32*)* @stm32_cryp_hw_write_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_hw_write_iv(%struct.stm32_cryp* %0, i32* %1) #0 {
  %3 = alloca %struct.stm32_cryp*, align 8
  %4 = alloca i32*, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %41

8:                                                ; preds = %2
  %9 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %10 = load i32, i32* @CRYP_IV0LR, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @cpu_to_be32(i32 %13)
  %15 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %9, i32 %10, i32 %14)
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %17 = load i32, i32* @CRYP_IV0RR, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %16, i32 %17, i32 %21)
  %23 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %24 = call i64 @is_aes(%struct.stm32_cryp* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %8
  %27 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %28 = load i32, i32* @CRYP_IV1LR, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %27, i32 %28, i32 %32)
  %34 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %35 = load i32, i32* @CRYP_IV1RR, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  %38 = load i32, i32* %36, align 4
  %39 = call i32 @cpu_to_be32(i32 %38)
  %40 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %34, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %7, %26, %8
  ret void
}

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @is_aes(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
