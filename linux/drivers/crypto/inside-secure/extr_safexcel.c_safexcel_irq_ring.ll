; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_irq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_irq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_ring_irq_data = type { i32, %struct.safexcel_crypto_priv* }
%struct.safexcel_crypto_priv = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_STAT = common dso_local global i64 0, align 8
@EIP197_xDR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RDR: fatal error.\0A\00", align 1
@EIP197_xDR_THRESH = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @safexcel_irq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_irq_ring(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.safexcel_ring_irq_data*, align 8
  %7 = alloca %struct.safexcel_crypto_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.safexcel_ring_irq_data*
  store %struct.safexcel_ring_irq_data* %13, %struct.safexcel_ring_irq_data** %6, align 8
  %14 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %6, align 8
  %15 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %14, i32 0, i32 1
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %15, align 8
  store %struct.safexcel_crypto_priv* %16, %struct.safexcel_crypto_priv** %7, align 8
  %17 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %6, align 8
  %18 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %22 = call i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv* %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @EIP197_HIA_AIC_R_ENABLED_STAT(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @EIP197_RDR_IRQ(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %38, i32 %39)
  %41 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @EIP197_xDR_ERR, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %51 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @EIP197_xDR_THRESH, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 255
  %66 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %66, i32 %67)
  %69 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %63, %31
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %75 = call i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv* %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @EIP197_HIA_AIC_R_ACK(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_AIC_R_ENABLED_STAT(i32) #1

declare dso_local i32 @EIP197_RDR_IRQ(i32) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_HIA_AIC_R_ACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
