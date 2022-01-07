; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i64 }

@aes_algs = common dso_local global i32* null, align 8
@sha_v3_algs = common dso_local global i32* null, align 8
@SAHARA_VERSION_3 = common dso_local global i64 0, align 8
@sha_v4_algs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*)* @sahara_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_register_algs(%struct.sahara_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sahara_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** @aes_algs, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32*, i32** @aes_algs, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @crypto_register_alg(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %103

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** @sha_v3_algs, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32*, i32** @sha_v3_algs, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @crypto_register_ahash(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %88

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %48 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SAHARA_VERSION_3, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** @sha_v4_algs, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32*, i32** @sha_v4_algs, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @crypto_register_ahash(i32* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %73

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %53

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %46
  store i32 0, i32* %2, align 4
  br label %119

73:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32*, i32** @sha_v4_algs, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @crypto_unregister_ahash(i32* %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %74

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %41
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %99, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** @sha_v3_algs, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @crypto_unregister_ahash(i32* %97)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %89

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %22
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32*, i32** @aes_algs, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @crypto_unregister_alg(i32* %112)
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %104

117:                                              ; preds = %104
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %72
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
