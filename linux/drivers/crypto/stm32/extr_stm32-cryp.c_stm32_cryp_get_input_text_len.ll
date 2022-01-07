; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_get_input_text_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_get_input_text_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*)* @stm32_cryp_get_input_text_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_get_input_text_len(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %3 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %4 = call i64 @is_encrypt(%struct.stm32_cryp* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %8 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %17, %20
  br label %22

22:                                               ; preds = %12, %6
  %23 = phi i32 [ %11, %6 ], [ %21, %12 ]
  ret i32 %23
}

declare dso_local i64 @is_encrypt(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
