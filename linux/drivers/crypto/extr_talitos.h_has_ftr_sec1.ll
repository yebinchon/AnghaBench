; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.h_has_ftr_sec1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.h_has_ftr_sec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_private = type { i32 }

@CONFIG_CRYPTO_DEV_TALITOS1 = common dso_local global i32 0, align 4
@CONFIG_CRYPTO_DEV_TALITOS2 = common dso_local global i32 0, align 4
@TALITOS_FTR_SEC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_private*)* @has_ftr_sec1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_ftr_sec1(%struct.talitos_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.talitos_private*, align 8
  store %struct.talitos_private* %0, %struct.talitos_private** %3, align 8
  %4 = load i32, i32* @CONFIG_CRYPTO_DEV_TALITOS1, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @CONFIG_CRYPTO_DEV_TALITOS2, align 4
  %9 = call i32 @IS_ENABLED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %13 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TALITOS_FTR_SEC1, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %7, %1
  %18 = load i32, i32* @CONFIG_CRYPTO_DEV_TALITOS1, align 4
  %19 = call i32 @IS_ENABLED(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
