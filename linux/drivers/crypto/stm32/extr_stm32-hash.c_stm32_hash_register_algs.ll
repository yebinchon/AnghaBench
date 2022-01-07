; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"Algo %d : %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*)* @stm32_hash_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_register_algs(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_hash_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %17, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %16
  %30 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @crypto_register_ahash(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %56

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %16

51:                                               ; preds = %16
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %7

55:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %90

56:                                               ; preds = %46
  %57 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %58 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %87, %56
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %74 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @crypto_unregister_ahash(i32* %85)
  br label %68

87:                                               ; preds = %68
  br label %63

88:                                               ; preds = %63
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %55
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
