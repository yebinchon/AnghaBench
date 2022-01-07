; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_handle_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, i32, i32, i32 }
%struct.ablkcipher_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, %struct.ablkcipher_request*)* @s5p_aes_handle_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_aes_handle_req(%struct.s5p_aes_dev* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  %8 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %8, i32 0, i32 2
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %13 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %12, i32 0, i32 3
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = call i32 @ablkcipher_enqueue_request(i32* %13, %struct.ablkcipher_request* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %17 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %28 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %33, i32 0, i32 1
  %35 = call i32 @tasklet_schedule(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ablkcipher_enqueue_request(i32*, %struct.ablkcipher_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
