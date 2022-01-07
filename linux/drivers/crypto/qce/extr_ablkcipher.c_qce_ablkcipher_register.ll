; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_device = type { i32 }

@ablkcipher_def = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_device*)* @qce_ablkcipher_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ablkcipher_register(%struct.qce_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qce_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qce_device* %0, %struct.qce_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32*, i32** @ablkcipher_def, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load i32*, i32** @ablkcipher_def, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %17 = call i32 @qce_ablkcipher_register_one(i32* %15, %struct.qce_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %28 = call i32 @qce_ablkcipher_unregister(%struct.qce_device* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qce_ablkcipher_register_one(i32*, %struct.qce_device*) #1

declare dso_local i32 @qce_ablkcipher_unregister(%struct.qce_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
