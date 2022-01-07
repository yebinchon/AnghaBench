; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_counters_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_counters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32*, i32**, i32*, i32*, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@iproc_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SPU_OP_NUM = common dso_local global i32 0, align 4
@CIPHER_ALG_LAST = common dso_local global i32 0, align 4
@CIPHER_MODE_LAST = common dso_local global i32 0, align 4
@HASH_ALG_LAST = common dso_local global i32 0, align 4
@AEAD_TYPE_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spu_counters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_counters_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 14), i32 0)
  %4 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 13), i32 0)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 11, i32 0), align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 12), i32 %6)
  %8 = call i32 @atomic64_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 10), i32 0)
  %9 = call i32 @atomic64_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 9), i32 0)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @SPU_OP_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 8), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 7), align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @CIPHER_ALG_LAST, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @CIPHER_MODE_LAST, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 6), align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @HASH_ALG_LAST, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 5), align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 4), align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %56

74:                                               ; preds = %56
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %85, %74
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @AEAD_TYPE_LAST, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 3), align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @atomic_set(i32* %83, i32 0)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %75

88:                                               ; preds = %75
  %89 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 2), i32 0)
  %90 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 1), i32 0)
  %91 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), i32 0)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
