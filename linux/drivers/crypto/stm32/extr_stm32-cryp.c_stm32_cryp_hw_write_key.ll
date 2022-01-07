; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_write_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_write_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@CRYP_K1LR = common dso_local global i32 0, align 4
@CRYP_K1RR = common dso_local global i32 0, align 4
@CRYP_K3RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_hw_write_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_hw_write_key(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %5 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %6 = call i64 @is_des(%struct.stm32_cryp* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %10 = load i32, i32* @CRYP_K1LR, align 4
  %11 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %9, i32 %10, i32 %18)
  %20 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %21 = load i32, i32* @CRYP_K1RR, align 4
  %22 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %23 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %20, i32 %21, i32 %29)
  br label %65

31:                                               ; preds = %1
  %32 = load i32, i32* @CRYP_K3RR, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %34 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %59, %31
  %42 = load i32, i32* %3, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %48 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sub i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %45, i32 %46, i32 %57)
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %4, align 4
  br label %41

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %8
  ret void
}

declare dso_local i64 @is_des(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
