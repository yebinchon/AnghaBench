; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_check_ctr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_check_ctr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32* }

@CRYP_CR = common dso_local global i32 0, align 4
@CR_CRYPEN = common dso_local global i32 0, align 4
@CRYP_IV0LR = common dso_local global i32 0, align 4
@CRYP_IV0RR = common dso_local global i32 0, align 4
@CRYP_IV1LR = common dso_local global i32 0, align 4
@CRYP_IV1RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_check_ctr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_check_ctr_counter(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  %3 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %4 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %1
  %14 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %15 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %25 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %13
  %31 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %32 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %30
  %44 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %45 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %30
  br label %51

51:                                               ; preds = %50, %13
  %52 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %53 = load i32, i32* @CRYP_CR, align 4
  %54 = call i8* @stm32_cryp_read(%struct.stm32_cryp* %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %3, align 4
  %56 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %57 = load i32, i32* @CRYP_CR, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @CR_CRYPEN, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %56, i32 %57, i32 %61)
  %63 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %65 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp* %63, i32* %66)
  %68 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %69 = load i32, i32* @CRYP_CR, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %51, %1
  %73 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %74 = load i32, i32* @CRYP_IV0LR, align 4
  %75 = call i8* @stm32_cryp_read(%struct.stm32_cryp* %73, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %78 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %82 = load i32, i32* @CRYP_IV0RR, align 4
  %83 = call i8* @stm32_cryp_read(%struct.stm32_cryp* %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %86 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %90 = load i32, i32* @CRYP_IV1LR, align 4
  %91 = call i8* @stm32_cryp_read(%struct.stm32_cryp* %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %94 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %98 = load i32, i32* @CRYP_IV1RR, align 4
  %99 = call i8* @stm32_cryp_read(%struct.stm32_cryp* %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %102 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @stm32_cryp_read(%struct.stm32_cryp*, i32) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
