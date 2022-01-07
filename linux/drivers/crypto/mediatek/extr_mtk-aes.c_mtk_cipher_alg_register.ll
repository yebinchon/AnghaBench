; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_cipher_alg_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_cipher_alg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mtk_cryp = type { i32, i32, i32*, i32* }

@MTK_RING0 = common dso_local global i64 0, align 8
@mtk_aes_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mtk-aes\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to request AES irq.\0A\00", align 1
@MTK_RING1 = common dso_local global i64 0, align 8
@MTK_IRQ_RDR0 = common dso_local global i32 0, align 4
@MTK_IRQ_RDR1 = common dso_local global i32 0, align 4
@mtk_aes = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"mtk-aes initialization failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_cipher_alg_register(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  %5 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %5, i32 0, i32 1
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %9 = call i32 @mtk_aes_record_init(%struct.mtk_cryp* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @MTK_RING0, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @mtk_aes_irq, align 4
  %24 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @devm_request_irq(i32 %16, i32 %22, i32 %23, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %13
  %33 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %88

37:                                               ; preds = %13
  %38 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MTK_RING1, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @mtk_aes_irq, align 4
  %48 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @devm_request_irq(i32 %40, i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %37
  %57 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %88

61:                                               ; preds = %37
  %62 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %63 = load i64, i64* @MTK_RING0, align 8
  %64 = call i32 @AIC_ENABLE_SET(i64 %63)
  %65 = load i32, i32* @MTK_IRQ_RDR0, align 4
  %66 = call i32 @mtk_aes_write(%struct.mtk_cryp* %62, i32 %64, i32 %65)
  %67 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %68 = load i64, i64* @MTK_RING1, align 8
  %69 = call i32 @AIC_ENABLE_SET(i64 %68)
  %70 = load i32, i32* @MTK_IRQ_RDR1, align 4
  %71 = call i32 @mtk_aes_write(%struct.mtk_cryp* %67, i32 %69, i32 %70)
  %72 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtk_aes, i32 0, i32 0))
  %73 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtk_aes, i32 0, i32 1))
  %76 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtk_aes, i32 0, i32 0))
  %77 = call i32 (...) @mtk_aes_register_algs()
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %61
  br label %82

81:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %97

82:                                               ; preds = %80
  %83 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtk_aes, i32 0, i32 0))
  %84 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %84, i32 0, i32 1
  %86 = call i32 @list_del(i32* %85)
  %87 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtk_aes, i32 0, i32 0))
  br label %88

88:                                               ; preds = %82, %56, %32
  %89 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %90 = call i32 @mtk_aes_record_free(%struct.mtk_cryp* %89)
  br label %91

91:                                               ; preds = %88, %12
  %92 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %93 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %81
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtk_aes_record_init(%struct.mtk_cryp*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_aes_write(%struct.mtk_cryp*, i32, i32) #1

declare dso_local i32 @AIC_ENABLE_SET(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mtk_aes_register_algs(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mtk_aes_record_free(%struct.mtk_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
