; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsa_key = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32, i32)* @ccp_rsa_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_rsa_setkey(%struct.crypto_akcipher* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccp_ctx*, align 8
  %11 = alloca %struct.rsa_key, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %14 = call %struct.ccp_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %13)
  store %struct.ccp_ctx* %14, %struct.ccp_ctx** %10, align 8
  %15 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %16 = call i32 @ccp_rsa_free_key_bufs(%struct.ccp_ctx* %15)
  %17 = call i32 @memset(%struct.rsa_key* %11, i32 0, i32 24)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rsa_parse_priv_key(%struct.rsa_key* %11, i8* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @rsa_parse_pub_key(%struct.rsa_key* %11, i8* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %157

32:                                               ; preds = %28
  %33 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 8
  %37 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ccp_copy_and_save_keypart(i32* %36, i32* %40, i32 %42, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %154

49:                                               ; preds = %32
  %50 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 9
  %54 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sg_init_one(i32* %53, i32 %58, i32 %63)
  %65 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 3
  %71 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ccp_check_key_length(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %49
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  br label %154

85:                                               ; preds = %49
  %86 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  %90 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %91 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ccp_copy_and_save_keypart(i32* %89, i32* %93, i32 %95, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %154

102:                                              ; preds = %85
  %103 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 7
  %107 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %108 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %113 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @sg_init_one(i32* %106, i32 %111, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %102
  %121 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %122 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %126 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ccp_copy_and_save_keypart(i32* %124, i32* %128, i32 %130, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  br label %154

137:                                              ; preds = %120
  %138 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %139 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %143 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %148 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sg_init_one(i32* %141, i32 %146, i32 %151)
  br label %153

153:                                              ; preds = %137, %102
  store i32 0, i32* %5, align 4
  br label %159

154:                                              ; preds = %136, %101, %82, %48
  %155 = load %struct.ccp_ctx*, %struct.ccp_ctx** %10, align 8
  %156 = call i32 @ccp_rsa_free_key_bufs(%struct.ccp_ctx* %155)
  br label %157

157:                                              ; preds = %154, %31
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.ccp_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @ccp_rsa_free_key_bufs(%struct.ccp_ctx*) #1

declare dso_local i32 @memset(%struct.rsa_key*, i32, i32) #1

declare dso_local i32 @rsa_parse_priv_key(%struct.rsa_key*, i8*, i32) #1

declare dso_local i32 @rsa_parse_pub_key(%struct.rsa_key*, i8*, i32) #1

declare dso_local i32 @ccp_copy_and_save_keypart(i32*, i32*, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local i64 @ccp_check_key_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
