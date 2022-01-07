; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, i32 }

@MISR_OUT = common dso_local global i32 0, align 4
@CRYP_IMSCR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MISR_IN = common dso_local global i32 0, align 4
@CRYP_CR = common dso_local global i32 0, align 4
@CR_PH_MASK = common dso_local global i32 0, align 4
@CR_PH_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_cryp_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_cryp*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.stm32_cryp*
  store %struct.stm32_cryp* %9, %struct.stm32_cryp** %6, align 8
  %10 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %11 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MISR_OUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %18 = call i32 @stm32_cryp_irq_read_data(%struct.stm32_cryp* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %23 = load i32, i32* @CRYP_IMSCR, align 4
  %24 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %22, i32 %23, i32 0)
  %25 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %26 = call i32 @stm32_cryp_finish_req(%struct.stm32_cryp* %25, i32 0)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %31 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MISR_IN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %29
  %37 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %38 = call i64 @is_gcm(%struct.stm32_cryp* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %42 = load i32, i32* @CRYP_CR, align 4
  %43 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %41, i32 %42)
  %44 = load i32, i32* @CR_PH_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CR_PH_HEADER, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %54 = call i32 @stm32_cryp_irq_write_gcm_header(%struct.stm32_cryp* %53)
  br label %58

55:                                               ; preds = %40
  %56 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %57 = call i32 @stm32_cryp_irq_write_data(%struct.stm32_cryp* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %60 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %90

63:                                               ; preds = %36
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %65 = call i64 @is_ccm(%struct.stm32_cryp* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %69 = load i32, i32* @CRYP_CR, align 4
  %70 = call i32 @stm32_cryp_read(%struct.stm32_cryp* %68, i32 %69)
  %71 = load i32, i32* @CR_PH_MASK, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CR_PH_HEADER, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %81 = call i32 @stm32_cryp_irq_write_ccm_header(%struct.stm32_cryp* %80)
  br label %85

82:                                               ; preds = %67
  %83 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %84 = call i32 @stm32_cryp_irq_write_data(%struct.stm32_cryp* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %89

86:                                               ; preds = %63
  %87 = load %struct.stm32_cryp*, %struct.stm32_cryp** %6, align 8
  %88 = call i32 @stm32_cryp_irq_write_data(%struct.stm32_cryp* %87)
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90, %29
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @stm32_cryp_irq_read_data(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @stm32_cryp_finish_req(%struct.stm32_cryp*, i32) #1

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_read(%struct.stm32_cryp*, i32) #1

declare dso_local i32 @stm32_cryp_irq_write_gcm_header(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_irq_write_data(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_irq_write_ccm_header(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
