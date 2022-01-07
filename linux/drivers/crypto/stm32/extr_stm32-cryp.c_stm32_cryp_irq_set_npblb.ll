; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_set_npblb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_set_npblb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, i32, i32 }

@CRYP_CR = common dso_local global i32 0, align 4
@CR_CRYPEN = common dso_local global i32 0, align 4
@CR_NBPBL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_irq_set_npblb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_irq_set_npblb(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %5 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %6 = load i32, i32* @CRYP_CR, align 4
  %7 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @CR_CRYPEN, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %13 = load i32, i32* @CRYP_CR, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %12, i32 %13, i32 %14)
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %17 = call i64 @is_decrypt(%struct.stm32_cryp* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %21 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i32 [ %26, %19 ], [ %30, %27 ]
  store i32 %32, i32* %4, align 4
  %33 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %34 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @CR_NBPBL_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @CR_CRYPEN, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %46 = load i32, i32* @CRYP_CR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @stm32_cryp_read(%struct.stm32_cryp*, i32) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i64 @is_decrypt(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
