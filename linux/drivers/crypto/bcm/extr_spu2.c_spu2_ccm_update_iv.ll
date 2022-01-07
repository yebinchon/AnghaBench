; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_ccm_update_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_ccm_update_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_cipher_parms = type { i32*, i32 }

@CCM_ESP_L_VALUE = common dso_local global i32 0, align 4
@CCM_B0_L_PRIME = common dso_local global i32 0, align 4
@CCM_B0_L_PRIME_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu2_ccm_update_iv(i32 %0, %struct.spu_cipher_parms* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.spu_cipher_parms*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.spu_cipher_parms* %1, %struct.spu_cipher_parms** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @CCM_ESP_L_VALUE, align 4
  store i32 %17, i32* %13, align 4
  br label %29

18:                                               ; preds = %6
  %19 = load %struct.spu_cipher_parms*, %struct.spu_cipher_parms** %8, align 8
  %20 = getelementptr inbounds %struct.spu_cipher_parms, %struct.spu_cipher_parms* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CCM_B0_L_PRIME, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CCM_B0_L_PRIME_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 1, %30
  %32 = load %struct.spu_cipher_parms*, %struct.spu_cipher_parms** %8, align 8
  %33 = getelementptr inbounds %struct.spu_cipher_parms, %struct.spu_cipher_parms* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.spu_cipher_parms*, %struct.spu_cipher_parms** %8, align 8
  %37 = getelementptr inbounds %struct.spu_cipher_parms, %struct.spu_cipher_parms* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.spu_cipher_parms*, %struct.spu_cipher_parms** %8, align 8
  %40 = getelementptr inbounds %struct.spu_cipher_parms, %struct.spu_cipher_parms* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load %struct.spu_cipher_parms*, %struct.spu_cipher_parms** %8, align 8
  %44 = getelementptr inbounds %struct.spu_cipher_parms, %struct.spu_cipher_parms* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memmove(i32* %38, i32* %42, i32 %45)
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
