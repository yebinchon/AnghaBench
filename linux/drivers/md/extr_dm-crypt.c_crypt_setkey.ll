; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_setkey(%struct.crypt_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %9 = call i32 @crypt_subkey_size(%struct.crypt_config* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %11 = call i64 @crypt_integrity_hmac(%struct.crypt_config* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %129

22:                                               ; preds = %13
  %23 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %27 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %31 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %29, %32
  %34 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %35 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @crypt_copy_authenckey(i64 %25, i64 %28, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %22, %1
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %113, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %42 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %116

45:                                               ; preds = %39
  %46 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %47 = call i64 @crypt_integrity_hmac(%struct.crypt_config* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %51 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %59 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %62 = call i32 @crypt_authenckey_size(%struct.crypt_config* %61)
  %63 = call i32 @crypto_aead_setkey(i32 %57, i64 %60, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %107

64:                                               ; preds = %45
  %65 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %66 = call i64 @crypt_integrity_aead(%struct.crypt_config* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %70 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %78 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = mul i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @crypto_aead_setkey(i32 %76, i64 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  br label %106

87:                                               ; preds = %64
  %88 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %89 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %97 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %4, align 4
  %101 = mul i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @crypto_skcipher_setkey(i32 %95, i64 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %87, %68
  br label %107

107:                                              ; preds = %106, %49
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %39

116:                                              ; preds = %39
  %117 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %118 = call i64 @crypt_integrity_hmac(%struct.crypt_config* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %122 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %125 = call i32 @crypt_authenckey_size(%struct.crypt_config* %124)
  %126 = call i32 @memzero_explicit(i64 %123, i32 %125)
  br label %127

127:                                              ; preds = %120, %116
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %19
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @crypt_subkey_size(%struct.crypt_config*) #1

declare dso_local i64 @crypt_integrity_hmac(%struct.crypt_config*) #1

declare dso_local i32 @crypt_copy_authenckey(i64, i64, i32, i32) #1

declare dso_local i32 @crypto_aead_setkey(i32, i64, i32) #1

declare dso_local i32 @crypt_authenckey_size(%struct.crypt_config*) #1

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i32 @crypto_skcipher_setkey(i32, i64, i32) #1

declare dso_local i32 @memzero_explicit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
